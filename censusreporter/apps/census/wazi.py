import requests
import os
from itertools import chain

import logging
logger = logging.getLogger('censusreporter')

from django.conf import settings
from django.utils.text import slugify
from django.utils.safestring import SafeString
from django.utils import simplejson
from django.http import HttpResponse, Http404, HttpResponseBadRequest, HttpResponseRedirect
from django.views.generic import View

from .views import GeographyDetailView as BaseGeographyDetailView, LocateView as BaseLocateView, render_json_to_response
from .utils import LazyEncoder
from .profile import enhance_api_data

from api.models import County, Country
from api.models.tables import get_datatable, DATA_TABLES
from api.controller import get_census_profile, get_geography, get_locations, get_locations_from_coords
from api.controller.geography import SearchException
from api.utils import LocationNotFound
from api.download import generate_download_bundle, supported_formats


def render_json_error(message, status_code=400):
    '''
    Utility method for rendering a view's data to JSON response.
    '''
    result = simplejson.dumps({'error': message}, indent=4)
    response = HttpResponse(result, mimetype='application/javascript')
    response.status_code = status_code
    return response


class GeographyDetailView(BaseGeographyDetailView):
    def dispatch(self, *args, **kwargs):
        self.geo_id = self.kwargs.get('geography_id', None)
        self.slug = self.kwargs.get('slug', None)

        # if possible, redirect to slugged URL
        if not self.slug:
            geo = self.get_geography(self.geo_id)
            slug = slugify(geo.short_name)
            return HttpResponseRedirect('/profiles/%s-%s' % (self.geo_id, slug))

        return super(GeographyDetailView, self).dispatch(*args, **kwargs)


    def get_context_data(self, *args, **kwargs):
        geo = self.get_geography(self.geo_id)
        geo_code = geo.code
        geo_level = geo.level

        page_context = {}

        profile_data = get_census_profile(geo_code, geo_level)
        profile_data['geography'] = geo.as_dict_deep()

        profile_data = enhance_api_data(profile_data)
        page_context.update(profile_data)

        profile_data_json = SafeString(simplejson.dumps(profile_data, cls=LazyEncoder))
        self.write_profile_json(profile_data_json)

        page_context.update({
            'profile_data_json': profile_data_json
        })

        return page_context

    def get_geography(self, geo_id):
        try:
            geo_level, geo_code = geo_id.split('-', 1)
            return get_geography(geo_code, geo_level)
        except (ValueError, LocationNotFound):
            raise Http404

    def write_profile_json(self, data):
        # unversioned, un-zipped embed data
        key = settings.EMBED_DIR + '/profiles/%s.json' % self.geo_id
        logger.debug(key)
        if not os.path.isfile(key):
            try:
                # create file object
                with open(key, 'w+') as f:
                    f.write(data)
            except Exception as e:
                logger.error('Cannot write json data file to disk.', exc_info=e)
                pass


class GeographyJsonView(GeographyDetailView):
    """ Return geo profile data as json. """
    def get(self, request, *args, **kwargs):
        context = self.get_context_data(**kwargs)
        return HttpResponse(context['profile_data_json'], mimetype='application/javascript')


class PlaceSearchJson(View):
    def get(self, request, *args, **kwargs):
        if 'q' in request.GET:
            search_term = request.GET['q']
            geo_levels = request.GET.get('geolevels', None)
            return render_json_to_response(
                {'results': get_locations(search_term, geo_levels)}
            )

        if 'coords' in request.GET:
            # coords=lat,lng&coords=lat,lng
            # we only want the first 3, to limit our outgoing requests
            coords = request.GET.getlist('coords')[:3]

            # unpack
            pairs = [c.split(',', 1) for c in coords if ',' in c]

            places = set()
            for lat, lng in pairs:
                try:
                    places.update(get_locations_from_coords(latitude=lat.strip(), longitude=lng.strip()))
                except SearchException as e:
                    logger.warn("Error looking up places for (%s, %s): %s" % (lat, lng, e.message), exc_info=e)

            ordering = {County: 0, Country: 1}
            places = sorted(places, key=lambda o: [ordering[o.__class__], o.name, o.code])

            return render_json_to_response(
                {'results': [p.as_dict() for p in places]}
            )


        return HttpResponseBadRequest('"q" or "coords" parameter is required')


