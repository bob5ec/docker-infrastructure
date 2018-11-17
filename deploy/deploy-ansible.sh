#!/bin/bash

env=$1
ansible_group=$2
# use git repository for initial config
cd /etc
git clone https://github.com/bob5ec/docker-infrastructure.git -b $env

#rm /etc/ansible/hosts
#ln -s /etc/docker-infrastructure/deploy/ansible-hosts-$2 /etc/ansible/hosts
#ansible-galaxy install -r docker-infrastructure/requirements.yml
#cd docker-infrastructure
#ansible-playbook deploy.yml
#ansible-playbook default.yml
#ansible-playbook hardware.yml

#configure ansible
echo "[$ansible_group]" > /etc/ansible/hosts
echo "localhost  ansible_connection=local" >> /etc/ansible/hosts
#TODO move to deploy
ansible-galaxy install -r /etc/docker-infrastructure/requirements.yml

#run ansible-pull manually
ansible-pull --extra-vars "env=$env, playbook=hardware" -U https://github.com/bob5ec/docker-infrastructure.git -C $env deploy.yml

#old
#ansible-pull -U https://github.com/bob5ec/docker-infrastructure.git -C master default.yml
#ansible-pull -U https://github.com/bob5ec/docker-infrastructure.git -C master hardware.yml
