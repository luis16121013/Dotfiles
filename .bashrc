#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ll="exa -l"
alias la="exa -la"
alias ls="exa "
alias tree="exa --tree"
alias v="nvim"

PS1='[\u@\h \W]\$ '
#export PATH=$PATH:/usr/local/go/bin
#export PATH=$PATH:$HOME/go/bin
export FZF_DEFAULT_COMMAND='rg --files --follow --no-ignore-vcs --hidden -g "!{node_modules/*,.git/*}"'
