FROM khanio/precise-oracle-jdk7
MAINTAINER Zakiullah Khan Mohammed "mail@khanio.com"

ADD confs/apt/sources.list.d/cassandra.sources.list /etc/apt/sources.list.d/cassandra.sources.list

ADD scripts/setup.sh /setup.sh
RUN sh /setup.sh

ADD confs/supervisor/conf.d/cassandra.conf /etc/supervisor/conf.d/cassandra.conf
ADD confs/elasticsearch/elasticsearch.yml /etc/elasticsearch/elasticsearch.yml
ADD confs/rexster/rexster.xml /usr/local/rexster/config/rexster.xml
ADD confs/rexster/rexster-service.sh /usr/local/rexster/bin/rexster-service.sh
ADD confs/supervisor/conf.d/elasticsearch.conf /etc/supervisor/conf.d/elasticsearch.conf
ADD confs/supervisor/conf.d/rexster-server.conf /etc/supervisor/conf.d/rexster-server.conf


EXPOSE 9160 9200 8182:8182
ADD scripts/run.sh /run.sh
CMD ["/bin/sh", "-e", "/run.sh"]