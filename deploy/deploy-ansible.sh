#!/bin/bash
apt-get install ansible
ansible-pull -U https://github.com/bob5ec/docker-infrastructure.git -C neo -o test/integration/default/default.yml
