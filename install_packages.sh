#!/bin/bash
sudo apt update && sudo apt upgrade -y

sudo apt install -y \
git curl build-essential gnome-terminal zsh fonts-powerline \
gnome-screenshot gparted neofetch timeshift \
wireshark code python3 python3-pip nodejs npm \
tuxguitar guitarix qjackctl jackd2 \
steam lutris mangohud gamemode wine winetricks \
obs-studio simplescreenrecorder \
virtualbox vlc notepadqq spotify-client discord

# Add usr to wireshark (logout/login)
sudo usermod -aG wireshark $USER

echo "[+] Setup done! Restarting system..."
sleep 5
reboot
