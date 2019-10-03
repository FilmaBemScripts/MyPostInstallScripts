#!/bin/bash
## Updating APT cache##

sudo apt update

## Downloading Files ##

mkdir dltmp
cd dltmp
wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
wget -c https://dl.discordapp.net/apps/linux/0.0.9/discord-0.0.9.deb
wget -c https://repo.skype.com/latest/skypeforlinux-64.deb
wget -c https://files.multimc.org/downloads/multimc_1.3-1.deb
wget -c https://dl.teamviewer.com/download/linux/version_14x/teamviewer_14.6.2452_amd64.deb
wget -c http://repo.steampowered.com/steam/archive/precise/steam_latest.deb

## Adding PPA Repository ##

sudo add-apt-repository ppa:graphics-drivers/ppa -y
sudo add-apt-repository ppa:ppsspp/stable -y
sudo add-apt-repository ppa:gregory-hainaut/pcsx2.official.ppa -y
sudo add-apt-repository ppa:libreoffice/ppa -y
sudo add-apt-repository ppa:daniruiz/flat-remix -y
sudo add-apt-repository ppa:nilarimogard/webupd8 -y

## Updating APT cache ##

sudo apt update

## Instaling Packages ##

sudo dpkg -i *.deb
sudo apt -f install -y
sudo apt install audacity vlc minecraft filezilla nemo obs-studio gimp gparted virtualbox-qt htop ubuntu-restricted-extras synaptic gnome-tweaks brasero libglib2.0-dev-bin imagemagick flat-remix-gnome flat-remix flat-remix-gtk breeze-cursor-theme handbreak neofetch youtube-dlg -y
sudo snap install photogimp

## Removing packages ##

sudo apt remove remmina thunderbird firefox rhythmbox -y
sudo apt autoremove

## Setting Gnome-Shell Theme ##

gsettings set org.gnome.shell.extensions.user-theme name "Flat-Remix"

## Setting Icon Theme##

gsettings set org.gnome.desktop.interface icon-theme "Flat-Remix-Blue"

## Setting GTK Theme ##

gsettings set org.gnome.desktop.interface gtk-theme "Flat-Remix-GTK-Blue"

## End ##

echo The Scripted ended with no errors

