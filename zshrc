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
alias gq='git add . && oco'

# GPT
alias sg="sgpt"
alias sgg="sgpt --chat main"
alias sq="sgpt sh --execute"

alias fs='git diff --cached | sgpt stdin "Analyze this diff for potential secrets like API keys, tokens, or passwords. Answer shortly - file and secret or answer no secrets"'
alias fc='git diff --cached | sgpt stdin "Analyze this git diff only added lines, ignoring changes already made (-codeline - is the removed code not to analyze), to find and highlight JS comments that are not suitable for production (such as TODOs, FIXME, temporary debug notes, or commented-out code that should be removed). Give a very short answer, and if no comments are found, just say: No comments."'
alias gaa='git add . && { fs; fc } & wait'

# Modules
source ~/antigen.zsh

antigen use oh-my-zsh
antigen bundle agkozak/zsh-z

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export $(grep -v '^#' ~/.env | xargs -0) > /dev/null 2>&1
source ~/.env set

# pnpm
export PNPM_HOME="/Users/dev/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
