#!/bin/sh

curl -L http://debian.datastax.com/debian/repo_key | apt-key add -

apt-get update
apt-get -y -f install libjna-java dsc20 python-cql

ln -s /usr/share/java/jna.jar /usr/share/cassandra/lib