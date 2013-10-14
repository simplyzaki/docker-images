### Introduction

A base image based on ubuntu:12.04 with Oracle JDK 7 and Rexster Server v2.4.0 installed on a single node in standalone mode. Supervisor and OpenSSH server has been pre-installed in this image.

### Usage

##### From Docker Public Repository

	> docker pull khanio/precise-rexster

##### Using Source

	> git clone git@github.com:khanio/docker-images.git
	> cd docker-images/precise-rexster
	> docker build -rm -t {{ user }}/{{ image-name }} .

**{{ user }}** and **{{ image-name }}** are to be defined by you. Refer Docker.io documentation for how to build images using Dockerfile.

### Login Details

- root / root
- ubuntu / ubuntu

### Installed Packages

curl python-software-properties nano supervisor git uuid-dev libtool automake pkg-config unzip make build-essential rsync openssh-server ssh oracle-java7-installer oracle-java7-set-default rexster-server

### Configured Services & Ports

- supervisord / -
- sshd / 22
- rexster-server / 8182

### Environment Variables

- $JAVA_HOME = /usr/lib/jvm/java-7-oracle

### Issues
Rexster DogHouse console dispalys cant load graphs error. To fix this issue, set host and guest port forwarding to 8182 for rexster service