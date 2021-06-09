#!/bin/bash

pkill -f uwsgi -9
cd /home/eversoft/microstay/
source venv/bin/activate
export ENV_PATH=dev.env
cd backend/microstay
git pull
pip install -r requirements.txt
python manage.py makemigrations users books orders pages
python manage.py makemigrations
python manage.py migrate
python manage.py collectstatic --noinput
docker-compose up --build -d
docker image prune -a --filter "until=24h" -f

exit
