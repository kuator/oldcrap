autocmd VimEnter * echo "<^.^>"
filetype plugin indent on
syntax on
set clipboard=unnamedplus
set hidden
set number relativenumber
set nobackup
set noswapfile
set incsearch
set modelines=0
set ruler
set ignorecase
set smartcase
set nowrap

set wildoptions=pum
set pumblend=20
set autoread

" Whitespace
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set expandtab
set splitbelow
set splitright

" Status bar
" set laststatus=2

" Last line
set showcmd
set autochdir

let g:python_host_prog = '/usr/bin/python2'
let g:python3_host_prog = '/usr/bin/python3'

" hate autoinserted comments
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
