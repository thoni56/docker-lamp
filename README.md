# LAMP in a Docker

LAMP (Linux, Apache, MySQL, PHP) is a common setup for building
websites and web-apps.

It's a chore to set this up natively, and it might interfere with your
actual installation, so along comes Docker...

This repo contains a Makefile that creates Docker images for your
selection on Ubuntu and PHP versions. (Apache and MySQL, actually
MariaDB) will be the lastest available for the Ubuntu version, as the
version of those are rarely a problem.)

If you just do

    make

all supported combinations of Ubuntu and PHP versions are built as
Docker images.

You can also do

    make jammy-8.1

to get a Docker image named `lamp` and tagged with `jammy-8.1`,
containing, of course, Ubuntu jammy (22.04) with PHP 8.1.

Tweak the `Makefile` to get your unique combination.
