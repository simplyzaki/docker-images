FROM khanio/precise-python-2_7_2
MAINTAINER Zakiullah Khan Mohammed "mail@khanio.com"

##
# Declare Envirnment variables
##
ENV PROJECTS_HOME /srv/www/
ENV PROJECT_NAME hello

ADD confs/apt/sources.list /etc/apt/sources.list

ADD scripts/setup.sh /setup.sh
RUN sh /setup.sh

##
# Copy required conf files and folders
##
ADD confs/nginx/nginx.conf /etc/nginx/nginx.conf
ADD confs/nginx/sites-enabled/default /etc/nginx/sites-enabled/default
ADD confs/uwsgi/apps-enabled/hello.ini /etc/uwsgi/apps-enabled/hello.ini
ADD confs/supervisor/supervisord.conf /etc/supervisor/supervisord.conf
ADD confs/supervisor/conf.d/nginx.conf /etc/supervisor/conf.d/nginx.conf
ADD confs/supervisor/conf.d/uwsgi.conf /etc/supervisor/conf.d/uwsgi.conf


# Fix all permissions
RUN chown -R www-data:www-data /srv/www;

##
# Expose ports and execute the run script
##
EXPOSE 80:80
ADD scripts/run.sh /run.sh
RUN chmod +x /run.sh
CMD ["/bin/sh", "-e", "/run.sh"]