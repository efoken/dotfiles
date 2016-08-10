export RUBY_VERSION=`ruby -v | perl -ne '/ruby (\d+\.\d+\.\d+)/; print "$1";'`
export PATH=$ZSH/bin:$HOME/.gem/ruby/$RUBY_VERSION/bin:$PATH
