#!/bin/sh

DOT_FILES=(.zprofile .zshrc .zsh_aliases .vimrc)
DOT_VIM=.vim

for file in ${DOT_FILES[@]}; do
  ln -s $HOME/dotfiles/$file $HOME/$file && echo "Succeeded to create ${file}"
done

if [ ! -e $HOME/.vim ]; then
  ln -s $HOME/dotfiles/$DOT_VIM/ $HOME/$DOT_VIM && echo "Succeeded to create ${DOT_VIM}"
  git submodule init
  git submodule update
else
  echo "$HOME/${DOT_VIM} is exists"
fi
