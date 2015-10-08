#!/usr/bin/env bash

apt-get -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" install mariadb-server