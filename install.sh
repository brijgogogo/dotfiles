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
