#!/usr/bin/env bash

/vagrant/bootstrap/install/common.sh

/vagrant/bootstrap/install/python-software-properties.sh

/vagrant/bootstrap/install/mariadb-add-rep.sh
/vagrant/bootstrap/install/xtrabackup-add-rep.sh

apt-get update
/vagrant/bootstrap/install/mariadb.sh
/vagrant/bootstrap/install/xtrabackup.sh