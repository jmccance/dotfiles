#!/bin/zsh

DOTDIR="$HOME/.dotfiles"

setopt EXTENDED_GLOB

echo "Linking dotfiles..."
for rcfile in "${DOTDIR}"/dotfiles/^README.md(.N); do
  echo "...${rcfile}"
  ln -s "$rcfile" "$HOME/.${rcfile:t}"
done

# TODO Install tpm

# TODO Install Vundle
