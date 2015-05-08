#!/bin/bash
mkdir /opt/redis
mkdir /opt/redis/bin
cd /opt/redis

wget http://download.redis.io/redis-stable.tar.gz
tar xvzf redis-stable.tar.gz
cd redis-stable
make

cp src/redis-server /opt/redis/bin/redis-server
cp src/redis-cli /opt/redis/bin/redis-cli

cp /vagrant/redis.init.d /etc/init.d/redis
cp /vagrant/redis.conf /etc/redis.conf

mkdir /var/redis
chmod -R 777 /var/redis

useradd redis

chmod 755 /etc/init.d/redis
/etc/init.d/redis start
