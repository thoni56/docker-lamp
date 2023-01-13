#!/bin/bash

service mysql start    # For < 22.04
service mariadb start  # For >= 22.04

mkdir -p /etc/ssl/certs
mkdir -p /etc/ssl/private
./generate_certs.sh

a2enmod ssl
a2enconf ssl
service apache2 start

exec "$@"
