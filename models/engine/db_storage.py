#!usr/bin/python3


from sqlalchemy import create_engine
class DBStorage:
    __engine = None
    __session = None

    def __init__(self):
        self.__engine = create_engine
