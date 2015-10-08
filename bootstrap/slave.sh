#!/usr/bin/env bash

sed -i 's/vagrant-ubuntu-trusty-64/slave/' /etc/hostname
echo 'slave' > /proc/sys/kernel/hostname

export DEBIAN_FRONTEND=noninteractive

chmod -R 755 /vagrant/bootstrap/install

/vagrant/bootstrap/install/main.sh

ln -s /vagrant/slave/conf/mariadb/replication.cnf /etc/mysql/conf.d/replication.cnf
chmod 755 /vagrant/slave/conf/mariadb/replication.cnf
service msyql restart