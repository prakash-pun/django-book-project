#!/bin/bash

cd code/

python manage.py makemigrations users books orders pages
python manage.py makemigrations
python manage.py migrate

python manage.py collectstatic --noinput


