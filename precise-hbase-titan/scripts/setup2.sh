#!/bin/sh

cp -f /tmp/hbase/conf/hbase-site.xml /etc/hbase/conf/hbase-site.xml
cp -f /tmp/hbase/conf/hbase-env.sh /etc/hbase/conf/hbase-env.sh

rm -rf /tmp/hbase/conf


cp /tmp/confs/supervisor/conf.d/hadoop-hdfs-datanode.conf /etc//supervisor/conf.d/hadoop-hdfs-datanode.conf
cp /tmp/confs/supervisor/conf.d/hadoop-hdfs-namenode.conf /etc//supervisor/conf.d/hadoop-hdfs-namenode.conf
cp /tmp/confs/supervisor/conf.d/hadoop-hdfs-secondarynamenode.conf /etc//supervisor/conf.d/hadoop-hdfs-secondarynamenode.conf
cp /tmp/confs/supervisor/conf.d/hadoop-mapreduce-historyserver.conf /etc//supervisor/conf.d/hadoop-mapreduce-historyserver.conf
cp /tmp/confs/supervisor/conf.d/hadoop-yarn-nodemanager.conf /etc//supervisor/conf.d/hadoop-yarn-nodemanager.conf
cp /tmp/confs/supervisor/conf.d/hadoop-yarn-resourcemanager.conf /etc//supervisor/conf.d/hadoop-yarn-resourcemanager.conf

cp /tmp/confs/supervisor/conf.d/hbase-master.conf /etc/supervisor/conf.d/hbase-master.conf
cp /tmp/confs/supervisor/conf.d/hbase-regionserver.conf /etc/supervisor/conf.d/hbase-regionserver.conf
cp /tmp/confs/supervisor/conf.d/hbase-rest.conf /etc/supervisor/conf.d/hbase-rest.conf
cp /tmp/confs/supervisor/conf.d/hbase-thrift.conf /etc/supervisor/conf.d/hbase-thrift.conf
cp /tmp/confs/supervisor/conf.d/zookeeper-server.conf /etc/supervisor/conf.d/zookeeper-server.conf
cp /tmp/confs/elasticsearch/elasticsearch.yml /etc/elasticsearch/elasticsearch.yml
cp /tmp/confs/rexster/rexster.xml /usr/local/rexster/config/rexster.xml
cp /tmp/confs/rexster/rexster-service.sh /usr/local/rexster/bin/rexster-service.sh
cp /tmp/confs/supervisor/conf.d/elasticsearch.conf /etc/supervisor/conf.d/elasticsearch.conf
cp /tmp/confs/supervisor/conf.d/rexster-server.conf /etc/supervisor/conf.d/rexster-server.conf

rm -rf /tmp/confs