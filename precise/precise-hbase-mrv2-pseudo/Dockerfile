FROM khanio/precise-oracle-jdk7
MAINTAINER Zakiullah Khan Mohammed "mail@khanio.com"

ADD scripts/setup.sh /setup.sh
RUN sh /setup.sh

ENV HADOOP_MAPRED_HOME /usr/lib/hadoop-mapreduce

ADD confs/supervisor/conf.d/hadoop-hdfs-datanode.conf /etc//supervisor/conf.d/hadoop-hdfs-datanode.conf
ADD confs/supervisor/conf.d/hadoop-hdfs-namenode.conf /etc//supervisor/conf.d/hadoop-hdfs-namenode.conf
ADD confs/supervisor/conf.d/hadoop-hdfs-secondarynamenode.conf /etc//supervisor/conf.d/hadoop-hdfs-secondarynamenode.conf
ADD confs/supervisor/conf.d/hadoop-mapreduce-historyserver.conf /etc//supervisor/conf.d/hadoop-mapreduce-historyserver.conf
ADD confs/supervisor/conf.d/hadoop-yarn-nodemanager.conf /etc//supervisor/conf.d/hadoop-yarn-nodemanager.conf
ADD confs/supervisor/conf.d/hadoop-yarn-resourcemanager.conf /etc//supervisor/conf.d/hadoop-yarn-resourcemanager.conf

ADD confs/hbase/conf/hbase-env.sh /tmp/hbase/conf/hbase-env.sh
ADD confs/hbase/conf/hbase-site.xml /tmp/hbase/conf/hbase-site.xml
ADD confs/supervisor/conf.d/hbase-master.conf /etc/supervisor/conf.d/hbase-master.conf
ADD confs/supervisor/conf.d/hbase-regionserver.conf /etc/supervisor/conf.d/hbase-regionserver.conf
ADD confs/supervisor/conf.d/hbase-rest.conf /etc/supervisor/conf.d/hbase-rest.conf
ADD confs/supervisor/conf.d/hbase-thrift.conf /etc/supervisor/conf.d/hbase-thrift.conf
ADD confs/supervisor/conf.d/zookeeper-server.conf /etc/supervisor/conf.d/zookeeper-server.conf

ADD scripts/setup2.sh /setup2.sh
RUN sh /setup2.sh

EXPOSE 50070 60010 60050 9090
ADD scripts/run.sh /run.sh
CMD ["/bin/sh", "-e", "/run.sh"]