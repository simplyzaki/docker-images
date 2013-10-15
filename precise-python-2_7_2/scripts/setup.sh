#!/bin/sh

apt-get -y -f install curl nano supervisor git uuid-dev libtool \
automake pkg-config unzip make build-essential rsync openssh-server \
ssh python-dev python-setuptools python-software-properties libjpeg62 \
libjpeg62-dev libfreetype6 libfreetype6-dev zlib1g-dev libreadline-dev \
libncurses5-dev libpq-dev postgresql-client libmysqlclient-dev

ln -s /usr/lib/x86_64-linux-gnu/libz.so /usr/lib/libz.so
ln -s /usr/lib/x86_64-linux-gnu/libjpeg.so /usr/lib/libjpeg.so
ln -s /usr/lib/x86_64-linux-gnu/libfreetype.so /usr/lib/libfreetype.so
rm -rf /usr/lib/python2.7/dist-packages/PIL

easy_install pip virtualenv readline ipython
pip install virtualenvwrapper PIL