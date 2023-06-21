jmccance.dotfiles
=================

## Requirements

- zsh
- [powerline](https://github.com/powerline/powerline)
- [stow](https://www.gnu.org/software/stow/)

## Supported Tooling

- [sdkman](http://sdkman.io/)
- tmux
  - [tpm](https://github.com/tmux-plugins/tpm)
- vim

## Setup

```
git checkout $REPO_URL ~/.dotfiles
cd ~/.dotfiles
./init.sh
```

## Additional Setup

- Install Setapp and Bartender

### Keyboard Settings

- Keyboard Shortcuts… -> Modifier Keys
  - For each keyboard, map "Caps Lock" to "Escape"
- Enable "Keyboard navigation" to allow for tabbing between controls

### iTerm 2

iTerm 2 settings are stored in `~/.config/iterm2`. Tell iTerm 2 that in

"General" -> "Preferences" -> "Load preferences from custom folder or URL"
