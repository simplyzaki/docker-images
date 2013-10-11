### Introduction

A base image based on ubuntu:12.04 with Oracle JDK 7 and DataStax Cassandra v2.0.1 Community Edition installed on a single node in standalone mode. Supervisor and OpenSSH server has been pre-installed in this image.

### Usage

##### From Docker Public Repository

	> docker pull khanio/precise-cassandra-standalone

##### Using Source

	> git clone git@github.com:khanio/docker-images.git
	> cd docker-images/precise-cassandra-standalone
	> docker build -rm -t {{ user }}/{{ image-name }} .

**{{ user }}** and **{{ image-name }}** are to be defined by you. Refer Docker.io documentation for how to build images using Dockerfile.

### Login Details

- root / root
- ubuntu / ubuntu

### Installed Packages

curl python-software-properties nano supervisor git uuid-dev libtool automake pkg-config unzip make build-essential rsync openssh-server ssh oracle-java7-installer oracle-java7-set-default cassandra dsc20 libcap2 libjna-java libopts25 ntp python-cql python-thrift-basic

### Configured Services & Ports

- supervisord / -
- sshd / 22
- cassandra / 9160

### Environment Variables

- $JAVA_HOME = /usr/lib/jvm/java-7-oracle