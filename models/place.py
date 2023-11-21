#!/usr/bin/python3
""" Place Module for HBNB project """
from models.base_model import BaseModel, Base
from sqlalchemy import Column, String, ForeignKey, Integer, Float

class Place(BaseModel, Base):
    """ A place to stay """
    __tablename__ = 'place'
    city_id = Column(string(60), ForeignKey('cities.id'), nullable=False)
    user_id = Column(String(60), ForeignKey('users.id'), nullable=False)
    name = Column(String(128), nullable=False)
    description = Column(String(1024), nullable=True)
    number_rooms = Column(Integer, defualt=0, nullable=False)
    number_bathrooms = Column(Integer, defualt=0, nullable=False)
    max_guest = Column(Integer, defualt=0, nullable=False)
    price_by_night = Column(Integer, defualt=0, nullable=False)
    latitude = Column(Float, nullable=True)
    longitude = Column(Float, nullable=True)
    amenity_ids = []
