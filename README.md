# Elly's dotfiles

I've known about dotfiles for a long time but never taken the time to actually pull them all together in a git repo, until now! (_2023/01/22_)

To help give me the push I needed to do it, I followed the course at [dotfiles.eieio.xyz](http://dotfiles.eieio.xyz), I'd recommend it if you're also stuggling to take the plunge.

## Installation

1. `xcode-select --install` (Command Line Tools are required for Git and Homebrew)
2. `git clone https://github.com/ellyloel/dotfiles.git ~/.dotfiles`. We'll start with `https` but switch to `ssh` after everything is installed.
3. `cd ~/.dotfiles`
4. Do a software audit by editing [Brewfile](Brewfile) directly.
5. [`./install`](install)
6. Restart computer.
7. [Generate ssh key](https://help.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh), add to GitHub, and switch remotes.

```zsh
# Generate SSH key in default location (~/.ssh/config)
ssh-keygen -t rsa -b 4096 -C "hello@ellyloel.com"

# Start the ssh-agent
eval "$(ssh-agent -s)"

# Create config file with necessary settings
<< EOF > ~/.ssh/config
Host *
  AddKeysToAgent yes
  UseKeychain yes
  IdentityFile ~/.ssh/id_rsa
EOF

# Add private key to ssh-agent
ssh-add -K ~/.ssh/id_rsa

# Copy public key and add to github.com > Settings > SSH and GPG keys
pbcopy < ~/.ssh/id_rsa.pub

# Test SSH connection, then verify fingerprint and username
# https://help.github.com/en/github/authenticating-to-github/testing-your-ssh-connection
ssh -T git@github.com

# Switch from HTTPS to SSH
git remote set-url origin git@github.com:ellyloel/dotfiles.git
```

### Manual Steps

- Arc
- [DisplayLink Manager](https://www.synaptics.com/products/displaylink-graphics/downloads/macos)
- [Elgato Control Center](https://www.elgato.com/en/downloads)
- [Firefox Developer Edition](https://www.mozilla.org/en-US/firefox/developer/)
- [Safari Technology Preview](https://developer.apple.com/safari/resources/)
- [Google Chrome Dev](https://www.google.com/intl/en_au/chrome/dev/)
- [Microsoft Edge Dev](https://www.microsoftedgeinsider.com/en-us/download)

_to be continued..._
