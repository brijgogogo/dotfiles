#!/bin/bash

#echo $BASH_SOURCE
#echo dirname
#echo "$(dirname "${BASH_SOURCE[0]}")"
BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
echo "installing dotfiles from ${BASEDIR}"

# vim
ln -s ${BASEDIR}/.vimrc ~/.vimrc

# bash
ln -s ${BASEDIR}/.bashrc ~/.bashrc
ln -s ${BASEDIR}/.bash_profile ~/.bash_profile
ln -s ${BASEDIR}/.aliases.sh ~/.aliases.sh
ln -s ${BASEDIR}/.shell_common_rc ~/.shell_common_rc

# zsh:w
ln -s ${BASEDIR}/.zshrc ~/.zshrc

# mouse buttons
ln -s ${BASEDIR}/.xbindkeysrc ~/.xbindkeysrc

