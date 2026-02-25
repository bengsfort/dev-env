# Main zsh config
# This gets loaded automatically after the zsh internals.
# Place stuff in here that needs to run in the .zshrc.

## Enable NVM and its auto completes
# TODO: Make this work in envs where there is no .config dir
export NVIM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && source "$NVM_DIR/nvm.sh"			# nvm: load
[ -s "$NVM_DIR/bash_completion" ] && source "$NVM_DIR/bash_completion"	# nvm: bash completions

## zshrc overloads ###
# TODO: I'm not really sure if this works. Need to test

ZSH_THEME="bengsfort"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="dd.mm"

## Overload audo-update behaviour
zstyle ':omz:update' mode auto
zstyle ':omz:update' frequency 13

echo "Completed zsh init"
