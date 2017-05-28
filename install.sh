#!/bin/bash

#set -e # Quit on failure

cp ./_vimrc ~/.vimrc
cp -r .vim/ ~/.vim/
#vim +PluginInstall +qall #
vim -c '<CR>' -c 'PluginInstall' -c 'qa!'
