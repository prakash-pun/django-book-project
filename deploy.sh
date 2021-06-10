#!/bin/bash
pkill -f uwsgi -9

mkdir django-book-project
cd ./django-book-project
git clone https://github.com/prakash-pun7/django-book-project.git .

# pipenv shell
# pip install -r requirements.txt

# python manage.py makemigrations users books orders pages
# python manage.py makemigrations
# python manage.py migrate
# python manage.py collectstatic --noinput
docker-compose up --build -d
docker image prune -a --filter "until=24h" -f
exit
