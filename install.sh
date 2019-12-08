#!/bin/bash

pacman -S xbindkeys

pacman -S newsboat
# clipboard
pacman -S xsel xclip
yay xvkbd
# video
pacman -S mpv youtube-dl
# hdmi
pacman -S xrandr autorandr
# mons
yay 2-monitor
# audio
pacman -S alsa-utils pulseaudio pulseaudio-alsa pavucontrol

sudo pacman -S gnu-netcat
yay sopcast
yay acestream-launcher

sudo pacman -S feh scrot
sudo pacman -S vifm
sudo pacman -S tor
yay tor-browser

pacman -S ttf-fantasque-sans-mono noto-fonts-emoji


#echo $BASH_SOURCE
#echo dirname
#echo "$(dirname "${BASH_SOURCE[0]}")"
BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
echo "installing dotfiles from ${BASEDIR}"

# vim
mkdir ~/.vim
ln -s ${BASEDIR}/.vim/vimrc ~/.vim/vimrc

# bash
ln -s ${BASEDIR}/.bashrc ~/.bashrc
ln -s ${BASEDIR}/.bash_profile ~/.bash_profile
ln -s ${BASEDIR}/.aliases.sh ~/.aliases.sh
ln -s ${BASEDIR}/.shell_common_rc ~/.shell_common_rc

# zsh:w
ln -s ${BASEDIR}/.zshrc ~/.zshrc

# mouse buttons
ln -s ${BASEDIR}/.xbindkeysrc ~/.xbindkeysrc

ln -s ${BASEDIR}/.config/dunst ~/.config/dunst
ln -s ${BASEDIR}/.config/rofi ~/.config/rofi
ln -s ${BASEDIR}/.config/pet ~/.config/pet

# i3 setup
ln -s ${BASEDIR}/.config/i3 ~/.config/i3
ln -s ${BASEDIR}/.config/i3blocks ~/.config/i3blocks

# xbindkeys
ln -s ${BASEDIR}/.xbindkeysrc ~/.xbindkeysrc

# newsboat
ln -s ${BASEDIR}/.newsboat ~/.newsboat

# vifm
ln -s ${BASEDIR}/.config/vifm ~/.config/vifm


# keyboard, touchpad
ln -s ${BASEDIR}/root/etc/X11/xorg.conf.d/30-touchpad.conf /etc/X11/xorg.conf.d/30-touchpad.conf
ln -s ${BASEDIR}/root/etc/X11/xorg.conf.d/00-keyboard.conf /etc/X11/xorg.conf.d/00-keyboard.conf





