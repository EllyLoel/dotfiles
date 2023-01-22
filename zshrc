########## Fig pre block. Keep at the top of this file. ##########
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"

########## Set variables ##########
export ZSH="/Users/ellyloel/.oh-my-zsh"
export NULLCMD=bat
export DOTFILES="$HOME/.dotfiles"
export HOMEBREW_BUNDLE_FILE="$DOTFILES/Brewfile"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
# place this after nvm initialization!
autoload -U add-zsh-hook
load-nvmrc() {
  local nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$(nvm version)" ]; then
      nvm use
    fi
  elif [ -n "$(PWD=$OLDPWD nvm_find_nvmrc)" ] && [ "$(nvm version)" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc

########## Change ZSH Options ##########

# Adjust History Variables & Options
[[ -z $HISTFILE ]] && HISTFILE="$HOME/.zsh_history"
HISTSIZE=5000 # Session Memory Limit
SAVEHIST=4000 # File Memory Limit
setopt histNoStore
setopt extendedHistory
setopt histIgnoreAllDups
unsetopt appendHistory # explicit and unnecessary
setopt incAppendHistoryTime

# Line Editor Options (Completion, Menu, Directory, etc.)
# autoMenu & autoList are on by default
setopt autoCd
setopt globDots

# Disabling auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Disabling command auto-correction.
ENABLE_CORRECTION="false"
setopt correct

########## Loading plugins ##########
# Standard plugins are in $ZSH/plugins/ and custom plugins may be added to $ZSH_CUSTOM/plugins/
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

########## Setting aliases ##########
alias sail='[ -f sail ] && bash sail || bash vendor/bin/sail'
alias g='git'
alias y='yarn'
alias ls='exa -laFh --git'
alias exa='exa'
alias cz='cz --name cz_commitizen_emoji commit'
alias python='python3'
alias pip='pip3'
alias man=batman
alias bbd="brew bundle dump --force --describe"
# Load history into shell (shareHistory alternative)
alias lh='fc -RI; echo "loaded and showing..."; history;'

eval "$(starship init zsh)"

########## Add locations to $path array variable ##########
typeset -U path 
path=(
	$path
	"$HOME/.yarn/bin"
	"$HOME/.config/yarn/global/node_modules/.bin"
	"/Users/ellyloel/.local/bin"
	"/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
)

########## ##########

if [[ $TERM_PROGRAM != "WarpTerminal" ]]; then
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
fi

########## Fig post block. Keep at the bottom of this file. ##########
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"