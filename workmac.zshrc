# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="theunraveler"
export ZSH=~/.oh-my-zsh
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# >et list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# >uch, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
  wd
)

source ${ZSH}/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vi'
else
  export EDITOR='nvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshrc="nvim ~/dotfiles/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias v="nvim"

# Git
alias g="git"
alias gs="git status"
alias gac="git add --all && git commit"
alias gap="git add --all && git commit && git push"
alias gnah="git reset --hard && git clean -df"

# Docker
alias dk="docker"
alias dps="docker ps"
function dport() {docker inspect "$1" | grep 'IPAddress'} 
alias dcom="docker-compose"

alias fystart="docker start fydeployment_pegasus_1 fydeployment_fyh-website_1 fydeployment_productservice_1 fydeployment_mockserver_1 fydeployment_my-account_1 fydeployment_stripe_1"
alias fystop="docker stop fydeployment_pegasus_1 fydeployment_fyh-website_1 fydeployment_productservice_1 fydeployment_mockserver_1 fydeployment_my-account_1 fydeployment_stripe_1"

# Node
alias ns="npm start"
alias nt="npm test"

# Warp
alias wa="wd rm working && wd add working"
alias w="wd working"
alias b="cd -"

# Mysql/MariaDB
alias mstart="brew services start mariadb"
alias mstop="brew services stop mariadb"

# Typos
alias sl="ls"
alias al="la"

# Misc
alias diff="colordiff"
alias t="tree"


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"