#!/bin/bash

# cd backend/

docker-compose up -d --build
# python3 manage.py makemigrations users books orders pages
# python3 manage.py makemigrations
# python3 manage.py migrate

# python3 manage.py collectstatic --noinput

# gunicorn bookstore_project.wsgi -b 0.0.0.0:8000
