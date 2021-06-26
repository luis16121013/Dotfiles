#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias l="exa -l"
alias la="exa -la"
alias ls="exa "
alias tree="exa --tree"
alias v="nvim"
alias rfb="source ~/.bashrc"

# configs paths
alias cdcd="cd ~/.config/dwm"

PS1="\[$(tput bold)\]\[\033[38;5;198m\]{\[$(tput sgr0)\] \[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;225m\]\W\[$(tput sgr0)\] \[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;198m\]}\[$(tput sgr0)\] \[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;202m\]>\[$(tput sgr0)\]\[\033[38;5;214m\]>\[$(tput sgr0)\]\[\033[38;5;184m\]>\[$(tput sgr0)\] \[$(tput sgr0)\]"
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$HOME/go/bin
export FZF_DEFAULT_COMMAND='rg --files --follow --no-ignore-vcs --hidden -g "!{node_modules/*,.git/*}"'
