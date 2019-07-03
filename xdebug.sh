#!/bin/bash

# Requirements: 
#       ROOT access to the server.

# How to use the script:
#       Download the script as ROOT user, chmod it to 755 and then execute it. Wait for magic to happen :)
#
#       The 'wget' way to do this is:
#       wget https://www.zhaklilo.info/scripts/xdebug.sh && chmod 755 xdebug.sh && ./xdebug.sh
#       And again wait for magic to happen :)

##############################
# * Created by ZhL - Zhak Lilo
# * Date: 07/02/2019
# * Version: 1.0 - initial release
# * Purpose: This script is to ease and automate the
# ** installation of Xdebug for PHP 5.6, 7.0, 7.1, 7.2, 7.3
##############################

for phpver in 70 71 72 73; do

# Let's install Xdebug for PHP 7.0 7.1 7.2 7.3 easy via Pecl

/opt/cpanel/ea-php$phpver/root/usr/bin/pecl install xdebug > /dev/null 2>&1

# Let's verify the installations

echo -n "PHP $phpver: " ; /opt/cpanel/ea-php$phpver/root/usr/bin/php -m | grep xdebug

done;

# Xdebug for PHP 5.6 and lower version of PHP have to be compiled, you can see how to this 
# on their official docs: https://xdebug.org/docs/install
