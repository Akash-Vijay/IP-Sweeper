#!/bin/bash

<<COMMENT

* Creator       :  Akash Vijay
* Description   :  Script to find all active IP Addresses in a network
* Version       :  1.0

COMMENT


for ip in `seq 1 254`;do
ping $1.$ip -c 1 | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
done