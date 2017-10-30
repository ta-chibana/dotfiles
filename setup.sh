#!/bin/sh

DOT_FILES=(.zprofile .zshrc .zsh_aliases .vimrc)
DOT_VIM=.vim

for file in ${DOT_FILES[@]}; do
  ln -s $HOME/dotfiles/$file $HOME/$file && echo "Succeeded to create ${file}"
done

if [ ! -e $HOME/.vim ]; then
  ln -s $HOME/dotfiles/$DOT_VIM/ $HOME/$DOT_VIM && echo "Succeeded to create ${DOT_VIM}"
else
  echo "$HOME/${DOT_VIM} is exists"
fi

if [ ! -e $HOME/.config/nvim ]; then
  ln -s $HOME/dotfiles/.vim $HOME/.config/nvim
  echo "Succeeded to create $HOME/.config/nvim"
else
  echo "$HOME/.config/nvim is exists"
fi

if [ ! -e $HOME/.config/nvim/init.vim ]; then
  ln -s $HOME/dotfiles/.vimrc $HOME/.config/nvim/init.vim
  echo "Succeeded to create $HOME/.config/nvim/init.vim"
else
  echo "$HOME/.config/nvim/init.vim is exists"
fi

git submodule init
git submodule update
