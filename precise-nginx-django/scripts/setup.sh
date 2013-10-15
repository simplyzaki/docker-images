#!/bin/sh

#apt-get -y update

add-apt-repository -y ppa:nginx/stable
apt-get update
apt-get -y -f install nginx-full git uwsgi uwsgi-plugin-http uwsgi-plugin-python sqlite3

mkdir -p /srv/www/
mkdir $PROJECTS_HOME/$PROJECT_NAME


## manually set project
mkdir $PROJECTS_HOME/$PROJECT_NAME/venv
mkdir $PROJECTS_HOME/$PROJECT_NAME/conf
mkdir $PROJECTS_HOME/$PROJECT_NAME/src
mkdir $PROJECTS_HOME/$PROJECT_NAME/logs
mkdir $PROJECTS_HOME/$PROJECT_NAME/data
mkdir $PROJECTS_HOME/$PROJECT_NAME/data/static
mkdir $PROJECTS_HOME/$PROJECT_NAME/data/media
mkdir $PROJECTS_HOME/$PROJECT_NAME/uwsgi

cd $PROJECTS_HOME/$PROJECT_NAME/venv
virtualenv .
bin/pip install django

cd $PROJECTS_HOME/$PROJECT_NAME/src
$PROJECTS_HOME/$PROJECT_NAME/venv/bin/django-admin.py startproject $PROJECT_NAME

cd $PROJECTS_HOME/$PROJECT_NAME
chown -R www-data:www-data .

## or you clone a git project and install its requirements here