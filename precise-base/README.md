## Introduction

A base image based on ubuntu:12.04. Supervisor and OpenSSH server has been pre-installed in this image. It will serve as base image for all the Docker images I intend to create.

## Usage

### From Docker Public Repository

	> docker pull khanio/precise-base

### Using Source

	> git clone git@github.com:khanio/docker-images.git
	> cd docker-images/precise-base
	> docker build -rm -t {{ user }}/{{ image-name }} .

**{{ user }}** and **{{ image-name }}** are to be defined by you. Refer Docker.io documentation for how to build images using Dockerfile.

## Login Details

- root / root
- ubuntu / ubuntu

## Installed Packages

curl python-software-properties nano supervisor git uuid-dev libtool automake pkg-config unzip make build-essential rsync openssh-server ssh


## Configured Services & Ports

- supervisord / -
- sshd / 22