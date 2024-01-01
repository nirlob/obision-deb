# Obision

## Create pen drive
- dd if=obision-X.X.iso of=/dev/sda bs=16M status=progress oflag=sync
- *Warning*: Can't be /dev/sda

## Resolve kernel error after update kernel (Segun parece lo han arreglado en la version 12.1)
- From https://forums.debian.net/viewtopic.php?t=155223 (Esta ha funcionado)
- sudo dpkg --purge raspi-firmware

## Configure GDM
- Install gdm-tools (Ajustes del gdm en la tienda)
- Esta herramienta recompila el archivo /usr/share/gnome-shell/gnome-shell-theme.gresource
- Este archivo copiarlo al directorio config/includes.chroot_after_packages/usr/share/gnome-shell del proyecto cada vez que se modifica

Esto no funciona si el archivo gnome-shell-theme.gresource ya esta modificado e instalado una vez. Las instrucciones para editar gnome-shell-theme estan
en la URL https://wiki.archlinux.org/title/GDM#Log-in_screen_background_image

Para cambiar el fondo hay que recompilar el archivo gnome-shell-theme.gresource no se puede hacer mediante el archivo /etc/dconf/db/gdm.d/95-gdm-settings

## Icono de usuario de instalacion para GDM
Pictures are stored in the folder /var/lib/AccountsService/icons/[user name]
The [user name] is of type image/png format with a size of 96x96 pixels
Under the folder /var/lib/AccountsService/users you have a similar file [user name] that is a .desktop format - for example

[User]
Language=en_GB
XSession=ubuntu
Icon=/var/lib/AccountsService/icons/dad

## NVidia hybrid startup
For install driver go to the URL https://wiki.debian.org/NvidiaGraphicsDrivers

Additionally, you need to modify the kernel cmd line to have nvidia-drm.modeset=1. For that, my /etc/default/grub reads: (...) marks omissions,)
GRUB_CMDLINE_LINUX_DEFAULT="(...) nvidia-drm.modeset=1"

You also want to enable some modules parameters to instruct the nvidia kernel module to backup gpu memory on suspend to ram, otherwise stuff will not be rendered correctly after s2r returns:

For that, my "/etc/modprobe.d/nvidia-kernel-common.conf" contains:
options nvidia NVreg_PreserveVideoMemoryAllocations=1 NVreg_TemporaryFilePath=/var/cache/nvidia

(possibly, can't remember, you need to mkdir /var/cache/nvidia yourself)

# GIT
git config --global user.name "Jose Francisco Gonzalez" && git config --global user.email jfgs1609@gmail.com