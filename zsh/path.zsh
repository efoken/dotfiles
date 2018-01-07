export RUBY_VERSION=`ruby -v | perl -ne '/ruby (\d+\.\d+\.\d+)/; print "$1";'`
<<<<<<< Updated upstream
export GOPATH=$HOME/.go
export PATH=$ZSH/bin:$HOME/.gem/ruby/$RUBY_VERSION/bin:$GOPATH/bin:$PATH
=======
export PATH="$(brew --prefix homebrew/php/php70)/bin:$ZSH/bin:$HOME/.gem/ruby/$RUBY_VERSION/bin:$PATH"
>>>>>>> Stashed changes
