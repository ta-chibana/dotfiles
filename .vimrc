"---------------------------
" 基本設定
"---------------------------
set nocompatible
set encoding=utf-8              " Vimの内部文字コードをutf-8に設定
set number				        	    " 行番号表示	
set ruler                       " カーソル位置表示
set tabstop=2			        	    " タブ文字の幅
set shiftwidth=2	        	    " 自動インデント幅
set autoindent		        	    " 改行時インデント継続
set expandtab			         	    " タブ文字をスペースに
set backspace=start,eol,indent  " BSキー設定
set hlsearch                    " 検索文字のハイライト
set incsearch                   " インクリメンタルサーチ
set visualbell                  " ビープ音消去
syntax on                       " シンタックスハイライトon

" 補完の色
hi Pmenu ctermbg = cyan
hi PmenuSel ctermbg = darkcyan
hi PmenuSbar ctermbg = cyan
hi PmenuThumb ctermbg = blue

" vimカラースキームの設定
colorscheme solarized
set background=dark

"---------------------------
" emmet-vim
"---------------------------
let g:user_emmet_leader_key='<c-e>'
let g:surround_{char2nr('-')} = "<% \r %>"
let g:surround_{char2nr('=')} = "<%= \r %>"
let g:user_emmet_settings = {
		\			'variables': {
		\					'lang': "ja"
		\			}
		\	}

"---------------------------
" NeoBundle
"---------------------------
set runtimepath+=~/.vim/bundle/neobundle.vim/
 
call neobundle#begin(expand('~/.vim/bundle/'))
  
" neobundle自体をneobundleで管理
NeoBundleFetch 'Shougo/neobundle.vim'
   
NeoBundle 'Townk/vim-autoclose'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'tpope/vim-rails'
NeoBundle 'tpope/vim-surround'

" ドキュメント参照
NeoBundle 'thinca/vim-ref'
NeoBundle 'yuku-t/vim-ref-ri'

" メソッド定義元へのジャンプ
NeoBundle 'szw/vim-tags'

" 自動で閉じる
NeoBundle 'tpope/vim-endwise'

" Slim syntax highlight
NeoBundle 'slim-template/vim-slim'

" CoffeeScript syntax highlight
NeoBundle 'kchmck/vim-coffee-script'

call neobundle#end()
     
filetype plugin indent on
      
" 未インストールプラグインチェック
NeoBundleCheck

