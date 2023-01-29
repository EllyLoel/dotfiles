#!/usr/bin/env zsh

echo "\n<<< Starting ZSH Setup >>>\n"

# Installation unnecessary; it's in the Brewfile.

# https://stackoverflow.com/a/4749368/1341838
if grep -Fxq '/opt/homebrew/bin/zsh' '/etc/shells'; then
  echo '/opt/homebrew/bin/zsh already exists in /etc/shells'
else
  echo "Enter superuser (sudo) password to edit /etc/shells"
  echo '/opt/homebrew/bin/zsh' | sudo tee -a '/etc/shells' >/dev/null
fi


if [ "$SHELL" = '/opt/homebrew/bin/zsh' ]; then
  echo '$SHELL is already /opt/homebrew/bin/zsh'
else
  echo "Enter user password to change login shell"
  chsh -s '/opt/homebrew/bin/zsh'
fi

if exists omz; then
  echo "oh my zsh exists, skipping install"
else
  echo "oh my zsh doesn't exist, continuing with install"
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi