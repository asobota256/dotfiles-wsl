# This file is executed by interactive, non-login shells.
# It's also sourced by interactive login shells (see ~/.bash_profile).

# Vi-mode line editing (readline).
set -o vi

# Refresh $LINES and $COLUMNS after commands (fixes stale size after resize).
shopt -s checkwinsize

# Disable completion on empty input.
shopt -s no_empty_cmd_completion

# Disable writing bash history to a file.
unset HISTFILE

# Disable writing less history to a file.
export LESSHISTFILE=-

# Default text editor, used by some tools.
export EDITOR="vim"

# Set the prompt to show '#' for root (red and and bold/bright),
# and '$' for non-root users (blue and bold/bright).
if [ ${EUID} -eq 0 ]; then
  PS1='\[\e[1;31m\]\$\[\e[0m\] '
else
  PS1='\[\e[1;34m\]\$\[\e[0m\] '
fi

alias cp='cp --interactive --verbose'
alias ln='ln --interactive --verbose'
alias mv='mv --interactive --verbose'
alias rm='rm --interactive --verbose'

alias mkdir='mkdir --parents --verbose'
alias rmdir='rmdir --verbose'

alias ls='ls --color --group-directories-first --human-readable'

alias df='df --human-readable --print-type'
alias du='du --human-readable --summarize'

#alias chattr='chattr -V'
alias chgrp='chgrp --verbose'
alias chmod='chmod --verbose'
alias chown='chown --verbose'

#alias fuser='fuser --all --verbose'

alias cat='cat --number'
alias cmp='cmp --print-bytes --verbose'
alias diff='diff --color --report-identical-files'
alias grep='grep --color'

#alias split='split --verbose'

alias cal='cal --color --monday'

alias make='make --warn-undefined-variables'

alias bc='bc --quiet --warn'
