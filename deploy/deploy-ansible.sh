#!/bin/bash

env=$1
ansible_group=$2
# DEPRECATED: use git repository for initial config
cd /etc
git clone https://github.com/bob5ec/docker-infrastructure.git -b $env
#TODO instll via ansible deploy playbook
ansible-galaxy install -r /etc/docker-infrastructure/requirements.yml

#configure ansible
echo "[$ansible_group]" > /etc/ansible/hosts
echo "localhost  ansible_connection=local" >> /etc/ansible/hosts

#run ansible-pull manually
ansible-pull --extra-vars "deploy_env=$env deploy_playbook=hardware" -U https://github.com/bob5ec/docker-infrastructure.git -C $env deploy.yml
