#!/usr/bin/env zsh
# George Ornbo (shapeshed) http://shapeshed.com
# License - http://unlicense.org
#
# Fixes a corrupt .zsh_history file

mv ~/.cache/zsh/history ~/.cache/zsh/zsh_history_bad
strings -eS ~/.cache/zsh/zsh_history_bad > ~/.cache/zsh/history
fc -R ~/.cache/zsh/history
rm ~/.cache/zsh/zsh_history_bad
