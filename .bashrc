# Gitの補完を有効に
source /usr/local/etc/bash_completion.d/git-prompt.sh
source /usr/local/etc/bash_completion.d/git-completion.bash

## ブランチ名表示
#GIT_PS1_SHOWDIRTYSTATE=true

# export PS1='\h\[\033[00m\]:\W\[\033[31m\]$(__git_ps1 [%s])\[\033[00m\]\$ '

# MacVim消去した名残
# export EDITOR=/Applications/MacVim.app/Contents/MacOS/Vim

# 追加するとコマンド認識しなくなります
# なぜ追加した？
#   -> おそらくこの前に読み込まれてた$PATHがすべて消えていた？
# export PATH=/usr/local/bin:/usr/bin

if [ -f ~/.bash_aliases ] ; then
  . ~/.bash_aliases

fi

