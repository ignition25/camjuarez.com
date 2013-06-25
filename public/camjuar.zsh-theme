local user_host='%{$terminfo[bold]$fg[green]%}%n@%m%{$reset_color%}'
local git_prompt='$(git_prompt_info)'

PROMPT="╭─${user_host} %{$fg_bold[red]%}➜ %{$fg[green]%}%p %{$fg[cyan]%}%c %{$fg_bold[blue]%}${git_prompt}%{$fg_bold[blue]%} % %{$reset_color%}
╰─%B$%b"

ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
