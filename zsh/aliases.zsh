alias reload!='. ~/.zshrc'

# Look for yaourt, and add some useful functions if we have it.
if (( $+commands[yaourt] )); then
    alias y='yaourt'
    alias lsorphans='y -Qqdt'
    alias rmorphans='y -Rcs $(y -Qqdt)'
fi

alias ..='cd ..'
alias cd..='cd ..'
alias :q='exit'

# Correct some typos that I make often :-)
alias gerp='grep'
alias sl='ls'
alias vm='mv'

# GRC colorizes nifty unix tools all over the place
if (( $+commands[grc] )) && (( $+commands[brew] )); then
    source `brew --prefix`/etc/grc.bashrc
fi
