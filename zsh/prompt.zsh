autoload -U colors && colors

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[magenta]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=")"

export PROMPT='%n@%m %{$fg_bold[blue]%}%~%b$(git_prompt_info) %{$fg_bold[blue]%}%#%{$reset_color%} '
