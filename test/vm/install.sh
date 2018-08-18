virt-install \
    --connect qemu:///system \
    --name "dev10" \
    --ram 1024 --vcpus 1 \
    --os-type=linux \
    --os-variant=virtio26 \
    --disk "path=dev10.qcow2,format=qcow2,size=8,bus=virtio" \
    --console pty,target_type=serial \
    --location 'http://mirror.netcologne.de/debian/dists/stretch/main/installer-amd64/' \
    --extra-args 'console=ttyS0,115200n8 serial auto=true priority=critical netcfg/hostname=dev10 preseed/url=https://raw.githubusercontent.com/bob5ec/docker-infrastructure/dev/deploy/vm.preseed'
# enable console for testing
#--graphics none \
