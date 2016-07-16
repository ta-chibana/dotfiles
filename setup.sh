#!/bin/bash

DOT_FILES=(.bash_profile .bashrc .bash_aliases .vimrc)

for file in ${DOT_FILES[@]}; do
    ln -s $HOME/dotfiles/$file $HOME/$file && echo "Succeeded to create ${file}"
done

