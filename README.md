# Obision

## Create pen drive
- dd if=obision-X.X.iso of=/dev/sda bs=16M status=progress oflag=sync
- *Warning*: Can't be /dev/sda

## Resolve kernel error after update kernel 
- From https://forums.debian.net/viewtopic.php?t=155223 (Esta ha funcionado)
- sudo dpkg --purge raspi-firmware


- From https://itsfoss.com/dpkg-returned-an-error-code-1/
- sudo rm /var/lib/dpkg/info/linux-image-*
- sudo apt update
