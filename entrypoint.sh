#!/bin/bash

service mysql start    # For < 22.04
service mariadb start  # For >= 22.04

service apache2 start

exec "$@"
