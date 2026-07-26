# Main zsh config
# This gets loaded automatically after the zsh internals.

## zshrc overloads ###

ZSH_THEME="bengsfort"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="dd.mm"

## Overload audo-update behaviour
zstyle ':omz:update' mode auto
zstyle ':omz:update' frequency 13

## Initializations ##

export GPG_TTY=$(tty) 					# gpg: init
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"	# homebrew: init
source "$HOME/.cargo/env"				# cargo: init

## Enable unprefixed homebrew utils
PATH="/home/linuxbrew/.linuxbrew/opt/coreutils/libexec/gnubin:$PATH"

## Enable NVM and its auto completes
# TODO: Make this work in envs where there is no .config dir
export NVIM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && source "$NVM_DIR/nvm.sh"			# nvm: load
[ -s "$NVM_DIR/bash_completion" ] && source "$NVM_DIR/bash_completion"	# nvm: bash completions

echo "zsh main completed"
