FROM khanio/precise-oracle-jdk7
MAINTAINER Zakiullah Khan Mohammed "mail@khanio.com"

ADD scripts/setup.sh /setup.sh
RUN sh /setup.sh

ADD confs/rexster/rexster-service.sh /usr/local/rexster/bin/rexster-service.sh
ADD confs/supervisor/conf.d/rexster-server.conf /etc/supervisor/conf.d/rexster-server.conf


EXPOSE 8182:8182
ADD scripts/run.sh /run.sh
CMD ["/bin/sh", "-e", "/run.sh"]