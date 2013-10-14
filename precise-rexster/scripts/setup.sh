#!/bin/sh

mkdir -p /usr/local/rexster
mkdir -p /var/log/rexster
cd /
wget http://tinkerpop.com/downloads/rexster/rexster-server-2.4.0.zip
unzip rexster-server-2.4.0.zip
rm rexster-server-2.4.0.zip
cp -r rexster-server-2.4.0/* /usr/local/rexster
rm -rf rexster-server-2.4.0