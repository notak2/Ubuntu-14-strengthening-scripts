#!/bin/bash

##changes password expiration requirements
echo "PASS_MIN_DAYS 7
PASS_MAX_DAYS 90
PASS_WARN_AGE 14" >> /etc/login.defs
