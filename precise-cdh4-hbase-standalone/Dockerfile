FROM khanio/precise-oracle-jdk7
MAINTAINER Zakiullah Khan Mohammed "mail@khanio.com"

ADD scripts/setup.sh /setup.sh
RUN sh /setup.sh

# ADD confs/hbase/conf/hbase-env.sh /etc/hbase/conf/hbase-env.sh
# ADD confs/hbase/conf/hbase-site.xml /etc/hbase/conf/hbase-site.xml
ADD confs/supervisor/conf.d/hbase-master.conf /etc/supervisor/conf.d/hbase-master.conf
ADD confs/supervisor/conf.d/hbase-rest.conf /etc/supervisor/conf.d/hbase-rest.conf

EXPOSE 60010 60050
ADD scripts/run.sh /run.sh
CMD ["/bin/sh", "-e", "/run.sh"]