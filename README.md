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

## Icono de usuario de instalacion para GDM
Pictures are stored in the folder /var/lib/AccountsService/icons/[user name]
The [user name] is of type image/png format with a size of 96x96 pixels
Under the folder /var/lib/AccountsService/users you have a similar file [user name] that is a .desktop format - for example

[User]
Language=en_GB
XSession=ubuntu
Icon=/var/lib/AccountsService/icons/dad