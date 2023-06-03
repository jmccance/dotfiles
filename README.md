jmccance.dotfiles
=================

Usage
-----

```
git checkout $REPO_URL ~/.dotfiles
cd ~/.dotfiles
./init.sh
```

This will install brew and everything in the [Brewfile](./Brewfile). Once this has finished, complete the following manual steps:
 
### Install tmux plugins

Launch tmux and hit `C-Space-I` to install plugins.

### Install 1Password

1. [Download](https://1password.com/downloads/mac/) and install 1Password. (I'm too paranoid to let brew install it for me.)
2. [Configure SSH agent](https://developer.1password.com/docs/ssh/get-started/#step-3-turn-on-the-1password-ssh-agent)
