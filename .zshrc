# Path to your oh-my-zsh installation.
export ZSH="/home/pf/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

plugins=(zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration

alias ll="exa -l"
alias la="exa -la"
alias ls="exa "
alias tree="exa --tree"
alias v="nvim"

#export PATH=$PATH:/usr/local/go/bin
#export PATH=$PATH:$HOME/go/bin
export FZF_DEFAULT_COMMAND='rg --files --follow --no-ignore-vcs --hidden -g "!{node_modules/*,.git/*}"'
