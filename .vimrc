"---------------------------
" 基本設定
"---------------------------
set nocompatible
set encoding=utf-8                  " Vimの内部文字コードをutf-8に設定
set fileencodings=utf-8,sjis,euc-jp " 読み込み時の文字コード設定
set number                          " 行番号表示
set ruler                           " カーソル位置表示
set tabstop=2                       " ハードタブの幅
set softtabstop=2                   " ソフトタブの幅
set shiftwidth=2                    " 自動インデント幅
set autoindent                      " 改行時インデント継続
set expandtab                       " タブ文字をスペースに
set backspace=start,eol,indent      " BSキー設定
set hlsearch                        " 検索文字のハイライト
set incsearch                       " インクリメンタルサーチ
set visualbell                      " ビープ音消去
set ignorecase                      " 大文字小文字の区別を無視
set smartcase                       " ignorecaseを大文字の有無で自動適用
set wildmenu wildmode=list:full     " ファイルをリスト表示
set noswapfile                      " swapファイルを作成しない

" 補完の色
hi Pmenu ctermbg = cyan
hi PmenuSel ctermbg = darkcyan
hi PmenuSbar ctermbg = cyan
hi PmenuThumb ctermbg = blue

" vimカラースキームの設定
colorscheme solarized
set background=dark

" 括弧, クオート補完
inoremap { {}<ESC>i
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap ( ()<ESC>i
inoremap (<Enter> ()<Left><CR><ESC><S-o>
inoremap [ []<ESC>i
inoremap [<Enter> []<Left><CR><ESC><S-o>
inoremap ( ()<ESC>i
inoremap " ""<ESC>i
inoremap ' ''<ESC>i

"---------------------------
" emmet-vim
"---------------------------
let g:user_emmet_leader_key='<c-e>'
let g:surround_{char2nr('-')} = "<% \r %>"
let g:surround_{char2nr('=')} = "<%= \r %>"
let g:user_emmet_settings = {
    \   'variables': {
    \     'lang': "ja"
    \   }
    \ }

"---------------------------
" NERDTree
"---------------------------
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"---------------------------
" Dein.vim
"---------------------------

set runtimepath+=~/.vim/dein.vim

call dein#begin(expand('~/.vim/dein/'))

call dein#add('tpope/vim-rails')
call dein#add('tpope/vim-surround')
call dein#add('mattn/emmet-vim')

" end 補完
call dein#add('tpope/vim-endwise')

" Slim syntax highlight
call dein#add('slim-template/vim-slim')

" CoffeeScript syntax highlight
call dein#add('kchmck/vim-coffee-script')

call dein#add('scrooloose/nerdtree')

call dein#add('pangloss/vim-javascript')

call dein#end()

if dein#check_install()
  call dein#install()
endif

syntax on " シンタックスハイライトon

filetype plugin indent on
