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
set cursorline

hi Pmenu ctermbg = cyan
hi PmenuSel ctermbg = darkcyan
hi PmenuSbar ctermbg = cyan
hi PmenuThumb ctermbg = blue

colorscheme solarized
set background=dark

inoremap { {}<ESC>i
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap ( ()<ESC>i
inoremap (<Enter> ()<Left><CR><ESC><S-o>
inoremap [ []<ESC>i
inoremap [<Enter> []<Left><CR><ESC><S-o>
inoremap ( ()<ESC>i
inoremap " ""<ESC>i
inoremap ' ''<ESC>i

runtime macros/matchit.vim

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
" ctrlp
"---------------------------
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']


"---------------------------
" Unite & ag
"---------------------------
let g:unite_enable_start_insert = 1
let g:unite_enable_ignore_case = 1
let g:unite_enable_smart_case = 1

nnoremap <silent> ,g  :<C-u>Unite grep:. -buffer-name=search-buffer<CR>
nnoremap <silent> ,cg :<C-u>Unite grep:. -buffer-name=search-buffer<CR><C-R><C-W>
nnoremap <silent> ,r  :<C-u>UniteResume search-buffer<CR>

if executable('ag')
  let g:unite_source_grep_command = 'ag'
  let g:unite_source_grep_default_opts = '--nogroup --nocolor --column'
  let g:unite_source_grep_recursive_opt = ''
endif

"---------------------------
" Dein.vim
"---------------------------
set runtimepath+=~/.vim/dein.vim

call dein#begin(expand('~/.vim/dein/'))

call dein#add('tpope/vim-rails')
call dein#add('tpope/vim-surround')
call dein#add('mattn/emmet-vim')
call dein#add('tpope/vim-endwise')
call dein#add('tpope/vim-fugitive')

" Slim syntax highlight
call dein#add('slim-template/vim-slim')

" CoffeeScript syntax highlight
call dein#add('kchmck/vim-coffee-script')

" preview markdown
call dein#add('kannokanno/previm')
call dein#add('tyru/open-browser.vim')

call dein#add('scrooloose/nerdtree')
call dein#add('othree/yajs.vim')
call dein#add('ctrlpvim/ctrlp.vim')
call dein#add('Shougo/unite.vim')
call dein#add('Shougo/vimproc.vim', {'build' : 'make'})

if dein#check_install()
  call dein#install()
endif

syntax on

filetype plugin indent on
