autoload -U compinit
compinit

eval "$(rbenv init -)"
export PATH=/usr/local/bin:$PATH

export PATH="$HOME/.yarn/bin:$PATH"

export PATH="$HOME/.goenv/bin:$PATH"
eval "$(goenv init -)"

export PATH="/usr/local/heroku/bin:$PATH"
export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"

export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"
eval "$(direnv hook zsh)"
