FROM python:3.9

RUN mkdir /code

WORKDIR /code

EXPOSE 8000:8000

COPY ./app /code

RUN pip install fastapi

RUN pip install fastapi uvicorn

RUN pip install python-dotenv

RUN pip install aiohttp

RUN pip install azure-cosmos

CMD ["uvicorn", "main:app"]