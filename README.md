# Dev Env

My local development environment.

## Pre-requisites

1. Set up git ssh/gpg
1. Clone this repo
1. Install [ghostty](https://ghostty.org/download)
1. Install [homebrew](https://brew.sh)
1. Install [rust](https://rust-lang.org/learn/get-started/)

## Set up zsh

1. Install [zsh and oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh/wiki)
1. Make sure zsh is the default shell
1. Set the `ZSH_CUSTOM` var in the generated `.zshrc` to the the `zsh` directory in this repo
1. Update the plugins in the `.zshrc`: `git nvm`

## Install Node.js

1. Run the update script from [the docs](https://github.com/nvm-sh/nvm#install--update-script)
1. Make sure the shell is ready to go then install latest LTS and enable corepack

```sh
nvm install --lts
corepack enable pnpm
```

## Install common programs

1. Install homebrew formulae and casks from [`homebrew_formulas.sh`](./homebrew_formulas.sh)
