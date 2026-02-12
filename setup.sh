#!/bin/sh

SCRIPT_DIR=$(cd "$(dirname "$0")" && pwd)

# Helper: create symlink with backup of existing file
create_link() {
  src=$1
  dest=$2

  if [ -L "$dest" ]; then
    echo "Removing existing symlink: $dest"
    rm "$dest"
  elif [ -e "$dest" ]; then
    echo "Backing up existing file: $dest -> ${dest}.bak"
    mv "$dest" "${dest}.bak"
  fi

  ln -s "$src" "$dest" && echo "Created: $dest -> $src"
}

# zshrc
create_link "$SCRIPT_DIR/.zshrc" "$HOME/.zshrc"

# nvim
mkdir -p "$HOME/.config/nvim"
create_link "$SCRIPT_DIR/config/nvim/init.vim" "$HOME/.config/nvim/init.vim"
