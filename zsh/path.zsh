export RUBY_VERSION=`ruby -v | perl -ne '/ruby (\d+\.\d+\.\d+)/; print "$1";'`
export GOPATH=$HOME/.go
export PATH=/usr/local/sbin:$ZSH/bin:$HOME/.gem/ruby/$RUBY_VERSION/bin:$GOPATH/bin:$PATH