class LocateView(BaseLocateView):
    def get_context_data(self, *args, **kwargs):
        page_context = {}
        lat = self.request.GET.get('lat', None)
        lon = self.request.GET.get('lon', None)

        if lat and lon:
            places = get_locations_from_coords(latitude=lat, longitude=lon)
            page_context.update({
                'location': {
                    'lat': lat,
                    'lon': lon
                },
                'places': [p.as_dict() for p in places]
            })

        return page_context


class DataAPIView(View):
    """ 
    View that provides an API for census table information, mimicking that
    of the Censusreporter API described at https://github.com/censusreporter/census-api#get-10datashowacs

    An example call:

    http://api.censusreporter.org/1.0/data/show/latest?table_ids=B17001&geo_ids=04000US36%2C01000US
    """

    def get(self, request, *args, **kwargs):
        try:
            self.geo_ids = request.GET.get('geo_ids', 'country-KE').split(',')
            self.data_geos, self.info_geos = self.get_geos(self.geo_ids)
        except LocationNotFound as e:
            return render_json_error(e.message, 404)

        try:
            self.table_ids = request.GET.get('table_ids', '').split(',')
            self.tables = [get_datatable(t) for t in self.table_ids]
        except KeyError as e:
            return render_json_error('Unknown table: %s' % e.message, 404)

        if kwargs.get('action') == 'show':
            return self.show(request)
        if kwargs.get('action') == 'download':
            return self.download(request)

    def show(self, request):
        dataset = ', '.join(sorted(list(set(t.dataset_name for t in self.tables))))
        years = ', '.join(sorted(list(set(t.year for t in self.tables))))

        data = self.get_data(self.data_geos, self.tables)

        return render_json_to_response({
            'release': {
                'name': dataset,
                'years': years,
            },
            'tables': dict((t.id.upper(), t.as_dict()) for t in self.tables),
            'data': data,
            'geography': dict((g.full_geoid, g.as_dict()) for g in chain(self.data_geos, self.info_geos)),
            })

    def download(self, request):
        fmt = request.GET.get('format', 'csv')
        if not fmt in supported_formats:
            response = HttpResponse('Unspported format %s. Supported formats: %s' %(fmt, ', '.join(supported_formats.keys())))
            response.status_code = 400
            return response

        data = self.get_data(self.data_geos, self.tables)

        content, fname, mime_type = generate_download_bundle(self.tables, self.data_geos, self.geo_ids, data, fmt)

        response = HttpResponse(content, content_type=mime_type)
        response['Content-Disposition'] = 'attachment; filename="%s"' % fname

        return response

    def get_geos(self, geo_ids):
        """
        Return a tuple (data_geos, info_geos) of geo objects,
        where data_geos or geos we should get data for, and info_geos
        are geos that we only need to return geo info/metadata for.
        """
        data_geos = []
        info_geos = []

        for geo_id in geo_ids:
            # either country-KE or level|country-KE, which indicates
            # we must break country-KE into +levels+
            if not '-' in geo_id:
                raise LocationNotFound('Invalid geo id: %s' % geo_id)

            level, code = geo_id.split('-', 1)

            if '|' in level:
                # break geo down further
                split_level, level = level.split('|', 1)
                geo = get_geography(code, level)
                info_geos.append(geo)
                try:
                    data_geos.extend(geo.split_into(split_level))
                except ValueError as e:
                    raise LocationNotFound('Invalid geo level: %s' % split_level)

            else:
                # normal geo
                data_geos.append(get_geography(code, level))

        return data_geos, info_geos

    
    def get_data(self, geos, tables):
        data = {}

        for table in tables:
            for geo_id, table_data in table.raw_data_for_geos(geos).iteritems():
                data.setdefault(geo_id, {})[table.id.upper()] = table_data

        return data



class TableAPIView(View):
    """ 
    View that lists data tables.
    """

    def get(self, request, *args, **kwargs):
        return render_json_to_response([t.as_dict(columns=False) for t in DATA_TABLES.itervalues()])
