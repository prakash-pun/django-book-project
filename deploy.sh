#!/bin/bash
pkill -f uwsgi -9

mkdir django-book-project
cd ./django-book-project
git clone https://github.com/prakash-pun7/django-book-project.git .

docker-compose up -d --build

exit
