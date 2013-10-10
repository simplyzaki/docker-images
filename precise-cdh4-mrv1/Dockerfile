FROM khanio/precise-oracle-jdk7
MAINTAINER Zakiullah Khan Mohammed "mail@khanio.com"

ADD scripts/setup.sh /setup.sh
RUN sh /setup.sh

ADD confs/supervisor/conf.d/hadoop-0_20-mapreduce-jobtracker.conf /etc//supervisor/conf.d/hadoop-0_20-mapreduce-jobtracker.conf
ADD confs/supervisor/conf.d/hadoop-0_20-mapreduce-tasktracker.conf /etc//supervisor/conf.d/hadoop-0_20-mapreduce-tasktracker.conf
ADD confs/supervisor/conf.d/hadoop-hdfs-datanode.conf /etc//supervisor/conf.d/hadoop-hdfs-datanode.conf
ADD confs/supervisor/conf.d/hadoop-hdfs-namenode.conf /etc//supervisor/conf.d/hadoop-hdfs-namenode.conf
ADD confs/supervisor/conf.d/hadoop-hdfs-secondarynamenode.conf /etc//supervisor/conf.d/hadoop-hdfs-secondarynamenode.conf

EXPOSE 50070 50030
ADD scripts/run.sh /run.sh
CMD ["/bin/sh", "-e", "/run.sh"]