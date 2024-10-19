# TO-DO
## Paquetes de fuentes Windows para posible instalacion con APT
- ttf-mscorefonts-installer (No esta en los repositorios)

## Otras opciones pendientes
- Instalar tema azul descrito en URL-UTILS.md
- Quitar repositorio de sources.list
- Instalar extension de Gnome `TopIconsFix` ???
- Añadir capas a mapas ???? (Han quitado la vista de satelite porque es de pago)
- Establecer instalador a resolucion fija de 1024x768 (o parecida)
  https://askubuntu.com/questions/1027366/how-to-configure-preseed-file-to-make-grub-configuration-point-to-correct-drive
- Configurar lanzadores de teclado en config - Atajos - Ver y personalizar atajos (Sobre todo la de lanzadores, poner Super+H para carpeta personal y otros lanzadores) (Probado pero no funciona bien, no se activan)
- Set GDM resolution (https://wiki.archlinux.org/title/GDM)
- Revisar porque en Nautilus no se activa la opcion de ver primero las carpetas
- En EFI arranque si no hay mas de un sistema operativo no mostrar GRUB y arrancar directamente con el splash del ordenador, como Windows
- Opcion de añadir al instalador opciones para no instalar la tienda de aplicaciones o la carpeta de "Extra apps" o algun software mas
- En modo UEFI mirar si se puede poner la primera opcion al arrancar desde pen o iso para que salga el escritorio directamente, como en arranque MBR (Hecho, sale menu con solo 2 opciones) (Esta hecho con el menu esperando a 5 segundos)
- Añadir mas fondos de escritorio
- Establecer arranque de instalacion en MBR a 1024x768, ahora arranca en 800x600. En UEFI si esta configurado
- Actualizar kernel y gnome ????????? (Para esto hay que usar los repositorios testing)
- Añadir carpeta de apps instalables en escritorio (Es dificil, muy dificil, no funciona esto: ln -s /usr/share/applications/code.desktop code) (mirar archivo install-debian.desktop, puede ayudar)
- Arreglar plymouth (imagen de carga) cuando hay varios monitores
- Mirar plymouth para mostrar pantalla de carga antes, ahora tarda un poco en salir
- Con varios monitores si se aumenta la escala en la primera pantall tambien se aumenta en la segunda
- Quitar referencias a debian-installer (Si no se instala no sale el icono de instalacion al arrancar en modo live)
