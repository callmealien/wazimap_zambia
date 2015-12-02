import shutil
import tempfile
import os
import logging
import zipfile
import re

from osgeo import ogr, osr

supported_formats = {
    'kml':      {"driver": "KML",     'geometry': True, 'mime': 'application/vnd.google-earth.kml+xml'},
    'geojson':  {"driver": "GeoJSON", 'geometry': True, 'mime': 'application/json'},
    'xlsx':     {"driver": "XLSX",    'geometry': False, 'mime': 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'},
    'csv':      {"driver": "CSV",     'geometry': False, 'mime': 'text/csv'},
}

log = logging.getLogger('censusreporter')

bad_layer_chars = re.compile('[ #-]')

def generate_download_bundle(tables, geos, geo_ids, data, fmt):
    ogr.UseExceptions()

    format = supported_formats[fmt]
    if format['geometry']:
        geometries = load_geometries(set(g.level for g in geos))
    else:
        geometries = {}

    # where we're going to put the data temporarily
    temp_path = tempfile.mkdtemp()
    try:
        file_ident = "%s_%s" % (
                tables[0].id.upper(),
                # The gdal KML driver doesn't like certain chars in its layer names.
                # It will replace them for you, but then subsequent calls hang.
                bad_layer_chars.sub('_', geos[0].short_name))

        # where the files go, what we'll eventually zip up
        inner_path = os.path.join(temp_path, file_ident)
        log.info("Generating download in %s" % inner_path)
        os.mkdir(inner_path)
        out_filepath = os.path.join(inner_path, '%s.%s' % (file_ident, fmt))

        out_driver = ogr.GetDriverByName(format['driver'])
        out_srs = osr.SpatialReference()
        out_srs.ImportFromEPSG(4326)
        out_data = out_driver.CreateDataSource(out_filepath)

        # See http://gis.stackexchange.com/questions/53920/ogr-createlayer-returns-typeerror
        # excel limits worksheet names to 31 chars
        out_layer = out_data.CreateLayer(file_ident.encode('utf-8')[0:31], srs=out_srs, geom_type=ogr.wkbMultiPolygon)
        out_layer.CreateField(ogr.FieldDefn('geo_level', ogr.OFTString))
        out_layer.CreateField(ogr.FieldDefn('geo_code', ogr.OFTString))
        out_layer.CreateField(ogr.FieldDefn('geoid', ogr.OFTString))
        out_layer.CreateField(ogr.FieldDefn('name', ogr.OFTString))

        for table in tables:
            for column_id, column_info in table.columns.iteritems():
                out_layer.CreateField(ogr.FieldDefn(str(column_id), ogr.OFTReal))

        for geo in geos:
            geoid = geo.full_geoid

            out_feat = ogr.Feature(out_layer.GetLayerDefn())

            if format['geometry']:
                geom = get_geometry(geo, geometries)
                out_feat.SetGeometry(geom.GetGeometryRef())

            out_feat.SetField2('geo_level', geo.level)
            out_feat.SetField2('geo_code', geo.code)
            out_feat.SetField2('geoid', geoid)
            out_feat.SetField2('name', geo.short_name.encode('utf-8'))

            for table in tables:
                table_estimates = data[geoid][table.id.upper()]['estimate']

                for column_id, column_info in table.columns.iteritems():
                    if column_id in table_estimates:
                        # GDAL generates invalid excel spreadsheets for
                        # zero values in real columns
                        if fmt == 'xlsx' and table_estimates[column_id] == 0:
                            continue
                        out_feat.SetField(str(column_id), table_estimates[column_id])

            out_layer.CreateFeature(out_feat)

        # this closes the object and ensure
        # the data is flushed to the file
        out_data = None

        # zip it up, they can be huge
        zfile_filename = file_ident + '.zip'
        zfile_filepath = os.path.join(temp_path, zfile_filename)
        log.info("Zipping download into %s" % zfile_filepath)

        zfile = zipfile.ZipFile(zfile_filepath, 'w', zipfile.ZIP_DEFLATED)
        for root, dirs, files in os.walk(inner_path):
            for f in files:
                zfile.write(os.path.join(root, f), os.path.join(file_ident, f))
        zfile.close()

        log.info("Zipped. Reading and streaming.")

        with open(zfile_filepath) as f:
            content = f.read()
            return content, zfile_filename, 'application/zip'

    finally:
        shutil.rmtree(temp_path)

def get_geometry(geo, geometries):
    source = geometries[geo.level]
    layer = source.GetLayer(0)
    for i in xrange(layer.GetFeatureCount()):
        feat = layer.GetFeature(i)
        if feat['geoid'] == geo.full_geoid:
            return feat

def load_geometries(levels):
    geom = {}
    driver = ogr.GetDriverByName('GeoJSON')

    path = os.path.join(os.path.dirname(__file__), '../apps/census/static/geo/')
    for level in levels:
        fname = os.path.join(path, level + '.geojson')
        ds = driver.Open(fname)
        geom[level] = ds

    return geom
