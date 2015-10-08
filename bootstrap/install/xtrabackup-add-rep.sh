#!/usr/bin/env bash

apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 1C4CBDCDCD2EFD2A
add-apt-repository 'deb http://repo.percona.com/apt trusty main'
echo 'Package: *
Pin: release o=Percona Development Team
Pin-Priority: 100' > /etc/apt/preferences.d/00percona.pref