#!/usr/bin/env bash

sed -i 's/vagrant-ubuntu-trusty-64/master/' /etc/hostname
echo 'master' > /proc/sys/kernel/hostname

export DEBIAN_FRONTEND=noninteractive

chmod -R 755 /vagrant/bootstrap/install

/vagrant/bootstrap/install/main.sh

mysql -uroot < /vagrant/master/sql/db-seed.sql

ln -s /vagrant/master/conf/mariadb/replication.cnf /etc/mysql/conf.d/replication.cnf
chmod 755 /vagrant/master/conf/mariadb/replication.cnf
service msyql restart

mysql -uroot < /vagrant/master/sql/replication.sql