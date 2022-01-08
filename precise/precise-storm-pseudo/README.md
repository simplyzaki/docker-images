### Introduction

A base image based on ubuntu:12.04 with Oracle JDK 7, Apache Zookeper 3.4.5, Storm 0.8.1 and ZeroMQ 2.1.7 installed. Supervisor and OpenSSH server has been pre-installed in this image.

### Usage

##### From Docker Public Repository

	> docker pull khanio/precise-storm-pseudo

##### Using Source

	> git clone git@github.com:khanio/docker-images.git
	> cd docker-images/precise-storm-pseudo
	> docker build -rm -t {{ user }}/{{ image-name }} .

**{{ user }}** and **{{ image-name }}** are to be defined by you. Refer Docker.io documentation for how to build images using Dockerfile.

### Login Details

- root / root
- ubuntu / ubuntu

### Installed Packages

curl python-software-properties nano supervisor git uuid-dev libtool automake pkg-config unzip make build-essential rsync openssh-server ssh oracle-java7-installer oracle-java7-set-default zookeeper storm zeromq jzmq

### Configured Services & Ports

- supervisord / -
- sshd / 22
- zookeeper / 2181
- storm-ui  / 8080
- storm-thrift / 6627

### Environment Variables

- $JAVA_HOME = /usr/lib/jvm/java-7-oracle
- $STORM_HOME = /usr/local/storm