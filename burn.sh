#!/bin/bash

dd if=live-image-amd64.hybrid.iso of=/dev/sdb bs=32M
cfdisk /dev/sdb

cryptsetup --verify-passphrase -c aes -s 256 luksFormat /dev/sdb2
cryptsetup luksOpen /dev/sdb2 live

# filling the device with zeros
dd if=/dev/zero of=/dev/mapper/live bs=32M

mkfs.ext4 -L persistence /dev/mapper/live

mount /dev/mapper/live /mnt
echo "/ union" > /mnt/persistence.conf
umount /mnt

cryptsetup luksClose live


