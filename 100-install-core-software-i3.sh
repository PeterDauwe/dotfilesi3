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


cp -Rf ~/.config ~/.config-original-$(date +%Y.%m.%d-%H.%M.%S)
sudo rsync -rtv etc/ /etc/
sudo rsync -rtv usr/ /usr/
sudo rsync -rtv boot/ /boot/
rsync -rtv Personali3/ ~/

###############################################################################################

echo "################################################################"
echo "################### core software installed"
echo "################################################################"
