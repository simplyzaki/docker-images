#!/bin/sh

cp -f /tmp/hbase/conf/hbase-site.xml /etc/hbase/conf/hbase-site.xml
cp -f /tmp/hbase/conf/hbase-env.sh /etc/hbase/conf/hbase-env.sh

rm -rf /tmp/hbase/conf