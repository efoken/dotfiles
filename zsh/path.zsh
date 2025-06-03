export RUBY_VERSION=`ruby -v | perl -ne '/ruby (\d+\.\d+\.\d+)/; print "$1";'`
export ANDROID_HOME="$HOME/Library/Android/sdk"
export JAVA_HOME="/Applications/Android Studio.app/Contents/jbr/Contents/Home"
export PATH="/usr/local/sbin:$ZSH/bin:$HOME/.gem/ruby/$RUBY_VERSION/bin:/opt/homebrew/opt/rustup/bin:$PATH:$ANDROID_HOME/emulator:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools"
