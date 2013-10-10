cdh4-mrv1### Introduction

A base image based on ubuntu:12.04 with Oracle JDK 7 and Cloudera CDH4 with MapReduceV1 installed on a single node in pseudo-distributed manner. Supervisor and OpenSSH server has been pre-installed in this image.

### Usage

##### From Docker Public Repository

	> docker pull khanio/precise-cdh4-mrv1

##### Using Source

	> git clone git@github.com:khanio/docker-images.git
	> cd docker-images/precise-cdh4-mrv1
	> docker build -rm -t {{ user }}/{{ image-name }} .

**{{ user }}** and **{{ image-name }}** are to be defined by you. Refer Docker.io documentation for how to build images using Dockerfile.

### Login Details

- root / root
- ubuntu / ubuntu

### Installed Packages

curl python-software-properties nano supervisor git uuid-dev libtool automake pkg-config unzip make build-essential rsync openssh-server ssh oracle-java7-installer oracle-java7-set-default bigtop-jsvc bigtop-utils hadoop hadoop-0.20-conf-pseudo hadoop-0.20-mapreduce hadoop-0.20-mapreduce-jobtracker hadoop-0.20-mapreduce-tasktracker hadoop-hdfs hadoop-hdfs-datanode hadoop-hdfs-namenode hadoop-hdfs-secondarynamenode netcat-openbsd psmisc zookeeper

### Configured Services & Ports

- supervisord / -
- sshd / 22
- hadoop-hdfs-namenode / 50070
- hadoop-0.20-mapreduce-jobtracker / 50030
- zookeeper / 2181


### Environment Variables

- $JAVA_HOME = /usr/lib/jvm/java-7-oracle
