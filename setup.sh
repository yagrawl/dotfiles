#!/bin/bash
set -e

# ANSI escape codes for colors
BLUE="\033[38;5;27m"
PURPLE="\033[38;5;177m"
RESET="\033[0m"

create_symlink() {
  local source="$1"
  local target="$2"

  if [ -e "$target" ]; then
    echo -e "File ${PURPLE}$target${RESET} already exists, skipping symlink creation."
  else
    ln -s "$source" "$target"
    echo -e "Symlink ${BLUE}$source${RESET} -> ${PURPLE}$target${RESET} created."
  fi
}

create_symlink ~/dotfiles/.zshrc ~/.zshrc
create_symlink ~/dotfiles/.p10k.zsh ~/.p10k.zsh
create_symlink ~/dotfiles/.gitconfig ~/.gitconfig
