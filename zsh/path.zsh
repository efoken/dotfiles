export RUBY_VERSION=`ruby -v | perl -ne '/ruby (\d+\.\d+\.\d+)/; print "$1";'`
export GOPATH=$HOME/.go
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=/usr/local/sbin:$ZSH/bin:$HOME/.gem/ruby/$RUBY_VERSION/bin:$GOPATH/bin:/usr/local/opt/curl/bin:/usr/local/opt/openssl/bin:$PATH:$ANDROID_HOME/emulator:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools
