#!/bin/bash

pacman -S xbindkeys
pacman -S newsboat
pacman -S xsel xclip
yay xvkbd
pacman -S mpv youtube-dl


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
ln -s ${BASEDIR}/.config/vifm ~/.config/vifm
ln -s ${BASEDIR}/.config/pet ~/.config/pet

# i3 setup
ln -s ${BASEDIR}/.config/i3 ~/.config/i3
ln -s ${BASEDIR}/.config/i3blocks ~/.config/i3blocks

# xbindkeys
ln -s ${BASEDIR}/.xbindkeysrc ~/.xbindkeysrc

# newsboat
ln -s ${BASEDIR}/.newsboat ~/.newsboat

