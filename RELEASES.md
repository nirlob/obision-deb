# Releases

## Generate new release 
- Set new tag to the last commit to new version, format vX.X, description Version X.X
- Remove cache folder before build
- Before build change LB_IMAGE_NAME version variable in file config/common
- Before build change the versions of config/includes.chroot_after_packages/usr/lib/os-release

## 0.1 (2023-08-02)
<li>Initial release</li>

## 0.2 (2023-08-06)
<li>Add Timeshift to utilities applications group</li>
<li>Change swappiness to 10</li>
<li>Add GUFW firewall to system applications group</li>
<li>Added non-free contrib and non-free-firmware to deb repositories</li>
<li>Installer hide root password screen</li>
<li>Installer don't show partition mode, always all in one partition</li>
<li>Set version to /usr/lib/os-release</li>
<li>Change logos icons</li>

## 0.3 (2023-09-30)
<li>Activated automatically clean temporal files</li>
<li>Changed default maps zoom to 2</li>
<li>View folders first in Nautilus</li>
<li>Disabled natural scroll for touchpad and mouse</li>
<li>Added net-tools package, for ifconfig, route, etc. net commands</li>
<li>Changed background for live menu boot and set background for EFI boot</li>
<li>Install tlp for manage battery laptop</li>

## 0.4 (Date)
<li>Remove install icon from GNOME in live boot</li>