set encoding=utf-8
set fileencodings=utf-8,sjis,euc-jp
set number
set ruler
set tabstop=2
set softtabstop=2
set shiftwidth=2
set autoindent
set expandtab
set backspace=start,eol,indent
set hlsearch
set incsearch
set visualbell
set ignorecase
set smartcase
set wildmenu wildmode=list:full
set noswapfile
set synmaxcol=320
set hidden
set clipboard=unnamed " yank した文字列をクリップボードにコピー

set ttimeout
set ttimeoutlen=50

syntax on

augroup fileTypeIndent
  autocmd!
  autocmd BufNewFile,BufRead *.go setlocal tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab
  autocmd BufNewFile,BufRead *.md setlocal tabstop=4 softtabstop=4 shiftwidth=4 expandtab
augroup END

filetype plugin indent on
