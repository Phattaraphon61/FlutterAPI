import pymongo
from pymongo import MongoClient
from typing import Optional
from fastapi import FastAPI,Response
from starlette.middleware.cors import CORSMiddleware
from pydantic import BaseModel,Field
from bson import ObjectId
from typing import Optional
app = FastAPI()

# cluster = MongoClient('mongodb+srv://phattaraphon:0989153312@cluster0.trckf.mongodb.net/flutter?retryWrites=true&w=majority')
cluster = MongoClient('mongodb://localhost:27017')

db = cluster["flutter"]
collection = db['test'] 
origins = [
    "*",
    "http://localhost",
    "http://localhost:80",
    "http://localhost:8000",

]
app.add_middleware(
    CORSMiddleware,
    allow_origins=origins,
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)
class PyObjectId(ObjectId):

    @classmethod
    def __get_validators__(cls):
        yield cls.validate

    @classmethod
    def validate(cls, v):
        if not ObjectId.is_valid(v):
            raise ValueError('Invalid objectid')
        return ObjectId(v)

    @classmethod
    def __modify_schema__(cls, field_schema):
        field_schema.update(type='string')
class Data(BaseModel):
    id: Optional[PyObjectId] = Field(alias='_id')
    name: str
    class Config:
        arbitrary_types_allowed = True
        json_encoders = {
            ObjectId: str
        }
class Post(BaseModel):
    title: str
    body: str


def all():
    tt = []
    for i in collection.find():
        tt.append(Data(**i)) 
    return tt


@app.get("/")
async def read_root():
    return all()
@app.post("/api")
async def test(tt:Post):
    print(tt.title,tt.body)
    collection.insert_one({"name":tt.title})
    return all()

