# Modified version of getting the nvm controlled node version to give shorter version
function nvm_prompt_info() {
	which nvm &>/dev/null || return
	echo "${ZSH_THEME_NVM_PROMPT_PREFIX}$(nvm current | cut -d. -f1)${ZSH_THEME_NVM_PROMPT_SUFFIX}"
}

echo "Loaded zsh internals patches"
