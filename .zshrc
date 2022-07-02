export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="kolo"
CASE_SENSITIVE="true"
DISABLE_AUTO_TITLE="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh

alias v='nvim'
alias todo='nvim ~/todo.md'
alias config='/usr/bin/git --git-dir=$HOME/.myconf --work-tree=$HOME'

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
