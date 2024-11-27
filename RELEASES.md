# Releases history

## Generate new release

### Before generate
- Set new tag to the last commit to new version, format vX.X, description Version X.X
- Push tag
- Remove cache folder before build (sudo lb clean --purge)
- Generate ISO

### After generate
- Change LB_IMAGE_NAME version variable in file config/common
- Change the versions of config/includes.chroot_after_packages/usr/lib/os-release
- Change versions of config/includes.chroot_after_packages/etc/calamares/branding/obision/branding.desc

## Releases

### 0.1 (2023-08-02)
<li>Initial release</li>

### 0.2 (2023-08-06)
<li>Add Timeshift to utilities applications group</li>
<li>Change swappiness to 10</li>
<li>Add GUFW firewall to system applications group</li>
<li>Added non-free contrib and non-free-firmware to deb repositories</li>
<li>Installer hide root password screen</li>
<li>Installer don't show partition mode, always all in one partition</li>
<li>Set version to /usr/lib/os-release</li>
<li>Change logos icons</li>

### 0.3 (2023-09-30)
<li>Activated automatically clean temporal files</li>
<li>Changed default maps zoom to 2</li>
<li>View folders first in Nautilus</li>
<li>Disabled natural scroll for touchpad and mouse</li>
<li>Added net-tools package, for ifconfig, route, etc. net commands</li>
<li>Changed background for live menu boot and set background for EFI boot</li>
<li>Install tlp for manage battery laptop</li>

### 0.4 (2023-10-05)
<li>Removed install icon from GNOME in live boot</li>
<li>Associated extension .deb to software store</li>
<li>Removed and added some backgrounds desktop images</li>
<li>Changed Firefox ESR by Firefox</li>

### 0.5 (2023-12-19)
<li>Remove LVM installation options</li>
<li>Fix apt error package raspi-firmware when update kernel</li>
<li>Grub not show if Obision is the unique operating system in MBR</li>
<li>Set GRUB resolution to 1024x768</li>
<li>Customization GDM</li>

### 0.6 (2024-03-07)
<li>GDM fix logo and font scaling</li>
<li>Added folder in applications screen with extra apps for install</li>
<li>Removed VLC and Transmission installation and added to new folder of optionals applications</li>
<li>Added and configured Calamares installer from desktop</li>

### 0.7 (2024-04-26)
<li>Added more applicattions to the extra apps folder in applications</li>
<li>Modified GRUB menu boot install to 1024x768 resolution</li>
<li>Remve UEFI menu boot install options</li>
<li>Change default desktop background</li>
<li>Added more desktop backgrounds</li>

### 0.8 (2024-08-30)
<li>Added shortcuts Super+F for search, Super+I for home, Super+E for email, Super+W for browser and Super+T for terminal</li>
<li>Changed name from Extra apps to Instalable apps</li>
<li>Added minimize button to windows title</li>
<li>Packages fonts by fonts-crosextra-carlito and fonts-crosextra-caladea</li>
<li>Added GNOME Connections to remote desktop admin</li>
<li>Changed dock and top panel color to dark gray</li>

### 0.9 (2024-11-27)


### 0.10 (date)
