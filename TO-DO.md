# TO-DO
## Paquetes de fuentes Windows para posible instalacion con APT
- ttf-mscorefonts-installer
- fonts-crosextra-carlito 
- fonts-crosextra-caladea

## Otras opciones pendientes
- Instalar tema azul descrito en URL-UTILS.md
- Quitar repositorio de sources.list
- Instalar extension de Gnome `TopIconsFix` ???
- Añadir capas a mapas ???? (Han quitado la vista de satelite porque es de pago)
- Establecer instalador a resolucion fija de 1024x768 (o parecida)
  https://askubuntu.com/questions/1027366/how-to-configure-preseed-file-to-make-grub-configuration-point-to-correct-drive
- Intentar que se abra el terminal maximizado (no se si se puede)
- Configurar lanzadores de teclado en config - Atajos - Ver y personalizar atajos (Sobre todo la de lanzadores, poner Super+H para carpeta personal y otros lanzadores) (Probado pero no funciona bien, no se activan)
- Set GDM resolution (https://wiki.archlinux.org/title/GDM)
- Set Grub to resolution 1024x768 or 640x480 (Debe ser durante la instalacion, el instalador genera el /boot/grub/grub.cfg y no hace caso a los parametros probados. Si se genera el /etc/default/grub en el directorio config entonces en el instalador pregunta cual se quiere usar). Si se copia grub.cfg a /boot/grub como esta ahora en /home/jose/Proyectos/obision-deb/config/includes.chroot_after_packages/boot/grub/config.cfg tampoco funciona, segun parece el instalador lo regenera nuevo. Hay que mirarlo
- Revisar porque en Nautilus no se activa la opcion de ver primero las carpetas
- Usar archivo de memoria virtual en vez de particion swap
- GDM - Establecer imagen de fondo
- GDM - Establecer icono de usuarios. Al menos uno por defecto