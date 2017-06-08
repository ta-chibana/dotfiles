source /usr/local/etc/bash_completion.d/git-prompt.sh

PROMPT='%c $ '

if [ -f ~/.zsh_aliases ] ; then
  . ~/.zsh_aliases
fi

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt hist_ignore_dups
setopt share_history

function peco-history-selection() {
    BUFFER=`history -n 1 | tail -r  | awk '!a[$0]++' | peco`
    CURSOR=$#BUFFER
    zle reset-prompt
}

zle -N peco-history-selection
bindkey '^R' peco-history-selection

