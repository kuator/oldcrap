autocmd VimEnter * echo "<^.^>"
filetype plugin indent on


syntax on
set autowrite
set clipboard=unnamedplus
set nowrap
set hidden
set number relativenumber
set numberwidth=3
set nobackup
set noswapfile
set incsearch
set modelines=0
set ruler

" Whitespace
set wrap
set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set expandtab
set noshiftround
set smarttab
autocmd FileType ruby setlocal expandtab shiftwidth=2 tabstop=2
autocmd FileType eruby setlocal expandtab shiftwidth=2 tabstop=2
set splitbelow
set splitright

" Status bar
set laststatus=2

" Last line
set showmode
set showcmd
set background=dark
set autochdir

let g:python_host_prog = '/usr/bin/python2'
let g:python3_host_prog = '/usr/bin/python3'

set ignorecase
set smartcase
set nowrap


set wildoptions=pum
set pumblend=20

" Invisible characters
set list
set listchars=tab:»\ ,trail:•,nbsp:~                                        " Display invisible characters
set autoread
