#!/bin/bash

# Make the migrations
python manage.py makemigrations

# Apply the migrations
python manage.py migrate

# Spin up the server
python manage.py runserver 0.0.0.0:8000

exec "$@"
