FROM python:3.9

RUN mkdir /code

WORKDIR /code


COPY ./cosmosdb-with-fastapi /code

RUN pip install fastapi

RUN pip install fastapi uvicorn

RUN pip install python-dotenv

RUN pip install aiohttp

RUN pip install azure-cosmos

CMD ["uvicorn", "cosmosdb-with-fastapi.main:app", "--host=0.0.0.0", "--port=80"]