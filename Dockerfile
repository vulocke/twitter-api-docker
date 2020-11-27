FROM python:3.8-alpine as base

RUN apk update && apk add postgresql-dev gcc musl-dev
RUN pip install --upgrade pip

WORKDIR /code
COPY . /code

RUN pip install -r requirements-dev.txt

ENV FLASK_APP wsgi.py
