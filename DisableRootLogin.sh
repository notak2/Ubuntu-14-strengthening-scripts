#!/bin/bash

##disables root login
echo "PermitRootLogin no" >> /etc/ssh/ssh_config

gedit /etc/ssh/ssh_config
