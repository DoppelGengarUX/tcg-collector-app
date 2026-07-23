from sqlalchemy import Column, Integer, Text, Date
from database import Base

class CardSet(Base):
    __tablename__ = "card_set"

    id = Column(Integer, primary_key=True, index=True)
    name = Column(Text, nullable=False)
    series = Column(Text, nullable=True)
    release_date = Column(Date, nullable=True)