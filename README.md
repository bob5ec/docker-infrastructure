## Docker Infrastructure

[![Build Status Master](https://travis-ci.org/bob5ec/docker-infrastructure.svg?branch=master)](https://travis-ci.org/bob5ec/docker-infrastructure)

This project provides a default infrastructure to host a dev, qa, prod docker envirounment on bare mettale.

We use [test-kitchen](https://github.com/test-kitchen/test-kitchen) to run tests that work within docker to test the setup before actual deployment. Sadly creating VMs requires a physical installation to test on.
