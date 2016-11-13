# Gitの補完を有効に
source /usr/local/etc/bash_completion.d/git-prompt.sh
source /usr/local/etc/bash_completion.d/git-completion.bash

if [ -f ~/.bash_aliases ] ; then
  . ~/.bash_aliases
fi

if [[ -s ~/.nvm/nvm.sh ]];
  then source ~/.nvm/nvm.sh
fi
