#!/bin/bash
mkdir /opt/redis
mkdir /opt/redis/bin

cd /opt/redis
wget http://redis.googlecode.com/files/redis-2.6.7.tar.gz
tar xzf redis-2.6.7.tar.gz

cd redis-2.6.7
make

cp src/redis-server /opt/redis/bin/redis-server
cp src/redis-cli /opt/redis/bin/redis-cli

cp /vagrant/redis.init.d /etc/init.d/redis
cp /vagrant/redis.conf /etc/redis.conf

mkdir /var/redis
chmod -R 777 /var/redis

useradd redis

/etc/init.d/redis start