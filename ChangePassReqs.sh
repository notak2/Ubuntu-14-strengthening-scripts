#!/bin/bash

##changes password expiration requirements
echo "PASS_MIN_DAYS 7
PASS_MAX_DAYS 90
PASS_WARN_AGE 14" >> /etc/login.defs

gedit /etc/login.defs

##changes password requirements
sed -i 's/pam_unix.so/pam_unix.so minlen=8 remember=5/g' /etc/pam.d/common-password

apt-get install libpam-cracklib

sed -i 's/pam.cracklib.so/pam.cracklib.so ucredit=-1 lcredit=-1 dcredit=-1 ocredit=-1/g' /etc/pam.d/common-password

gedit /etc/pam.d/common-password
