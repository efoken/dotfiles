fpath=($ZSH/functions $fpath)
autoload -U $ZSH/functions/*(:t)

setopt AUTO_CD # cd if no matching command
setopt AUTO_PARAM_SLASH # adds slash at end of tabbed dirs
setopt MARK_DIRS # adds slash to end of completed dirs
setopt LOCAL_OPTIONS # allow functions to have local options
setopt LOCAL_TRAPS # allow functions to have local traps
setopt HIST_IGNORE_ALL_DUPS # don't record dupes in history
setopt HIST_REDUCE_BLANKS # remove superfluous blanks from each command

setopt IGNORE_EOF # ctrl+d doesn't quit terminal

# Don't expand aliases _before_ completion has finished
#   like: git comm-[tab]
setopt COMPLETE_ALIASES

zle -N newtab

bindkey '^[^[[D' backward-word
bindkey '^[^[[C' forward-word
bindkey '^[[5D' beginning-of-line
bindkey '^[[5C' end-of-line
bindkey '^[[3~' delete-char
bindkey '^[^N' newtab
bindkey '^?' backward-delete-char
