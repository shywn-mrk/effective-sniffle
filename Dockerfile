FROM python:3.8

ENV PYTHONUNBUFFERED=1

RUN pip install --upgrade pip
RUN apt-get update \
    && apt-get -y install libpq-dev gcc

COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install -r requirements.txt

COPY ./ /app/

RUN chmod +x /app/scripts/entrypoint.sh
