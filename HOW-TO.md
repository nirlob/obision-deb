# HOW-TO

## Change to X11 (Tested 2024-05-03)
- Edit /etc/gdm3/daemon.con
- Uncomment line `WaylandEnable=false`
- Save and reboot

## Restore tabs in Chrome after reboot (Not runs)
- Edit /etc/gdm3/PostSession/Default (sudo vi /etc/gdm3/PostSession/Default)
- Add this line before `exit 0`: `killall -HUP chrome`
- Save and reboot

## Install VirtualBox in Boot UEFI signed (Tested 2024-05-03) (Not runs)
- Follow the steps in https://linuxiac.com/how-to-install-virtualbox-on-debian-12-bookworm/
- The next commands are from https://slimbook.com/blog/tutoriales-2/post/firmando-modulo-virtualbox-en-secureboot-uefi-solucion-a-kernel-driver-not-installed-rc-1908-17
- Exec `openssl req -new -x509 -newkey rsa:2048 -keyout MOK.priv -outform DER -out MOK.der -nodes -days 36500 -subj "/CN=VirtualBox/"`
- Exec `sudo su` for modinfo command runs
- Exec `/usr/src/linux-headers-$(uname -r)/scripts/sign-file sha256 ./MOK.priv ./MOK.der $(modinfo -n vboxdrv)`
- Exit `sudo su` (Ctrl+D)
- Exec `sudo mokutil --import MOK.der`
- Reboot and select `Enroll MDK` in the boot menu
