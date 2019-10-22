#!/usr/bin/zsh

setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

# Change history-substring-search to match only the beginning of commands
sed --in-place=.bak s/\\\*\\$\{escaped_query\}/\$\{escaped_query\}/ ${ZDOTDIR:-$HOME}/.zprezto/modules/history-substring-search/external/zsh-history-substring-search.zsh
