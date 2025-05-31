#!/bin/bash

# Install the Flatpak applications
flatpak install -y flathub "org.libreoffice.LibreOffice"
flatpak install -y flathub "org.mozilla.Thunderbird"

SCHEMA="org.gnome.desktop.app-folders"
KEY="folder-children"

STATUS=$(gsettings get ${SCHEMA} ${KEY})

# Optional proof, whether value to add already exsists
if [[ $STATUS == *"'Office'"* ]]; then
    echo "Office folder already exists."
else
    gsettings set ${SCHEMA} ${KEY} "${STATUS%]*}, 'Office']"
    gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/Office/ name 'Office.directory'
    gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/Office/ apps "['org.mozilla.Thunderbird.desktop', 'org.libreoffice.LibreOffice.desktop', 'org.libreoffice.LibreOffice.base.desktop', 'org.libreoffice.LibreOffice.calc.desktop', 'org.libreoffice.LibreOffice.draw.desktop', 'org.libreoffice.LibreOffice.impress.desktop', 'org.libreoffice.LibreOffice.math.desktop', 'org.libreoffice.LibreOffice.writer.desktop']"
    echo "Added Office folder."
fi
