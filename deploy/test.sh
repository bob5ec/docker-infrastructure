#!/bin/bash
git pull
echo localhost > /tmp/ansible_hosts
ansible-playbook hardware.yml -i /tmp/ansible_hosts --connection=local
