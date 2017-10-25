#!/bin/bash
cd /tmp
git clone https://github.com/bob5ec/docker-infrastructure.git
ansible-galaxy install -r docker-infrastructure/requirements.yml
echo localhost > hosts
cd docker-infrastructure
ansible-playbook default.yml --check -i ../hosts --connection=local
ansible-playbook hardware.yml --check -i ../hosts --connection=local

#old
#ansible-pull -U https://github.com/bob5ec/docker-infrastructure.git -C master default.yml
#ansible-pull -U https://github.com/bob5ec/docker-infrastructure.git -C master hardware.yml
