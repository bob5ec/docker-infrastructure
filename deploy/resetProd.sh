#!/bin/bash
cd /var/lib/libvirt/images
rm prod*
virsh destroy prod1
virsh undefine prod1
