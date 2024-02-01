#!/bin/sh

# resize disk
parted /dev/sda resizepart 3 100% >> /var/log/startup.log
pvresize /dev/sda3 >> /var/log/startup.log
lvextend -r -l +100%FREE /dev/almalinux/root >> /var/log/startup.log
xfs_growfs /dev/mapper/almalinux-root >> /var/log/startup.log