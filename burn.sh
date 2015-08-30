#!/bin/bash

dd if=live-image-amd64.hybrid.iso of=/dev/sdb bs=2048k
cfdisk /dev/sdb
umount /dev/sdb2
mkfs.ext3 /dev/sdb2 -L persistence
