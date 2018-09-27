## Docker Infrastructure

[![Build Status Master](https://travis-ci.org/bob5ec/docker-infrastructure.svg?branch=master)](https://travis-ci.org/bob5ec/docker-infrastructure)

This project provides an infrastructure to host three environments dev, qa, prod. Each is running three Core OS machines with etcd and docker swarm. All this is installed on bare metal using Debian preseed.

### Install
The installation of the full stack on a hardware host is started in three steps:
1. Download a [Debian 9 install medium](https://www.debian.org/distrib/netinst) and start it
2. Go to `Advanced options ...`
3. ... Automated install
4. Hit `e` and add to the line that contains the parameters `auto=true priority=critical` the parameter `preseed/url=https://raw.githubusercontent.com/bob5ec/docker-infrastructure/master/deploy/hardware.preseed`
5. Hit `F10` to start the installation

During partitioning you might get asked if you want to force UEFI boot. It is save to say yes.

### Development
If you want to try the development version use change step 4 of the installation to
4. `preseed/url=https://raw.githubusercontent.com/bob5ec/docker-infrastructure/dev/deploy/hardware.preseed`

We use [test-kitchen](https://github.com/test-kitchen/test-kitchen) to run tests that work within docker to test the setup before actual deployment. Sadly creating VMs requires a physical installation to test on.
