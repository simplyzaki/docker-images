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

EXPOSE 50070
ADD scripts/run.sh /run.sh
CMD ["/bin/sh", "-e", "/run.sh"]