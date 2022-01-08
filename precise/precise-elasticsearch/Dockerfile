FROM khanio/precise-oracle-jdk7
MAINTAINER Zakiullah Khan Mohammed "mail@khanio.com"

ADD scripts/setup.sh /setup.sh
RUN sh /setup.sh

ADD confs/elasticsearch/elasticsearch.yml /etc/elasticsearch/elasticsearch.yml
ADD confs/supervisor/conf.d/elasticsearch.conf /etc/supervisor/conf.d/elasticsearch.conf

EXPOSE 9200
ADD scripts/run.sh /run.sh
CMD ["/bin/sh", "-e", "/run.sh"]