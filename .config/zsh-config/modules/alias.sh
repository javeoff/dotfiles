alias als='vim ~/shared/shared-configs/shared-dotfiles/.config/zsh-config/modules/alias.sh'
alias r='rustc $1'

alias l='ls -la'
alias lsf='ls -laFGh'
alias lsa='ls -aril'
alias lsl='ls -1FSsh'
alias lsof='ls -lsof'

alias cat='ccat'
alias ss="zx $CONFIG_DIR/zsh-config/scripts/ssh.mjs"
alias bb='zx --quiet $CONFIG_DIR/zsh-config/scripts/branch.mjs'
alias dps='zx --quiet $CONFIG_DIR/zsh-config/scripts/docker-ps.mjs'

alias dud='du -d 1 -h'

alias vim='nvim'
alias v='nvim'
alias python='python3'
alias ws='open -a WebStorm'
alias rm='trash'

alias wsd='web_search duckduckgo'

alias a='fasd -a'        # any
alias s='fasd -si'       # show / search / select
alias d='fasd -d'        # directory
alias f='fasd -f'        # file
alias sd='fasd -sid'     # interactive directory selection
alias sf='fasd -sif'     # interactive file selection
# alias z='fasd_cd -d'     # cd, same functionality as j in autojump
alias zz='fasd_cd -d -i' # cd with interactive selection

# Tasks
alias t='task'
alias ta='task add'
alias tl='task list'
alias tc='task context'
alias tcd='task context define'
alias tad='task $1 annotate $2'

# GPT
alias s='sgpt'
alias se='sgpt --shell'
alias sd='sgpt --repl temp'
alias sf='sgpt --repl friend'
