#!/bin/sh

# resize disk
parted /dev/sda resizepart 3 100% >> /var/log/startup.log
pvresize /dev/sda3 >> /var/log/startup.log
lvextend -r -l +100%FREE /dev/ubuntu-vg/ubuntu-lv >> /var/log/startup.log
resize2fs /dev/mapper/ubuntu--vg-ubuntu--lv >> /var/log/startup.log