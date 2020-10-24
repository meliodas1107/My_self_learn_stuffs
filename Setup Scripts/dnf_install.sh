#!/bin/bash
sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf up --refresh 
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo 
sudo dnf install gnome-tweaks vlc celluloid qbittorrent dconf-editor kvantum.x86_64 qt5ct zsh telegram-desktop yaru-theme.noarch yaru-icon-theme.noarch lollypop -y 
sudo dnf groupinstall "Development Tools" "Development Libraries"
#sudo dnf up -y
sudo rpm -v --import https://download.sublimetext.com/sublimehq-rpm-pub.gpg
sudo dnf config-manager --add-repo https://download.sublimetext.com/rpm/stable/x86_64/sublime-text.repo
sudo dnf install sublime-text snapd -y
sudo ln -s /var/lib/snapd/snap /snap
sudo snap install flutter --classic
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

echo "QT_QPA_PLATFORMTHEME=qt5ct" >> ~/.profile
