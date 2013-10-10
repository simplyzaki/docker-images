#!/bin/sh

cd /usr/local/
wget http://scala-lang.org/files/archive/scala-2.10.2.tgz
tar zxvf scala-2.10.2.tgz
rm scala-2.10.2.tgz
mv /usr/local/scala-2.10.2 /usr/local/scala

wget http://repo.scala-sbt.org/scalasbt/sbt-native-packages/org/scala-sbt/sbt/0.12.4/sbt.deb
dpkg -i sbt.deb
rm sbt.deb
