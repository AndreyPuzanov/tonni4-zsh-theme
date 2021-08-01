newline_indicator() {
   echo "%(?:%{$fg_bold[green]%}$(newline_icon):%{$fg_bold[red]%}$(newline_icon))"
}

newline_icon() {
    echo $'%B\u276f%b'
}

current_time() {
   echo "%{$fg[white]%}%*%{$reset_color%}"
}

dir() {
    echo "%{$fg[cyan]%}%0~%{$reset_color%}"
}

PROMPT='$(dir) $(git_prompt_info)
$(newline_indicator) '
RPROMPT='$(current_time) %(?:%{$fg_bold[green]%}%n:%{$fg_bold[red]%}%n)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}[%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}] %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%}]"


