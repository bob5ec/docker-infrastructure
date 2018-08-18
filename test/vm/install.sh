virt-install \
    --connect qemu:///system \
    --name "test1" \
    --ram 1024 --vcpus 1 \
    --os-type=linux \
    --os-variant=virtio26 \
    --disk "path=test1.qcow2,format=qcow2,size=8,bus=virtio" \
    --graphics none \
    --console pty,target_type=serial \
    --location 'http://ftp.de.debian.org/debian/dists/stretch/main/installer-amd64/' \
    --extra-args 'console=ttyS0,115200n8 serial auto=true priority=critical preseed/url=https://raw.githubusercontent.com/bob5ec/docker-infrastructure/master/deploy/vm.preseed'
    #--vnc --noautoconsole \
    #--location 'ftp://ftp.de.debian.org/debian/dists/stretch/main/installer-amd64/' \
