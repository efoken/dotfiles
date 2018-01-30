export PHP_VERSION=`cat Brewfile | grep 'homebrew\/php\/php\d\d' | grep -o 'php\d\d'`
export PATH="$(brew --prefix homebrew/php/$PHP_VERSION)/bin:$PATH"
