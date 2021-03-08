#!/bin/bash
set -e
##################################################################################################################
# Author 	: Erik Dubois
# Website : https://www.erikdubois.be
# Website	: https://www.arcolinux.info
# Website	:	./https://www.arcolinux.com
# Website	:	https://www.arcolinuxd.com
# Website	:	https://www.arcolinuxforum.com
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

#software from Arch Linux repositories
yay -Syu --noconfirm

#sudo pacman -S --noconfirm --needed autorandr
sudo pacman -S --noconfirm --needed youtube-dl
sudo pacman -S --noconfirm --needed zathura
sudo pacman -S --noconfirm --needed zathura-pdf-poppler
sudo pacman -S --noconfirm --needed zathura-cb
sudo pacman -S --noconfirm --needed zathura-djvu
sudo pacman -S --noconfirm --needed vifm
sudo pacman -S --noconfirm --needed unclutter
sudo pacman -S --noconfirm --needed python-pywal
sudo pacman -S --noconfirm --needed python-ueberzug
sudo pacman -S --noconfirm --needed sublime-text-dev
sudo pacman -S --noconfirm --needed menulibre
sudo pacman -S --noconfirm --needed sddm
sudo pacman -S --noconfirm --needed meld
sudo pacman -S --noconfirm --needed sublime-text-dev
sudo pacman -S --noconfirm --needed atom
sudo pacman -S --noconfirm --needed virtualbox
sudo pacman -S --noconfirm --needed virtualbox-host-dkms
sudo pacman -S --noconfirm --needed linux-headers
sudo pacman -S --noconfirm --needed discord
sudo pacman -S --noconfirm --needed freetube-bin

sudo rsync -rtv etc/ /etc/
sudo rsync -rtv usr/ /usr/
sudo rsync -rtv boot/ /boot/
rsync -rtv Personali3/ ~/

sudo chsh $USER -s /bin/zsh

sudo systemctl enable sddm.service -f

echo '\''Sddm is active, all configs in place - reboot now'\'

###############################################################################################

echo "################################################################"
echo "################### core software installed"
echo "################################################################"
