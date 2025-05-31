#!/bin/bash

# Install packages for development
sudo apt install -y build-essential git

# Install the Flatpak applications
flatpak install -y flathub "org.gnome.Builder"
flatpak install -y flathub "com.visualstudio.code"
flatpak install -y flathub "io.dbeaver.DBeaverCommunity"
flatpak install -y flathub "com.jetbrains.IntelliJ-IDEA-Community"
flatpak install -y flathub "ar.xjuan.Cambalache"

SCHEMA="org.gnome.desktop.app-folders"
KEY="folder-children"

STATUS=$(gsettings get ${SCHEMA} ${KEY})

# Optional proof, whether value to add already exsists
if [[ $STATUS == *"'Develop'"* ]]; then
    echo "Develop folder already exists."
else
    gsettings set ${SCHEMA} ${KEY} "${STATUS%]*}, 'Develop']"
    gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/Develop/ name 'Develop.directory'
    gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/Develop/ apps "['org.gnome.Builder.desktop', 'com.visualstudio.code.desktop', 'io.dbeaver.DBeaverCommunity.desktop', 'com.jetbrains.IntelliJ-IDEA-Community.desktop', 'ar.xjuan.Cambalache.desktop']"
    echo "Added Develop folder."
fi
