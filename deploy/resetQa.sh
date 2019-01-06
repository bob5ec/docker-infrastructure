#!/bin/bash
cd /var/lib/libvirt/images
rm qa*
virsh destroy qa1
virsh undefine qa1
