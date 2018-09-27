#!/bin/bash
cd /etc
#TODO set branch master when releaseing
git clone https://github.com/bob5ec/docker-infrastructure.git
rm /etc/ansible/hosts
ln -s /etc/docker-infrastructure/deploy/ansible-hosts /etc/ansible/hosts
ansible-galaxy install -r docker-infrastructure/requirements.yml
cd docker-infrastructure
ansible-playbook default.yml
ansible-playbook hardware.yml

#old
#ansible-pull -U https://github.com/bob5ec/docker-infrastructure.git -C master default.yml
#ansible-pull -U https://github.com/bob5ec/docker-infrastructure.git -C master hardware.yml
