# Fix OSX using old gnubins
$(brew --prefix coreutils)/libexec/gnubin

export ZSH=/Users/xo/.oh-my-zsh

ZSH_THEME="robbyrussell"

export UPDATE_ZSH_DAYS=1

plugins=(git)

# Make nvm load only when needed
export NVM_LAZY_LOAD=true
plugins+=(zsh-nvm)

source ~/.git-flow-completion.zsh
source $ZSH/oh-my-zsh.sh

export LANG=en_AU.UTF-8
export EDITOR='nano'
export SSH_KEY_PATH="~/.ssh/rsa_id"

alias changed="git diff HEAD"
alias doclogs="docker logs -f --tail=100 $1"
alias see="tree -a -I .git" # Kinda like ls but magical
alias socks="~/bin/socks"
alias size="~/bin/size"
alias update_node="~/bin/update_node"

# Allow fuck to fix commands
eval "$(thefuck --alias)"

# Travis
[ -f /Users/xo/.travis/travis.sh ] && source /Users/xo/.travis/travis.sh

# Fix yarn globals
export PATH="$PATH:`yarn global bin`:$HOME/.config/yarn/global/node_modules/.bin"
