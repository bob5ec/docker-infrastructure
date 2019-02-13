## Docker Infrastructure

[![Build Status Master](https://travis-ci.org/bob5ec/docker-infrastructure.svg?branch=master)](https://travis-ci.org/bob5ec/docker-infrastructure)

This project provides infrastructure as code to install three docker environments (dev, qa, prod) on bare metal hardware. Each environment is running a virtual machine with docker-compose running inside. All this is installed on bare metal using Debian preseed, ansible, and docker-compose.

### Install
To install the stack on a hardware host perform the following steps:
1. Download a [Debian 9 install medium](https://www.debian.org/distrib/netinst) and start it (not in UEFI-Mode to avoid an eror message)
2. Go to `Advanced options`
3. Focus `Automated install` and press TAB key to edit the boot options
4. Add to the line that contains the parameters `auto=true priority=critical` the parameter `preseed/url=https://raw.githubusercontent.com/bob5ec/docker-infrastructure/prod/deploy/hardware.preseed`
5. Hit `Enter` to start the installation

During partitioning you might get asked if you want to force UEFI boot. It is save to say yes.

### Development
If you want to try the development version use change step 4 of the installation to
4. `preseed/url=https://raw.githubusercontent.com/bob5ec/docker-infrastructure/dev/deploy/hardware.preseed`

We use [test-kitchen](https://github.com/test-kitchen/test-kitchen) to run tests that work within docker to test the setup before actual deployment. Sadly creating VMs requires a physical installation to test on.

### Release instruction
To release a new version go to `deploy/hardware.preseed` and `deploy/deploy-ansible.sh` search for TODO and set the branch to prod
