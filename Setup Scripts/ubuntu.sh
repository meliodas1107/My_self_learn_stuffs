#!/bin/bash
sudo apt update 
sudo apt install vlc codeblocks gnome-software-plugin-flatpak  celluloid flatpak telegram-desktop zsh gnome-disk-utility gparted curl build-essential apt-transport-https wget ubuntu-restricted-extras  timeshift lollypop -y
curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt update 
sudo apt install spotify-client sublime-text -y
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
 
