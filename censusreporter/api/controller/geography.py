import requests

from sqlalchemy.orm import joinedload
from sqlalchemy.sql.expression import or_
from sqlalchemy import func

from api.models import County, Country, get_geo_model, geo_levels
from api.utils import get_session, LocationNotFound


class SearchException(Exception):
    pass


def get_geography(geo_code, geo_level):
    """
    Get a geography model (Ward, Province, etc.) for this geography, or
    raise LocationNotFound if it doesn't exist.
    """
    session = get_session()

    try:
        try:
            model = get_geo_model(geo_level)
        except KeyError:
            raise LocationNotFound('Invalid level: %s' % geo_level)

        geo = session.query(model).get(geo_code)
        if not geo:
            raise LocationNotFound('Invalid level and code: %s-%s' % (geo_level, geo_code))

        return geo
    finally:
        session.close()


def get_locations(search_term, levels=None, year='2009'):
    """
    Try to find locations based on a search term, possibly limited
    to +levels+.

    Returns an ordered list of geo models.
    """
    if levels:
        levels = levels.split(',')
        for level in levels:
            if not level in geo_levels:
                raise ValueError('Invalid geolevel: %s' % level)
    else:
        levels = geo_levels

    session = get_session()
    try:
        objects = set()

        # search at each level
        for level in levels:
            # already checked that geo_level is valid
            model = get_geo_model(level)

            objects.update(session
                .query(model)
                .filter(model.year == year)
                .filter(or_(model.name.ilike(search_term + '%'),
                            model.code == search_term.upper()))
                .limit(10)
            )

        order_map = {County: 0, Country: 1}
        objects = sorted(objects, key=lambda o: [order_map[o.__class__], o.name, o.code])

        return [o.as_dict() for o in objects[0:10]]
    finally:
        session.close()


def get_locations_from_coords(longitude, latitude):
    '''
    Finds the place containing this point. Returns
    County and Country model instances.
    '''
    counties = MapitSearch().counties_for_coordinates(latitude, longitude)
    if not counties:
        return []

    county = counties[0]
    return [county, county.country]


class MapitSearch(object):
    """
    Finds places using the http://global.mapit.mysociety.org/ API.
    """

    DEFAULT_ENDPOINT = 'http://global.mapit.mysociety.org/'

    def __init__(self, endpoint_url=None):
        self.endpoint_url = endpoint_url or self.DEFAULT_ENDPOINT

    def counties_for_coordinates(self, lat, lng):
        places = self.places_for_coordinates(lat, lng)
        area_codes = [obj['id'] for obj in places if obj['type'] == 'O04']
        if not area_codes:
            return []

        session = get_session()
        try:
            return session.query(County).filter(County.osm_area_id.in_(area_codes)).all()
        finally:
            session.close()
        

    def places_for_coordinates(self, lat, lng):
        # eg: http://global.mapit.mysociety.org/point/4326/37.523805,0.067007.json
        resp = requests.get(self.endpoint_url + '/point/4326/%s,%s.json' % (lng, lat))

        if resp.status_code != 200:
            raise SearchException('%s response code' % resp.status_code)

        return resp.json().values()
