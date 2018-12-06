#!/bin/bash

##disables root login
echo "PermitRootLogin no" >> /etc/ssh/ssh_config

gedit /etc/ssh/ssh_config

##disables guest login
echo "allow-guest=false" >> /etc/lightdm.conf

##restarts lightdm
sudo restart lightdm
