#!/bin/bash

# Install packages for games
sudo apt install -y steam-devices

# Install the Flatpak applications
flatpak install -y flathub "com.valvesoftware.Steam"
flatpak install -y flathub "org.gnome.Aisleriot"

SCHEMA="org.gnome.desktop.app-folders"
KEY="folder-children"

STATUS=$(gsettings get ${SCHEMA} ${KEY})

# Optional proof, whether value to add already exsists
if [[ $STATUS == *"'Games'"* ]]; then
    echo "Games folder already exists."
else
    gsettings set ${SCHEMA} ${KEY} "${STATUS%]*}, 'Games']"
    gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/Games/ name 'Games.directory'
    gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/Games/ apps "['org.gnome.Aisleriot.desktop', 'com.valvesoftware.Steam.desktop']"
    echo "Added Games folder."
fi
