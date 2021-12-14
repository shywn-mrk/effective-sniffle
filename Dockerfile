FROM python:3.8

RUN pip install --upgrade pip
RUN apt-get update \
    && apt-get -y install libpq-dev gcc

COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install -r requirements.txt

COPY ./ /app/

RUN python manage.py migrate
