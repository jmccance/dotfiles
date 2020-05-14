#!/bin/sh

echo "Fetching submodules..."

git submodule update --init --recursive

echo "Installing brew..."

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

echo "Installing things with brew..."

brew install \
  bat \
  direnv \
  gnupg \
  httpie \
  hub \
  jq \
  lazydocker \
  stow \
  the_silver_searcher \
  tldr \
  tmux \

echo "Installing config files..."

stow git scala tmux vim zsh

echo "Installing Powerline..."

pip3 install --user powerline-status

echo "Installing tpm..."

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

echo "Installing Vundle..."

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "Done! Hope it worked!"

echo "== Next steps =="
echo
echo "1) Open vim and run :PluginInstall to install plugins"
echo "2) Open tmux and hit C-Space-I to install plugins"
