
""basic setting
set noswapfile
set noundofile
set nobackup
set autoread
set showmode
set showcmd
set showmatch
set matchtime=1
set wildmenu
set incsearch
set hlsearch

""IME setting (for MacVim)
let IM_CtrlMode = 4
inoremap <silent> <C-j> <C-^><C-r>=IMState('FixMode')<CR>

""indent setting
set autoindent
set expandtab
set tabstop=4

""window setting
set laststatus=2
set number
set statusline=%F%r%h%=
let g:hybrid_use_iTerm_colors = 1
colorscheme hybrid
"miximizing gui window size
if has('gui_macvim')
  set lines=60 columns=200
  set guioptions-=T
endif
set display=lastline
set pumheight=10

""keyboard setting
set t_ku=OA
set t_kd=OB
set t_kl=OD
set t_kr=OC
noremap <BS> 
noremap! <BS> 
"imap <C-j> <esc>
set backspace=start,eol,indent

"""ctrl+p -> paste the content of clipboard
set clipboard+=unnamed
"set clipboard=unnamed
"imap <C-p>  <ESC>"*pa

"""Y replace $y
nnoremap Y y$

"""increment & decrement mapping
nnoremap + <C-a>
nnoremap - <C-x>

"""code copletion mapping
imap <Nul> <C-Space>
imap <C-Space> <C-x><C-o>

""mouse setting
set mouse=a

""font setting
set guifont=Osaka-Mono:h14

""syntax highlight setting
syntax on
set nohlsearch
set cursorline
let java_highlight_all=1
let java_highlight_debug=1
"highlight Normal ctermbg=black ctermfg=grey
highlight StatusLine term=none cterm=none ctermfg=black ctermbg=grey
highlight CursorLine term=none cterm=none ctermfg=none ctermbg=darkgray

""indent width setting
set shiftwidth=4

"set shell=c:/cygwin/bin/bash.exe

""encoding setting
set encoding=japan
set encoding=utf-8
set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
set fileformats=unix,dos,mac

""auto complete
set wildmenu wildmode=list:full

""plugin manager
if &compatible
  set nocompatible
endif
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

call dein#begin(expand('~/.vim/dein'))

call dein#add('Shougo/dein.vim')
call dein#add('Shougo/vimproc.vim', {'build': 'make'})
"call dein#add('Shougo/neomru.vim')
"call dein#add('Shougo/neosnippet')
call dein#add('Shougo/unite.vim')
call dein#add('Shougo/neocomplete.vim')
call dein#add('Shougo/deoplete.nvim')
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')
call dein#add('Shougo/vimshell.vim')
call dein#add('Shougo/vimproc.vim')
call dein#add('lervag/vim-latex')

"plugin: japanese ime control
call dein#add('fuenor/im_control.vim')

"plugin: evernote on vim
"call dein#add('kakkyz81/evervim')
"let g:evervim_devtoken='S=s13:U=15d509:E=1534ba7e19b:C=14bf3f6b270:P=1cd:A=en-devtoken:V=2:H=5f09f1c264a6878144902d9ea0d0f7b9'

"plugin: white space management
call dein#add('bronson/vim-trailing-whitespace')

"plugin: code searching ag (the_silver_searcher)
call dein#add('rking/ag.vim')

"plugin: git controll
call dein#add('tpope/vim-fugitive')
call dein#add('airblade/vim-gitgutter')
highlight clear SignColumn

"plugin: python settings
"" syntax check
call dein#add('vim-syntastic/syntastic')
let g:syntastic_python_checkers = ['python', 'flake8', 'mypy']
"" code complete
call dein#add('davidhalter/jedi-vim')
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
"" display indent
call dein#add('Yggdroot/indentLine')

"plugin: go setting
set rtp+=$GOROOT/misc/vim
call dein#add('fatih/vim-go')
call dein#add('zchee/deoplete-go')
"set completeopt=menu,preview
set completeopt=menuone,preview

call dein#end()

filetype plugin on
filetype indent on

