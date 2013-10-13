#!/bin/sh

curl -L http://debian.datastax.com/debian/repo_key | apt-key add -

apt-get update
apt-get -y -f install libjna-java dsc20 python-cql

ln -s /usr/share/java/jna.jar /usr/share/cassandra/lib

cd /
wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-0.90.5.deb
dpkg -i elasticsearch-0.90.5.deb
rm elasticsearch-0.90.5.deb

mkdir -p /var/data/elasticsearch
chown -R elasticsearch:elasticsearch /var/data/elasticsearch

sh /usr/share/elasticsearch/bin/plugin --install lukas-vlcek/bigdesk
sh /usr/share/elasticsearch/bin/plugin --install mobz/elasticsearch-head
sh /usr/share/elasticsearch/bin/plugin --install elasticsearch/elasticsearch-lang-python/1.2.0

mkdir -p /usr/local/rexster
mkdir -p /var/log/rexster
cd /
wget http://tinkerpop.com/downloads/rexster/rexster-server-2.4.0.zip
unzip rexster-server-2.4.0.zip
rm rexster-server-2.4.0.zip
cp -r rexster-server-2.4.0/* /usr/local/rexster
rm -rf rexster-server-2.4.0
mkdir -p /usr/local/rexster/ext/titan

mkdir -p /usr/local/titan

cd /
wget http://s3.thinkaurelius.com/downloads/titan/titan-all-0.3.2.zip
unzip titan-all-0.3.2.zip
rm titan-all-0.3.2.zip
cp -r titan-all-0.3.2/lib/*.* /usr/local/rexster/ext/titan
cp -r titan-all-0.3.2/* /usr/local/titan
rm -rf titan-all-0.3.2
rm /usr/local/rexster/lib/lucene-core-*