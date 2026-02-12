export PATH=/opt/homebrew/bin:$PATH

# nodenv
export PATH="$HOME/.nodenv/bin:$PATH"
eval "$(nodenv init -)"

# rbenv
eval "$(rbenv init -)"

# cargo
export PATH="$HOME/.cargo/bin:$PATH"

export PATH="$HOME/.local/bin:$PATH"

autoload bashcompinit && bashcompinit
autoload -Uz compinit && compinit
complete -C '/opt/homebrew/bin/aws_completer' aws

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt hist_ignore_dups
setopt share_history

# Aliases
alias ls="ls -GF"
alias ll="ls -l"
alias la="ls -A"

# Search history
function peco-history-selection() {
    BUFFER=`history -n 1 | tail -r  | awk '!a[$0]++' | peco`
    CURSOR=$#BUFFER
    zle reset-prompt
}

zle -N peco-history-selection
bindkey '^R' peco-history-selection
