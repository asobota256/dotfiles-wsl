# This file is executed for interactive and non-interactive login shells.

# If the shell is interactive execute ~/.bashrc if it exists.
if [[ $- == *i* && -f ~/.bashrc ]]; then
  source ~/.bashrc
fi
