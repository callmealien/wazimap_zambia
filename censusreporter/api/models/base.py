from itertools import chain

from sqlalchemy import Column, ForeignKey, Integer, String
from sqlalchemy.ext.declarative import declarative_base, declared_attr
from sqlalchemy.orm import relationship

from api.utils import get_session


class Base(object):
    @declared_attr
    def __tablename__(cls):
        return cls.__name__.lower()

    def __repr__(self):
        return '%s(%s)' % (self.__class__.__name__,
                           ', '.join(['%s="%s"' % (c.name, getattr(self, c.name))
                                      for c in self.__table__.columns]))


Base = declarative_base(cls=Base)


'''
Geographic models
'''

class GeoMixin(object):
    def as_dict(self):
        return {
            'full_geoid': self.full_geoid,
            'full_name': self.long_name,
            'short_name': self.short_name,
            'name': self.context_name,
            'geo_level': self.level,
            'geo_code': self.code,
            'osm_area_id': self.osm_area_id,
            'child_level': self.child_level,
            'parent_geoid': self.parent.full_geoid if self.parent else None,
        }

    def as_dict_deep(self):
        parents = dict((p.level, p.as_dict()) for p in self.parents())
        parents_ordering = [p.level for p in self.parents()]

        counties = dict((c.code, c.as_dict()) for c in Country.KE().children())

        return {
            'this': self.as_dict(),
            'parents': parents,
            'parents_ordering': parents_ordering,
            'country': Country.KE().as_dict(),
            'counties': counties,
        }

    def children(self):
        if not self.child_level:
            return []

        session = get_session()
        try:
            return session.query(get_geo_model(self.child_level)).all()
        finally:
            session.close()

    def split_into(self, level):
        if not level in geo_levels:
            raise ValueError(level)

        kids = self.children()
        if level == self.child_level:
            return kids
        else:
            splits = []
            for k in kids:
                splits.extend(k.split_into(level))
            # when splitting into a lower level, ensure
            # that we update the children's parent to be us,
            # which allows the UI to handle that case
            # correctly
            for k in splits:
                k.parent = self
            return splits
        

    @property
    def short_name(self):
        return getattr(self, 'name', '')

    @property
    def context_name(self):
        if hasattr(self, 'province'):
            return '%s, %s' % (self.short_name, self.province.code)
        return self.short_name

    @property
    def long_name(self):
        long_name = self.short_name
        parent_names = [p.name for p in self.parents() if p.level != 'country']
        if len(parent_names) > 0:
            return '%s, %s' % (long_name, ', '.join(parent_names))
        return long_name

    @property
    def parent(self):
        # allow parent to be overriden
        if not hasattr(self, '_parent'):
            p = self.parents()
            p = p[0] if p else None
            self._parent = p

        return self._parent

    @parent.setter
    def parent(self, value):
        self._parent = value

    @property
    def country(self):
        return Country.KE()

    @property
    def full_geoid(self):
        return '%s-%s' % (self.level, self.code)

    def __unicode__(self):
        return self.long_name


class Country(Base, GeoMixin):
    # a 2 letter string
    code = Column(String(2), primary_key=True)
    name = Column(String(16), nullable=False, index=True)
    # same as the year of the constituent wards
    year = Column(Integer, index=True, nullable=False)
    osm_area_id = Column(Integer, nullable=False)

    level = 'country'
    child_level = 'county'

    def parents(self):
        return []


    countries = {}
    @classmethod
    def KE(cls):
        if not 'KE' in cls.countries:
            c = cls()
            c.code = 'KE'
            c.name = 'Kenya'
            c.year = 2009
            cls.countries['KE'] = c

        return cls.countries['KE']


class County(Base, GeoMixin):
    # a 3-digit number
    code = Column(String(3), primary_key=True)
    name = Column(String(32), nullable=False, index=True)
    year = Column(Integer, index=True, nullable=False)
    osm_area_id = Column(Integer, nullable=False)

    level = 'county'
    child_level = None

    def parents(self):
        return [self.country]


geo_models = {
    'county': County,
    'country': Country,
}
geo_levels = geo_models.keys()


def get_geo_model(geo_level):
    return geo_models[geo_level]


# Prior to the 2013 constitution change, Kenya had
# a different breakdown to what it has now. This is actually
# the breakdown that the original census was performed at.
#
# Country -> Province -> District -> Division -> Location -> Sublocation

# class District(Base, GeoMixin):
#     # a 4-character string starting with 'DC' and followed by
#     # 1 or 2 digits, e.g. DC10
#     # Note: a few districts exist for large city areas with
#     # 3-letter codes, e.g. CPT (same code used for municipality)
#     code = Column(String(8), primary_key=True)
#     name = Column(String(32), nullable=False, index=True)
#     # same as the year of the constituent wards
#     year = Column(String(4), index=True, nullable=False)
#     province_code = Column(String(3), ForeignKey('province.code'))
# 
#     # associations
#     province  = relationship('Province', lazy=False)
# 
#     level = 'district'
#     child_level = 'municipality'
# 
#     def parents(self):
#         return [self.province, self.country]
# 
# 
# class Province(Base, GeoMixin):
#     # a 2 or 3-letter string
#     code = Column(String(3), primary_key=True)
#     name = Column(String(16), nullable=False, index=True)
#     # same as the year of the constituent wards
#     year = Column(String(4), index=True, nullable=False)
#     # as defined here:
#     # http://en.wikipedia.org/wiki/List_of_FIPS_region_codes_(S%E2%80%93U)#SF:_South_Africa
#     fips_code = Column(String(4), index=True, unique=True, nullable=False)
# 
#     level = 'province'
#     child_level = 'municipality'
# 
#     def parents(self):
#         return [self.country]
# 
# 
# class Subplace(Base):
#     code = Column(String(9), primary_key=True)
#     subplace_name  = Column(String(50), index=True, nullable=False)
#     mainplace_name = Column(String(50), index=True, nullable=False)
#     mainplace_code = Column(String(8), nullable=False)
#     ward_code = Column(String(8), ForeignKey('ward.code'), nullable=False)
#     muni_code = Column(String(8), ForeignKey('municipality.code'), nullable=False)
#     district_code = Column(String(8), ForeignKey('district.code'), nullable=False)
#     province_code = Column(String(3), ForeignKey('province.code'), nullable=False)
#     # same as the year of the constituent wards
#     year = Column(String(4), index=True, nullable=False)
