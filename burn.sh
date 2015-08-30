#!/bin/bash

dd if=live-image-amd64.hybrid.iso of=/dev/sdb bs=2048k
cfdisk /dev/sdb
mkfs.ext4 /dev/sdb2 -L persistence
mount /dev/sdb2 /mnt
echo "/home" > /mnt/persistence.conf
umount /mnt

