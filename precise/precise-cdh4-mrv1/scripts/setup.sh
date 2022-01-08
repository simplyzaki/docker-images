#!/bin/sh
cd /
wget http://archive.cloudera.com/cdh4/one-click-install/precise/amd64/cdh4-repository_1.0_all.deb
dpkg -i cdh4-repository_1.0_all.deb
curl -s http://archive.cloudera.com/cdh4/ubuntu/precise/amd64/cdh/archive.key | apt-key add -
apt-get update
apt-get -y -f install hadoop-0.20-conf-pseudo
rm cdh4-repository_1.0_all.deb

/etc/init.d/hadoop-hdfs-datanode start
/etc/init.d/hadoop-hdfs-namenode start
/etc/init.d/hadoop-hdfs-secondarynamenode start
/etc/init.d/hadoop-0.20-mapreduce-jobtracker start
/etc/init.d/hadoop-0.20-mapreduce-tasktracker start

su hdfs -c "hdfs namenode -format"

dpkg -L hadoop-0.20-conf-pseudo

/etc/init.d/hadoop-hdfs-datanode restart
/etc/init.d/hadoop-hdfs-namenode restart
/etc/init.d/hadoop-hdfs-secondarynamenode restart

su hdfs -c "hadoop fs -mkdir /tmp"
su hdfs -c "hadoop fs -chmod -R 1777 /tmp"
su hdfs -c "hadoop fs -mkdir -p /var/lib/hadoop-hdfs/cache/mapred/mapred/staging"
su hdfs -c "hadoop fs -chmod 1777 /var/lib/hadoop-hdfs/cache/mapred/mapred/staging"
su hdfs -c "hadoop fs -chown -R mapred /var/lib/hadoop-hdfs/cache/mapred"
su hdfs -c "hadoop fs -ls -R /"

/etc/init.d/hadoop-0.20-mapreduce-jobtracker restart
/etc/init.d/hadoop-0.20-mapreduce-tasktracker restart

su hdfs -c "hadoop fs -mkdir /user/root" 
su hdfs -c "hadoop fs -chown root /user/root"