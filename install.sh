#!/bin/zsh

set -e # Quit on failure
mv _vimrc ~/.vimrc
cp -R ./vim ~
vim +PluginInstall +qall #
