#!/bin/sh

kdir -p /usr/local/zookeeper
mkdir -p /var/zookeeper
mkdir -p /usr/local/zeromq
mkdir -p /usr/local/pyzmq
mkdir -p /usr/local/jzmq
mkdir -p /usr/local/storm
mkdir -p /var/log/storm
mkdir ~/.storm
mkdir -p /var/storm/tmp

cd /
wget http://www.gtlib.gatech.edu/pub/apache/zookeeper/zookeeper-3.4.5/zookeeper-3.4.5.tar.gz
tar -xvzf zookeeper-3.4.5.tar.gz
rm zookeeper-3.4.5.tar.gz
cp -r zookeeper-3.4.5/* /usr/local/zookeeper
rm -rf zookeeper-3.4.5

cd /
wget http://download.zeromq.org/zeromq-2.1.7.tar.gz
tar -xvzf zeromq-2.1.7.tar.gz
rm zeromq-2.1.7.tar.gz
cp -r zeromq-2.1.7/* /usr/local/zeromq
rm -rf zeromq-2.1.7
cd /usr/local/zeromq
/usr/local/zeromq/configure
make
make install
ldconfig

cd /
wget https://github.com/halfaleague/jzmq/archive/master.tar.gz
tar -xvzf master.tar.gz
rm master.tar.gz
cp -r jzmq-master/* /usr/local/jzmq
rm -rf jzmq-master
cd /usr/local/jzmq
/bin/sh /usr/local/jzmq/autogen.sh
/usr/local/jzmq/configure
make
make install

cd /
wget https://github.com/downloads/nathanmarz/storm/storm-0.8.1.zip
unzip storm-0.8.1.zip
rm storm-0.8.1.zip
cp -r storm-0.8.1/* /usr/local/storm
rm -rf storm-0.8.1
cd /usr/local/storm/bin
chmod +x storm