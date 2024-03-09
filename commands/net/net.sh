#!/bin/bash

echo "SimonSecPiOS Networking Ultility"

echo "1. Get All Available IP Address"

read -p "Choose menu : " menu_chosen

if [ "$menu_chosen" == "1" ]
then
 echo "IPv4 Address(es)"
 ip -4 addr show eth0 | grep -oP '(?<=inet\s)\d+(\.\d+){3}'
 echo "IPv6 Address(es)"
 ip -6 addr | grep -oP '(?<=inet6\s)[\da-f:]+'
fi


