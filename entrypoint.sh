#!/bin/bash

service mysql start    # For < 22.04
service mariadb start  # For >= 22.04
apachectl -D FOREGROUND
