###
# ZSH
#

# enable the default zsh completions
autoload -Uz compinit && compinit
# cd without cd
setopt AUTO_CD
# .zsh history
export HISTFILE=${ZDOTDIR:-$HOME}/.zsh_history
setopt EXTENDED_HISTORY
export SAVEHIST=5000
export HISTSIZE=2000
# share history across multiple zsh sessions
setopt SHARE_HISTORY
# append to history
setopt APPEND_HISTORY
# adds commands as they are typed, not at shell exit
setopt INC_APPEND_HISTORY
# expire duplicates first
setopt HIST_EXPIRE_DUPS_FIRST 
# do not store duplications
setopt HIST_IGNORE_DUPS
#ignore duplicates when searching
setopt HIST_FIND_NO_DUPS
# removes blank lines from history
setopt HIST_REDUCE_BLANKS
# enable corrections
setopt CORRECT
setopt CORRECT_ALL

zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fpath=(~/.zsh $fpath)

eval "$(starship init zsh)"

###
# ALIASES
###

alias ls='ls -GwF'
alias ll='ls -alh'

alias zshrc='code ~/.zshrc'
alias gitconfig='code ~/.gitconfig'
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

###
# GCLOUD SDK
###

# The next line updates PATH for the Google Cloud SDK.
source ~/google-cloud-sdk/path.zsh.inc
export CLOUDSDK_PYTHON="/usr/bin/python3"

# The next line enables zsh completion for gcloud.
source ~/google-cloud-sdk/completion.zsh.inc

###
# VOLTA
###
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

