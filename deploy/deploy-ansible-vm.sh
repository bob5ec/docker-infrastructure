#!/bin/bash

# get env and machine id from vm hostname
NAME=$HOSTNAME
#TEST
#NAME=test1

[[ "$NAME" =~ ([A-Za-z]+)([0-9]*) ]]
env=${BASH_REMATCH[1]}
id=${BASH_REMATCH[2]}

echo $env > /root/env
#get public key
#mkdir -p /root/.ssh
#chmod 700 /root/.ssh
#wget -O /root/.ssh/authorized_keys https://github.com/bob5ec.keys
#chmod 600 /root/.ssh/authorized_keys
#ansible -i ~/admin/docker-infrastructure/deploy/ansible-hosts localhost -m authorized_key -a "user=lars state=present key=https://github.com/bob5ec.keys"

#let metal do the rest
