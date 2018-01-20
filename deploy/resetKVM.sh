#!/bin/bash
cd /var/lib/libvirt/images
dev* prod* qa*
virsh destroy dev1
virsh destroy dev2
virsh destroy dev3
virsh destroy qa1
virsh destroy qa2
virsh destroy qa3
virsh destroy prod1
virsh destroy prod2
virsh destroy prod3
virsh undefine dev1
virsh undefine dev2
virsh undefine dev3
virsh undefine qa1
virsh undefine qa2
virsh undefine qa3
virsh undefine prod1
virsh undefine prod2
virsh undefine prod3
