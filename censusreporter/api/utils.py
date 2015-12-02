import requests
import re

from sqlalchemy import create_engine, MetaData, Table
from sqlalchemy.orm import sessionmaker

from .config import (DB_NAME, DB_USER, DB_PASSWORD)


_engine = create_engine("postgresql://%s:%s@localhost/%s"
                        % (DB_USER, DB_PASSWORD, DB_NAME))
_metadata = MetaData()
_Session = sessionmaker(bind=_engine)


def get_session():
    return _Session()


def get_table_model(name):
    return Table(name, _metadata, autoload=True, autoload_with=_engine)


class LocationNotFound(Exception):
    pass


def capitalize(s):
    """
    Capitalize the first char of a string, without
    affecting the rest of the string.
    This differs from `str.capitalize` since the latter
    also lowercases the rest of the string.
    """
    if not s:
        return s

    return ''.join([s[0].upper(), s[1:]])
