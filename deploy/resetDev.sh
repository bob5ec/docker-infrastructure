#!/bin/bash
cd /var/lib/libvirt/images
rm dev*
# prod* qa*
virsh destroy dev1
#virsh destroy qa1
#virsh destroy prod1
virsh undefine dev1
#virsh undefine qa1
#virsh undefine prod1
