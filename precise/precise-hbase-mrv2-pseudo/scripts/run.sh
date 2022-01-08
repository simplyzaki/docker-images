#!/bin/sh
/usr/bin/supervisord
/usr/bin/supervisorctl restart hbase-master
/usr/bin/supervisorctl restart hbase-regionserver hbase-rest hbase-thrift
