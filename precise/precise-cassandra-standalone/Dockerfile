FROM khanio/precise-oracle-jdk7
MAINTAINER Zakiullah Khan Mohammed "mail@khanio.com"

ADD confs/apt/sources.list.d/cassandra.sources.list /etc/apt/sources.list.d/cassandra.sources.list

ADD scripts/setup.sh /setup.sh
RUN sh /setup.sh

ADD confs/supervisor/conf.d/cassandra.conf /etc/supervisor/conf.d/cassandra.conf

EXPOSE 9160
ADD scripts/run.sh /run.sh
CMD ["/bin/sh", "-e", "/run.sh"]