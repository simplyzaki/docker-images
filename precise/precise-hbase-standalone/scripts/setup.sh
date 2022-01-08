#!/bin/sh

mkdir -p /var/data/hbase
mkdir -p /var/data/zookeeper

mkdir -p /usr/local/hbase
mkdir -p /var/log/hbase

cd /
wget http://mirror.tcpdiag.net/apache/hbase/stable/hbase-0.94.12.tar.gz
tar -xvzf hbase-0.94.12.tar.gz
rm hbase-0.94.12.tar.gz
cp -r hbase-0.94.12/* /usr/local/hbase
rm -rf hbase-0.94.12
