# Elly's dotfiles

I've known about dotfiles for a long time but never taken the time to actually pull them all together in a git repo, until now! (_2023/01/22_)

To help give me the push I needed to do it followed the course at [dotfiles.eieio.xyz](http://dotfiles.eieio.xyz), I'd recommend it if you're also stuggling to take the plunge.

## Todo

- [ ] [Create a bootable USB installer for macOS](https://support.apple.com/en-us/HT201372).
- [ ] List of applications to add via package managers:
  - AlDente
  - Arc
  - Authy
  - Choosy (check Chris Coiyer article)
  - CleanShot X
  - Cron
  - DevKinsta
  - Discord
  - DisplayLink Manager
  - Elgato Control Center
  - Fig
  - Figma
  - Firefox
  - Firefox Dev
  - FontForge
  - Fork
  - Chrome
  - Chrome Dev
  - iTerm
  - Edge
  - Edge Dev
  - Miro
  - Obsidian
  - Pika
  - PixelSnap 2
  - Raycast
  - RescueTime
  - Safari TP
  - Spotify
  - Slack
  - VIA
  - Warp
  - Zoom

## Installation

1. `xcode-select --install` (Command Line Tools are required for Git and Homebrew)
2. `git clone https://github.com/ellyloel/dotfiles.git ~/.dotfiles`. We'll start with `https` but switch to `ssh` after everything is installed.
3. `cd ~/.dotfiles`
4. Do a software audit by editing [Brewfile](Brewfile) directly.
5. [`./install`](install)
6. Restart computer.
7. Run `mackup restore`. Consider doing a `mackup restore --dry-run --verbose` first.
8. [Generate ssh key](https://help.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh), add to GitHub, and switch remotes.

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
git remote set-url origin git@github.com:eieioxyz/dotfiles_macos.git
```

### Manual Steps

_to be continued..._
