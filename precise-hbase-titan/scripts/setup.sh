#!/bin/sh
cd /
wget http://archive.cloudera.com/cdh4/one-click-install/precise/amd64/cdh4-repository_1.0_all.deb
dpkg -i cdh4-repository_1.0_all.deb
curl -s http://archive.cloudera.com/cdh4/ubuntu/precise/amd64/cdh/archive.key | apt-key add -
apt-get update
apt-get -y -f install hadoop-conf-pseudo zookeeper-server
rm cdh4-repository_1.0_all.deb

/etc/init.d/hadoop-hdfs-datanode start
/etc/init.d/hadoop-hdfs-namenode start
/etc/init.d/hadoop-hdfs-secondarynamenode start
/etc/init.d/hadoop-yarn-resourcemanager start
/etc/init.d/hadoop-yarn-nodemanager start
/etc/init.d/hadoop-mapreduce-historyserver start

su hdfs -c "hdfs namenode -format"

dpkg -L hadoop-conf-pseudo

/etc/init.d/hadoop-hdfs-datanode restart
/etc/init.d/hadoop-hdfs-namenode restart
/etc/init.d/hadoop-hdfs-secondarynamenode restart

su hdfs -c "hadoop fs -mkdir /tmp"
su hdfs -c "hadoop fs -chmod -R 1777 /tmp"
su hdfs -c "hadoop fs -mkdir -p /tmp/hadoop-yarn/staging"
su hdfs -c "hadoop fs -mkdir /tmp/hadoop-yarn/staging/history/done_intermediate" 
su hdfs -c "hadoop fs -chmod -R 1777 /tmp/hadoop-yarn/staging/history/done_intermediate"
su hdfs -c "hadoop fs -chown -R mapred:mapred /tmp/hadoop-yarn/staging"
su hdfs -c "hadoop fs -mkdir /var/log/hadoop-yarn"
su hdfs -c "hadoop fs -chown yarn:mapred /var/log/hadoop-yarn"
su hdfs -c "hadoop fs -ls -R /"

/etc/init.d/hadoop-yarn-resourcemanager restart
/etc/init.d/hadoop-yarn-nodemanager restart
/etc/init.d/hadoop-mapreduce-historyserver restart

su hdfs -c "hadoop fs -mkdir /user/root"
su hdfs -c "hadoop fs -chown root /user/root"

mkdir -p /var/log/hbase

apt-get -y -f install hbase hbase-master hbase-regionserver hbase-rest hbase-thrift

/etc/init.d/zookeeper-server init

mkdir -p /tmp/hbase/conf

su hdfs -c "hadoop fs -mkdir /hbase"
su hdfs -c "hadoop fs -chown hbase /hbase"

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