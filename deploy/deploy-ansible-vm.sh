#!/bin/bash

# get env and machine id from vm hostname
NAME=$HOSTNAME
#TEST
#NAME=master1

[[ "$NAME" =~ ([A-Za-z]+)([0-9]*) ]]
env=${BASH_REMATCH[1]}
id=${BASH_REMATCH[2]}

#configure ansible
rm /etc/ansible/hosts
wget -O /etc/ansible/hosts https://raw.githubusercontent.com/bob5ec/docker-infrastructure/$env/deploy/ansible-hosts

#run ansible-pull manually
ansible-pull --extra-vars "env=$env" -U https://github.com/bob5ec/docker-infrastructure.git -C $env vm.yml

######### old #############
#get public key
#mkdir -p /root/.ssh
#chmod 700 /root/.ssh
#wget -O /root/.ssh/authorized_keys https://github.com/bob5ec.keys
#chmod 600 /root/.ssh/authorized_keys
#ansible -i ~/admin/docker-infrastructure/deploy/ansible-hosts localhost -m authorized_key -a "user=lars state=present key=https://github.com/bob5ec.keys"

#let metal do the rest
