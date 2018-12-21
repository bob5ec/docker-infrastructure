#!/bin/bash
git pull
#echo localhost > /tmp/ansible_hosts
#ansible-playbook hardware.yml -i /tmp/ansible_hosts --connection=local
env=dev
ansible-pull --extra-vars "env=$env playbook=hardware" -U https://github.com/bob5ec/docker-infrastructure.git -C $env hardware.yml
