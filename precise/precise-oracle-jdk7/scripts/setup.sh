#!/bin/sh

## Oracle Java setup
add-apt-repository -y  ppa:webupd8team/java
apt-get update
echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections

apt-get -y -f install oracle-java7-installer
apt-get -y -f install oracle-java7-set-default