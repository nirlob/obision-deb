# Obision

## Generate new release 
- Set new tag to the last commit to new version, format vX.X, description Version X.X
- Remove cache folder before build
- Before build change LB_IMAGE_NAME version variable in file config/common
- Before build change the versions of config/includes.chroot_after_packages/usr/lib/os-release

## Create pen drive
- dd if=obision-X.X.iso of=/dev/sdb bs=16M status=progress oflag=sync
- *Warning*: Can't be /dev/sdb

## Resolve error after update kernel 
- From https://itsfoss.com/dpkg-returned-an-error-code-1/
- sudo rm /var/lib/dpkg/info/linux-image-*
- sudo apt update
