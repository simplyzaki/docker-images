### Introduction

A base image based on ubuntu:12.04 with Oracle JDK 7 and Cloudera CDH4 HBase installed on a single node in standalone mode. Supervisor and OpenSSH server has been pre-installed in this image.

### Usage

##### From Docker Public Repository

	> docker pull khanio/precise-cdh4-hbase-standalone

##### Using Source

	> git clone git@github.com:khanio/docker-images.git
	> cd docker-images/precise-cdh4-hbase-standalone
	> docker build -rm -t {{ user }}/{{ image-name }} .

**{{ user }}** and **{{ image-name }}** are to be defined by you. Refer Docker.io documentation for how to build images using Dockerfile.

### Login Details

- root / root
- ubuntu / ubuntu

### Installed Packages

curl python-software-properties nano supervisor git uuid-dev libtool automake pkg-config unzip make build-essential rsync openssh-server ssh oracle-java7-installer oracle-java7-set-default bigtop-jsvc bigtop-utils hadoop hadoop-hdfs libcap2 libopts25 netcat-openbsd ntp psmisc zookeeper

### Configured Services & Ports

- supervisord / -
- sshd / 22
- hbase-master /60010
- hbase-rest / 8080

### Environment Variables

- $JAVA_HOME = /usr/lib/jvm/java-7-oracle