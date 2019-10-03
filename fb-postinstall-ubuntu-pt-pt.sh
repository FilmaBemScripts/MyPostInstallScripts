#!/bin/bash
## Atualizar a cache do APT para começar##

sudo apt update

## A fazer o download dos ficheiros ##

mkdir dltmp
cd dltmp
wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
wget -c https://dl.discordapp.net/apps/linux/0.0.9/discord-0.0.9.deb
wget -c https://repo.skype.com/latest/skypeforlinux-64.deb
wget -c https://files.multimc.org/downloads/multimc_1.3-1.deb
wget -c https://dl.teamviewer.com/download/linux/version_14x/teamviewer_14.6.2452_amd64.deb
wget -c http://repo.steampowered.com/steam/archive/precise/steam_latest.deb

## Adicionar Repositórios PPA ##

sudo add-apt-repository ppa:graphics-drivers/ppa -y
sudo add-apt-repository ppa:ppsspp/stable -y
sudo add-apt-repository ppa:gregory-hainaut/pcsx2.official.ppa -y
sudo add-apt-repository ppa:libreoffice/ppa -y
sudo add-apt-repository ppa:daniruiz/flat-remix -y
sudo add-apt-repository ppa:nilarimogard/webupd8 -y

## Atualizar cache do APT depois de adicionar os ppa's ##

sudo apt update

## Instalar Pacotes ##

sudo dpkg -i *.deb
sudo apt -f install -y
sudo apt install audacity vlc minecraft filezilla nemo obs-studio gimp gparted virtualbox-qt htop ubuntu-restricted-extras synaptic gnome-tweaks brasero libglib2.0-dev-bin imagemagick flat-remix-gnome flat-remix flat-remix-gtk breeze-cursor-theme handbreak neofetch youtube-dlg -y
sudo snap install photogimp

## Remover Pacotes desnecessários ##

sudo apt remove remmina thunderbird firefox rhythmbox -y
sudo apt autoremove

## Definir Tema Gnome-Shell ##

gsettings set org.gnome.shell.extensions.user-theme name "Flat-Remix"

## Definir Tema de ícones ##

gsettings set org.gnome.desktop.interface icon-theme "Flat-Remix-Blue"

## Definir Tema GTK ##

gsettings set org.gnome.desktop.interface gtk-theme "Flat-Remix-GTK-Blue"

## Fim ##

echo O Script chegou ao fim

