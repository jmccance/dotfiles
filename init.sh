#!/bin/sh

DOTDIR="$HOME/.dotfiles"

setopt EXTENDED_GLOB
for rcfile in "${DOTDIR}"/dotfiles/^README.md(.N); do
  echo ln -s "$rcfile" "$HOME/.${rcfile:t}"
done
