Sacado de https://raspberrytips.com/latest-gnome-installation-debian/

Para actualizar la instalacion a la ultima version de paquetes (version unstable o testing), por ejemplo para actualizar GNOME a la ultima version seguir estos pasos:

1) Añadir en /etc/apt/sources.list las lineas siguientes:
deb http://deb.debian.org/debian/ unstable main contrib
deb-src http://deb.debian.org/debian/ unstable main contrib

2) Modificar archivo /etc/apt/preferences (Si el archivo no existe hay que crearlo)
Package: *
Pin: release a=bookworm
Pin-Priority: 500

Package: *
Pin: release a=unstable
Pin-Priority: 100

3) sudo apt update (Puede que haya que añadir la opcion "-t unstable")

4) sudo apt upgrade, si da error (paquetes retenidos) ejecutar sudo apt full-upgrade (Puede que haya que añadir la opcion "-t unstable")