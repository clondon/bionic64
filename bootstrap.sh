#!/usr/bin/env bash

apt-get  update
apt-get install -y php
apt-get install -y apache2
apt-get install -y mariadb-server
apt-get install -y php7.2
apt-get install -y php7.2-mysql
if ! [ -L /var/www ]; then
  rm -rf /var/www
  ln -fs /vagrant /var/www
fi