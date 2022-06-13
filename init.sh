#!/bin/sh

echo "Fetching submodules..."

git submodule update --init --recursive

echo "Installing brew..."

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

echo "Installing things with brew..."

brew install \
  bat \
  cloc \
  delta \
  direnv \
  exa \
  fd \
  fzf \
  gnupg \
  httpie \
  hub \
  jq \
  jwt-cli \
  k9s \
  lazydocker \
  neovim \
  stow \
  the_silver_searcher \
  tldr \
  tmux \

echo "Installing config files..."

stow git nvim scala tmux zsh

echo "Installing Powerline..."

pip3 install --user powerline-status

echo "Installing tpm..."

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

echo "Installing plug..."

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

echo "Done! Hope it worked!"

echo "== Next steps =="
echo
echo "1) Open vim and run :PluginInstall to install plugins"
echo "2) Open tmux and hit C-Space-I to install plugins"
