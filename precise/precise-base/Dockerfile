FROM ubuntu:12.04
MAINTAINER Zakiullah Khan Mohammed "mail@khanio.com"

ADD confs/apt/sources.list /etc/apt/sources.list

ADD scripts/setup.sh /setup.sh
RUN sh /setup.sh

##
# Copy required conf files and folders
##
ADD confs/supervisor/supervisord.conf /etc/supervisor/supervisord.conf
ADD confs/supervisor/conf.d/sshd.conf /etc/supervisor/conf.d/sshd.conf

##
# Expose ports and execute the run script
##
EXPOSE 22
ADD scripts/run.sh /run.sh
CMD ["/bin/sh", "-e", "/run.sh"]