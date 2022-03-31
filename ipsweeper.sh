#!/bin/bash

<<COMMENT

* Creator       :  Akash Vijay
* Description   :  Script to find all active IP Addresses in a network
* Version       :  1.1

COMMENT


if ["$1" == ""]
then
echo ""
echo "Invalid Synatx   "
echo "Expected Synatx  : ./ipsweeper.sh {First 3 section of IP Address}"
echo "Sample Syntax    : ./ipsweeper.sh 192.168.72"

else
for ip in `seq 1 254`;do
ping $1.$ip -c 1 | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
done
fi
