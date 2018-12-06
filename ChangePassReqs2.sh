#!/bin/bash

##changes password requirements
sed -i 's/pam_unix.so/pam_unix.so minlen=8 remember=5/g' /etc/pam.d/common-password

apt-get install libpam-cracklib

sed -i 's/pam.cracklib.so/pam.cracklib.so ucredit=-1 lcredit=-1 dcredit=-1 ocredit=-1/g' /etc/pam.d/common-password

gedit /etc/pam.d/common-password
