### Introduction

A base image based on ubuntu:12.04 with Oracle JDK 7, DataStax Cassandra v2.0.1 Community Edition, ElasticSearch v 0.90.5, Rexster Server v 2.4.0 and Titan v 0.3.2 graph libraries installed on a single node in standalone mode. Supervisor and OpenSSH server has been pre-installed in this image.

### Usage

##### From Docker Public Repository

	> docker pull khanio/precise-cassandra-titan

##### Using Source

	> git clone git@github.com:khanio/docker-images.git
	> cd docker-images/precise-cassandra-titan
	> docker build -rm -t {{ user }}/{{ image-name }} .

**{{ user }}** and **{{ image-name }}** are to be defined by you. Refer Docker.io documentation for how to build images using Dockerfile.

### Login Details

- root / root
- ubuntu / ubuntu

### Installed Packages

curl python-software-properties nano supervisor git uuid-dev libtool automake pkg-config unzip make build-essential rsync openssh-server ssh oracle-java7-installer oracle-java7-set-default cassandra dsc20 libcap2 libjna-java libopts25 ntp python-cql python-thrift-basic elasticsearch rexster-server titan

### Configured Services & Ports

- supervisord / -
- sshd / 22
- cassandra / 9160
- elasticsearch / 9200
- rexster-server / 8182

### Environment Variables

- $JAVA_HOME = /usr/lib/jvm/java-7-oracle