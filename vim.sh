#!/bin/bash
echo "Setup vim environment"
echo "Checking if vim is installed"
if [[ `dpkg -s vim-gtk | grep Status | grep 'install ok'` ]]
then
    echo -e "\tVim is already installed"
else
    sudo apt-get install vim-gtk
fi

if [ ! -e ~/.vimrc ]
then
    touch ~/.vimrc 
fi

if [[ `grep 'begin basic vim configuration' ~/.vimrc` ]]
then
    echo -e "\tFound basic vim configuration"
else
    echo -e "\tCreating basic vim configuration"
    cat vimrc >> ~/.vimrc
fi

