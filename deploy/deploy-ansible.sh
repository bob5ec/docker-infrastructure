#!/bin/bash
#apt-get install ansible
ansible-pull -U https://github.com/bob5ec/docker-infrastructure.git -C master -o default.yml
ansible-pull -U https://github.com/bob5ec/docker-infrastructure.git -C master -o hardware.yml
