#!/bin/sh

mkdir -p ~/.config

brew install \
  bat \
  jq \
  stow \
  the_silver_searcher \
  tmux \

stow git scala tmux vim zsh
