import os
import os.path
import sys
import itertools

import csv
import re

from api.models import get_model_from_fields, Base, County
from api.utils import get_session, _engine

import logging

logging.basicConfig()
logging.getLogger('sqlalchemy.engine').setLevel(logging.WARN)

"""
This is a helper script that reads in a CSV file
and imports the data into the censusreporter database, creating
tables as necessary.
"""

def to_int(v):
    if v.strip() == '-':
        return 0
    else:
        return int(v.replace(',', ''))

class Importer(object):
    def __init__(self, filepath):
        self.filepath = filepath
        self.includes_total = False
        self.table_name = None
        self.table_names = []

    def run(self):
        with open(filepath) as f:
            self.f = f
            self.reader = csv.DictReader(self.f, delimiter=",")
            self.store_values()

        self.dump_tables()

    def read_rows(self):
        code_field = 'County'

        # setup maps to translate columns to row values, and rename columns.
        col_map = {
            'No. Corrugated Iron Sheets': 'main type of roofing material',
            'No. Tiles': 'main type of roofing material',
            'No. Concrete': 'main type of roofing material',
            'No. Asbestos Sheets': 'main type of roofing material',
            'No. Grass': 'main type of roofing material',
            'No. Makuti': 'main type of roofing material',
            'No. Tin': 'main type of roofing material',
            'No. Mud/Dung': 'main type of roofing material',
            'No. Other': 'main type of roofing material',
        }

        # These allow you to recode the keys for each field.
        #
        # They are applied after column names are changed (as above)
        # and keys are lowercased.
        self.field_recodes = {
            'main type of roofing material': {
                'no. corrugated iron sheets': 'corrugated iron sheets',
                'no. tiles': 'tiles',
                'no. concrete': 'concrete',
                'no. asbestos sheets': 'asbestos sheets',
                'no. grass': 'grass',
                'no. makuti': 'makuti',
                'no. tin': 'tin',
                'no. mud/dung': 'mud/dung',
                'no. other': 'other',
            }
        }

        # what we're going to pull from the csv
        self.columns = [code_field] + col_map.keys()

        # what we're going to put into the db
        self.fields = list(set(col_map.values()))
        geo_level = code_field.lower()

        # merge and rename columns
        rows = list(self.translate_columns(self.reader, col_map))
        rows = [r for r in rows if r[geo_level].upper() != 'KENYA AVERAGE']

        fields = [geo_level] + self.fields
        key_func = lambda r: [r[c] for c in fields]

        # sort and group
        rows.sort(key=key_func)
        for group, group_rows in itertools.groupby(rows, key=key_func):
            # +group+ is a unique combination of values for +self.fields+
            code, category = group[0], group[1:]
            value = sum(r['count'] for r in group_rows)
            yield geo_level, code, category, value


        # now do country level
        fields = self.fields
        key_func = lambda r: [r[c] for c in fields]
        rows.sort(key=key_func)
        for category, rows in itertools.groupby(rows, key=key_func):
            value = sum(r['count'] for r in rows)
            yield 'country', 'KE', category, value


    def translate_columns(self, rows, col_map, into='count'):
        """ Rename and rotate columns from +rows+, yielding new
        dictionary objects for each row.

        Rotated columns are those that have the same mapping in +col_map+.
        For each column title +k+ that maps to +p+, a new row is generated
        with column +p+ equal to +k+ and column +count+ is the sum over the rotated columns.

        For example:

        If +Male+ and +Female+ both map to +sex+ in +col_map+ and the table looks like this:

            County,Age in years,Male,Female
            Nairobi,10-12,100,200
            Nairobi,13-15,80,99

        Rows equivalent to the following are generated:

            County,Age in years,sex,count
            Nairobi,10-12,male,100
            Nairobi,10-12,male,200
            Nairobi,13-15,female,80
            Nairobi,13-15,female,99

        """
        to_rotate = {}
        for k, v in col_map.iteritems():
            to_rotate[v] = to_rotate.get(v, [])
            to_rotate[v].append(k)
        to_rotate = dict((k, v) for k, v in to_rotate.iteritems() if len(v) > 1)
        rotated_cols = set(itertools.chain.from_iterable(to_rotate.values()))

        if len(to_rotate) > 1:
            raise ValueError("Can only rotate multiple columns into one, trying to rotate too many: %s" % to_rotate)

        def recode(col, key):
            return self.field_recodes\
                    .get(col, {})\
                    .get(key.lower(), key.lower())


        for i, row in enumerate(rows):
            # dup row and translate column names
            try:
                row = dict(
                        # column name
                        (col_map.get(c, c.lower()) if not c in rotated_cols else c, 
                        # column value
                         recode(c, row[c].strip())) for c in self.columns)
            except KeyError as e:
                raise ValueError("The column '%s' doesn't seem to exist in the input data on row %d: %s" % (e.message, i+1, row))

            if to_rotate:
                for new, old in to_rotate.iteritems():
                    for col in old:
                        rotated = row.copy()
                        rotated[new] = recode(new, col.lower())
                        rotated[into] = to_int(rotated[col])

                        for col in old:
                            del rotated[col]

                        yield rotated
            else:
                row[into] = to_int(row[into])
                yield row


    def store_values(self):
        session = get_session()
        county_codes = dict((p.name.upper().replace('-', ' '), p.code) for p in session.query(County))
        session.commit()

        # cache of the db models for each geo level
        models = {}
        count = 0

        for geo_level, geo_name, category, total in self.read_rows():
            count += 1

            print geo_level, geo_name, category, total

            if geo_level == 'county':
                code = county_codes[geo_name.upper()]
            elif geo_level == 'country':
                code = 'KE'
            else:
                raise ValueError(geo_level)

            base_kwargs = {'%s_code' % geo_level: code} if code else {}

            # get db model and create table if necessary
            if geo_level in models:
                db_model = models[geo_level]
            else:
                if self.table_name:
                    table_name = self.table_name + '_' + geo_level
                else:
                    table_name = None

                try:
                    models[geo_level] = db_model = get_model_from_fields(self.fields, geo_level, table_name)
                except ValueError as e:
                    raise ValueError('%s. Have you declared this field in a table in censusreporter/api/models/tables.py?' % e.message)
                Base.metadata.create_all(_engine, tables=[db_model.__table__])
                self.table_names.append(db_model.__table__.name)

            # prepare the dict of args to pass to the db model for this row
            kwargs = base_kwargs.copy()
            kwargs.update(dict((f, c) for f, c in zip(self.fields, category)))
            kwargs['total'] = total

            # create and add the row
            session.add(db_model(**kwargs))

            if count % 100 == 0:
                session.flush()

        session.commit()
        session.close()


    def dump_tables(self):
        """ Run pg_dump to output generated tables. """
        import subprocess
        from api.config import DB_NAME

        dumpdir = os.path.join(os.path.dirname(__file__), '../data/')
        table_id = '_'.join(self.table_names[0].split('_')[0:-1])
        dumpfile = os.path.join(dumpdir, '%s.sql' % table_id)

        cmd = ['pg_dump', '-d', DB_NAME]
        for table in self.table_names:
            cmd.append('-t')
            cmd.append(table)

        with open(dumpfile, 'w') as f:
            print 'Running: %s > %s' % (' '.join(cmd), dumpfile)
            subprocess.call(cmd, stdout=f)

        print "DON'T FORGET TO RUN: git add %s" % dumpfile


if __name__ == '__main__':
    if len(sys.argv) < 2:
        raise ValueError("Requires 1 file path argument")
    if len(sys.argv) == 3:
        table_name = sys.argv[2]
    else:
        table_name = None
    filepath = sys.argv[1]

    if not os.path.isabs(filepath):
        filepath = os.path.join(os.getcwd(), filepath)

    importer = Importer(filepath)
    importer.table_name = table_name
    importer.run()

