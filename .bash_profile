# Custom commands

# Redefine cd to list folder contents
function cd() { builtin cd "$@" && ls --color=always; }
function gca() { git add --all && git commit; }

alias mkdir="mkdir -p"
alias ls="ls --color=always"
alias la="ls -a --color=always"
alias vi="nvim"
alias cu="cd .."

# DEFAULTS

export VISUAL=nvim
export EDITOR="$VISUAL"
