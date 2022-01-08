#!/bin/sh

cd /
wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-0.90.5.deb
dpkg -i elasticsearch-0.90.5.deb
rm elasticsearch-0.90.5.deb

mkdir -p /var/data/elasticsearch
chown -R elasticsearch:elasticsearch /var/data/elasticsearch

sh /usr/share/elasticsearch/bin/plugin --install lukas-vlcek/bigdesk
sh /usr/share/elasticsearch/bin/plugin --install mobz/elasticsearch-head
sh /usr/share/elasticsearch/bin/plugin --install elasticsearch/elasticsearch-lang-python/1.2.0