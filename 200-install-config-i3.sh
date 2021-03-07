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

#cp -Rf ~/.config ~/.config-backup-$(date +%Y.%m.%d-%H.%M.%S)
sudo rsync -rtv etc/ /etc/
sudo rsync -rtv usr/ /usr/
rsync -rtv Personali3/ ~/

#cp -RT Personali3/* ~/
#cp -RT Personali3/.config  ~/.config
#cp -RT Personali3/.cache  ~/.cache
#cp -RT Personali3/.oh-my-zsh  ~/.oh-my-zsh

###############################################################################################

echo "################################################################"
echo "################### core software installed"
echo "################################################################"
