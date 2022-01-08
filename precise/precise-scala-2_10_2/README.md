### Introduction

A base image based on ubuntu:12.04 with Oracle JDK 7 installed, Scala 2.10.2 and SBT 0.12.4. Supervisor and OpenSSH server has been pre-installed in this image.

### Usage

##### From Docker Public Repository

	> docker pull khanio/precise-scala-2_10_2

##### Using Source

	> git clone git@github.com:khanio/docker-images.git
	> cd docker-images/precise-scala-2_10_2
	> docker build -rm -t {{ user }}/{{ image-name }} .

**{{ user }}** and **{{ image-name }}** are to be defined by you. Refer Docker.io documentation for how to build images using Dockerfile.

### Login Details

- root / root
- ubuntu / ubuntu

### Installed Packages

curl python-software-properties nano supervisor git uuid-dev libtool automake pkg-config unzip make build-essential rsync openssh-server ssh oracle-java7-installer oracle-java7-set-default sbt scala

### Configured Services & Ports

- supervisord / -
- sshd / 22

### Environment Variables

- $JAVA_HOME  = /usr/lib/jvm/java-7-oracle
- $SCALA_HOME = /usr/local/scala