FROM khanio/precise-oracle-jdk7
MAINTAINER Zakiullah Khan Mohammed "mail@khanio.com"

ADD scripts/setup.sh /setup.sh
RUN sh /setup.sh

ENV SCALA_HOME /usr/local/scala
ENV PATH $PATH:$SCALA_HOME/bin