#!/bin/sh
cd /
wget http://archive.cloudera.com/cdh4/one-click-install/precise/amd64/cdh4-repository_1.0_all.deb
dpkg -i cdh4-repository_1.0_all.deb
curl -s http://archive.cloudera.com/cdh4/ubuntu/precise/amd64/cdh/archive.key | apt-key add -
apt-get update
apt-get -y -f install hbase hbase-master hbase-rest
rm cdh4-repository_1.0_all.deb

# mkdir -p /var/data/hbase
# mkdir -p /var/data/zookeeper

# /etc/init.d/hbase-master stop
# /etc/init.d/hbase-rest stop

# rm -f /etc/hbase/conf/hbase-env.sh
# rm -f /etc/hbase/conf/hbase-site.xml