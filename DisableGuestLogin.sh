#!/bin/bash

##disables guest login
echo "allow-guest=false" >> /etc/lightdm.conf

##restarts lightdm
sudo restart lightdm
