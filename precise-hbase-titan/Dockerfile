FROM khanio/precise-oracle-jdk7
MAINTAINER Zakiullah Khan Mohammed "mail@khanio.com"

ADD scripts/setup.sh /setup.sh
RUN sh /setup.sh

ENV HADOOP_MAPRED_HOME /usr/lib/hadoop-mapreduce

ADD confs /tmp/confs
ADD confs/hbase/conf/hbase-env.sh /tmp/hbase/conf/hbase-env.sh
ADD confs/hbase/conf/hbase-site.xml /tmp/hbase/conf/hbase-site.xml

ADD scripts/setup2.sh /setup2.sh
RUN sh /setup2.sh

EXPOSE 50070 60010 60050 9090 9200 8182:8182
ADD scripts/run.sh /run.sh
CMD ["/bin/sh", "-e", "/run.sh"]