jmccance.dotfiles
=================

Usage
-----

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
- Search for "Spelling" and disable all the autocorrects

### iTerm 2

iTerm 2 settings are stored in `~/.config/iterm2`. Tell iTerm 2 that in

"General" -> "Preferences" -> "Load preferences from custom folder or URL"

This will install brew and everything in the [Brewfile](./Brewfile). Once this has finished, complete the following manual steps:
 
### Install tmux plugins

Launch tmux and hit `C-Space-I` to install plugins.

### Install 1Password

1. [Download](https://1password.com/downloads/mac/) and install 1Password. (I'm too paranoid to let brew install it for me.)
2. [Configure SSH agent](https://developer.1password.com/docs/ssh/get-started/#step-3-turn-on-the-1password-ssh-agent)
