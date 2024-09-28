eval "$(~/homebrew/bin/brew shellenv)"

# VIM
alias v="nvim"
alias vim="nvim"

# GIT
alias gs='git status'
alias gl='git log'
alias gc='git commit'
alias gp='git push'
alias gco='git checkout'
alias gb='git branch'
alias go='git show'
alias ga='git add'

# Modules
source ~/antigen.zsh

antigen use oh-my-zsh
antigen bundle agkozak/zsh-z

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
