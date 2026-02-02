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
if [[ ${EUID} -eq 0 ]]; then
  PS1='\[\e[1;31m\]\$\[\e[0m\] '
else
  PS1='\[\e[1;34m\]\$\[\e[0m\] '
fi
