### Introduction

A base image based on ubuntu:12.04 with OpenJDK 7 installed. Supervisor and OpenSSH server has been pre-installed in this image.

### Usage

##### From Docker Public Repository

	> docker pull khanio/precise-openjdk7

##### Using Source

	> git clone git@github.com:khanio/docker-images.git
	> cd docker-images/precise-openjdk7
	> docker build -rm -t {{ user }}/{{ image-name }} .

**{{ user }}** and **{{ image-name }}** are to be defined by you. Refer Docker.io documentation for how to build images using Dockerfile.

### Login Details

- root / root
- ubuntu / ubuntu

### Installed Packages

curl python-software-properties nano supervisor git uuid-dev libtool automake pkg-config unzip make build-essential rsync openssh-server ssh openjdk-7-jdk

### Configured Services & Ports

- supervisord / -
- sshd / 22

### Environment Variables

- $JAVA_HOME = /usr/lib/jvm/default-java