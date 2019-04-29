#!/bin/bash

LOGDIR=$1
MY_IP=$(ip addr show dev eth0 scope global | grep inet | awk -F'[/ ]' '{print $6}')

echo ""
echo "-------------------------------------------------"
echo " Server is running "
echo "-------------------------------------------------"
echo " - IP........:" ${MY_IP}
echo " - Port......: 8080"
echo " - Log File..:" $LOGDIR/${MY_IP}.log

/opt/webserver/webserver.py 2> $LOGDIR/${MY_IP}.log
