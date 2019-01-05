#!/bin/bash
git pull
#echo localhost > /tmp/ansible_hosts
#ansible-playbook hardware.yml -i /tmp/ansible_hosts --connection=local
export ANSIBLE_STRATEGY=debug
env=dev
ansible-pull -v --extra-vars "deploy_env=$env deploy_playbook=hardware.yml" -U https://github.com/bob5ec/docker-infrastructure.git -C $env hardware.yml
