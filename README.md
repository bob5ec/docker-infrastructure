## Docker Infrastructure

[![Build Status Master](https://travis-ci.org/bob5ec/docker-infrastructure.svg?branch=master)](https://travis-ci.org/bob5ec/docker-infrastructure)

This project provides a default infrastructure to host a dev, qa, prod docker envirounment on bare mettale.

### Install
The installation of the full stack on a hardware host is started in three steps:
1. Download a [Debian 9 install medium](https://www.debian.org/distrib/netinst) and start it
2. Hit escape key
3. Type install `auto=true priority=critical preseed/url=https://raw.githubusercontent.com/bob5ec/docker-infrastructure/master/deploy/hardware.preseed`


We use [test-kitchen](https://github.com/test-kitchen/test-kitchen) to run tests that work within docker to test the setup before actual deployment. Sadly creating VMs requires a physical installation to test on.
