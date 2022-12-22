FROM python:3.9

RUN mkdir /code

WORKDIR /code

COPY ./app /code

EXPOSE 8000:8000

RUN pip install fastapi

RUN pip install fastapi uvicorn

RUN pip install python-dotenv

RUN pip install aiohttp

RUN pip install azure-cosmos

CMD ["uvicorn", "main:app"]
