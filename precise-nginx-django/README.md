### Introduction

A base image based on ubuntu:12.04 with Python 2.7.2, Nginx, uWSGi, Django and required libraries and packages installed. Supervisor and OpenSSH server has been pre-installed in this image.

### Usage

##### From Docker Public Repository

	> docker pull khanio/precise-nginx-django

##### Using Source

	> git clone git@github.com:khanio/docker-images.git
	> cd docker-images/precise-nginx-django
	> docker build -rm -t {{ user }}/{{ image-name }} .

**{{ user }}** and **{{ image-name }}** are to be defined by you. Refer Docker.io documentation for how to build images using Dockerfile.

### Login Details

- root / root
- ubuntu / ubuntu

### Installed Packages

curl nano supervisor git uuid-dev libtool automake pkg-config unzip make build-essential rsync openssh-server ssh python-dev python-setuptools python-software-properties libjpeg62 libjpeg62-dev libfreetype6 libfreetype6-dev zlib1g-dev libreadline-dev libncurses5-dev libpq-dev postgresql-client libmysqlclient-dev nginx-full git uwsgi uwsgi-plugin-http uwsgi-plugin-python sqlite3

### Configured Services & Ports

- supervisord / -
- sshd / 22
- nginx / 80

### Environment Variables