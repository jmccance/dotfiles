jmccance.dotfiles
=================

## Requirements

- zsh
- [powerline](https://github.com/powerline/powerline)
- tmux
  - [tpm](https://github.com/tmux-plugins/tpm)
- vim
  - [Vundle](https://github.com/VundleVim/Vundle.vim)
- [stow](https://www.gnu.org/software/stow/)

## Setup

```
git checkout $REPO_URL ~/.dotfiles
cd ~/.dotfiles
git submodule update --init --recursive
stow git scala tmux vim zsh
```
