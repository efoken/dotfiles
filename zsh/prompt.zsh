autoload -U colors && colors

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[magenta]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=")"

if type workon >/dev/null 2>&1; then
    VENV_WRAPPER=true
else
    VENV_WRAPPER=false
fi

function virtualenv_auto_activate() {
    if [ -e ".venv" ]; then
        # Check for symlink pointing to virtualenv
        if [ -L ".venv" ]; then
            _VENV_PATH=$(readlink .venv)
            _VENV_WRAPPER_ACTIVATE=false
        # Check for directory containing virtualenv
        elif [ -d ".venv" ]; then
            _VENV_PATH=$(pwd -P)/.venv
            _VENV_WRAPPER_ACTIVATE=false
        # Check for file containing name of virtualenv
        elif [ -f ".venv" -a $VENV_WRAPPER = "true" ]; then
            _VENV_PATH=$WORKON_HOME/$(cat .venv)
            _VENV_WRAPPER_ACTIVATE=true
        else
            return
        fi

        # Check to see if already activated to avoid redundant activating
        if [ "$VIRTUAL_ENV" != $_VENV_PATH ]; then
            if $_VENV_WRAPPER_ACTIVATE; then
                _VENV_NAME=$(basename $_VENV_PATH)
                workon $_VENV_NAME
            else
                _VENV_NAME=$(basename `pwd`)
                VIRTUAL_ENV_DISABLE_PROMPT=1
                source .venv/bin/activate
                _OLD_VIRTUAL_PS1="$PS1"
                PS1="($_VENV_NAME) $PS1"
                export PS1
            fi
            echo Activated virtualenv \"$_VENV_NAME\".
        fi
    fi
}

export PROMPT_COMMAND=virtualenv_auto_activate

function chpwd() {
    virtualenv_auto_activate
}

export PROMPT='%n@%m %{$fg_bold[blue]%}%~%b$(git_prompt_info) %{$fg_bold[blue]%}%#%{$reset_color%} '
