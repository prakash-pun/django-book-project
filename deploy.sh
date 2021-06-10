#!/bin/bash

mkdir django-book-project
cd ./django-book-project
git clone https://github.com/prakash-pun7/django-book-project .

git pull origin master

docker-compose up -d --build

exit
