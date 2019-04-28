set clipboard=unnamedplus
set nowrap "nowrap
syntax on "syntax highlighting
set encoding=utf-8 "utf-8 support
set showmode
set showcmd
set laststatus=2
set matchpairs+=<:>
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:.
set number
set relativenumber
" set statusline=%f%m%r%h%w\ [format=%{&ff}]\ [type=%y]\ [pos=%l,%v][%p%%]\ [buffer=%n]\ %{strftime('%c')}
set statusline=%<%F\ %m%r%h%w%y%{'['.(&fenc!=''?&fenc:&enc).']['.&fileformat.']'}%=%l/%L,%c%V%8P
set encoding=utf-8

set hlsearch                                                                " highlight the search result
set ignorecase                                                              " Case insensitive search
set incsearch                                                               " Find as I type during the search
set smartcase                                                               " Case sensitive only if search contains uppercase letter.

set ttyfast

set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldmethod=indent   " fold based on indent level

filetype plugin indent on                                                   " Indentation based on filetype
set autoindent                                                              " Does not interfere with other indentation settings

set expandtab                                                               " Show spaces instead of tabs
set shiftwidth=0                                                            " columns per <<
set softtabstop=4                                                           " spaces per tab
set tabstop=4                                                               " columns per tabs

" Change python paths
let g:python_host_prog = '/home/evakuator/.config/.pyenv/versions/neovim2/bin/python2.7'
let g:python3_host_prog = '/home/evakuator/.config/.pyenv/versions/neovim3/bin/python3.6'


set autoread
set visualbell          " blink cursor on error, instead of beeping

"pum
set wildoptions=pum

set ignorecase


"change dire
set autochdir

set completeopt=longest,menuone
