#!/usr/bin/env bash

apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xcbcb082a1bb943db
add-apt-repository 'deb http://mirror.timeweb.ru/mariadb/repo/10.0/ubuntu trusty main'