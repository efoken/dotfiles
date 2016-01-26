alias reload!='. ~/.zshrc'

# Look for yaourt, and add some useful functions if we have it.
if (( $+commands[yaourt] )); then
    alias y='yaourt'
    alias lsorphans='y -Qqdt'
    alias rmorphans='y -Rcs $(y -Qqdt)'
fi

alias ..='cd ..'
alias :q='exit'

# Correct some typos that I make often :-)
alias gerp='grep'
alias sl='ls'
alias vm='mv'

# GRC colorizes nifty unix tools all over the place
if (( $+commands[grc] )); then
    if (( $+commands[brew] )); then
        source `brew --prefix`/etc/grc.bashrc
    else
        alias grc='grc -es --colour=auto'
        alias as='grc as'
        alias df='grc df'
        alias diff='grc diff'
        alias dig='grc dig'
        alias g++='grc g++'
        alias gas='grc gas'
        alias gcc='grc gcc'
        alias head='grc head'
        alias ld='grc ld'
        alias make='grc make'
        alias mount='grc mount'
        alias mtr='grc mtr'
        alias netstat='grc netstat'
        alias ping='grc ping'
        alias ps='grc ps'
        alias tail='grc tail'
        alias traceroute='grc traceroute'
    fi
fi
