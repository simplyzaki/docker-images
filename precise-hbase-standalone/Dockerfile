FROM khanio/precise-oracle-jdk7
MAINTAINER Zakiullah Khan Mohammed "mail@khanio.com"

ADD scripts/setup.sh /setup.sh
RUN sh /setup.sh

ADD confs/hbase/conf/hbase-env.sh /usr/local/hbase/conf/hbase-env.sh
ADD confs/hbase/conf/hbase-site.xml /usr/local/hbase/conf/hbase-site.xml
ADD confs/supervisor/conf.d/hbase.conf /etc/supervisor/conf.d/hbase.conf
ADD confs/supervisor/conf.d/hbase-rest.conf /etc/supervisor/conf.d/hbase-rest.conf
ADD confs/supervisor/conf.d/hbase-thrift.conf /etc/supervisor/conf.d/hbase-thrift.conf

EXPOSE 60010 60050 9090
ADD scripts/run.sh /run.sh
CMD ["/bin/sh", "-e", "/run.sh"]