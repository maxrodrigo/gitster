# vim:et sts=2 sw=2 ft=zsh
#
# Gitster theme without dependencies

setopt nopromptbang prompt{cr,percent,sp,subst}

autoload -Uz vcs_info

zstyle ':vcs_info:*' enable git cvs svn hg
zstyle ':vcs_info:*' check-for-changes true

zstyle ':vcs_info:*' stagedstr '%F{green}●%f '
zstyle ':vcs_info:*' unstagedstr '%F{red}●%f '
zstyle ':vcs_info:git*' formats '%F{2}%b%F{3} %F{1}%m%u%c'

precmd() { vcs_info }

vcs_info_wrapper() {
  if [ -n "$vcs_info_msg_0_" ]; then
    echo "${vcs_info_msg_0_}"
  fi
}

_prompt_gitster_pwd() {
  local git_root current_dir
  if git_root=$(command git rev-parse --show-toplevel 2>/dev/null); then
    current_dir="${PWD#${git_root:h}/}"
  else
    current_dir=${(%):-%~}
  fi
  print -n "%F{white}${current_dir}"
}

PS1='%(?:%F{green}:%F{red})➜ $(_prompt_gitster_pwd) $(vcs_info_wrapper)%f'
unset RPS1
