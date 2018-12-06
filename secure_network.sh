#!/bin/bash

##enables firewall
ufw enable

##enables syn cookie protection
sysctl -n net.ipv4.tcp_syncookies

##Disable IP forwarding
echo 0 > /proc/sys/net/ipv4/ip_forward

##Prevent IP Spoofing
echo "nospoof on" >> /etc/host.conf
