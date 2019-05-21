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

set hlsearch
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
set softtabstop=2                                                           " spaces per tab
set tabstop=2                                                               " columns per tabs

" Change python paths
" let g:python_host_prog = '/home/evakuator/.config/.pyenv/versions/neovim2/bin/python2.7'
" let g:python3_host_prog = '/home/evakuator/.config/.pyenv/versions/neovim3/bin/python3.6'
let g:python_host_prog = '/usr/bin/python2'
let g:python3_host_prog = '/usr/bin/python3'


set autoread
set visualbell          " blink cursor on error, instead of beeping

"pum
set wildoptions=pum

set ignorecase


"change dire
set autochdir

set completeopt=longest,menuone








iabbrev gob (<cr><cr>)<up><tab>
iabbrev gar => {<cr><cr>}<up><tab>
iabbrev goc {<cr><cr>}<up><tab>
iabbrev gc {}<left>
iabbrev gb ()<left>
iabbrev gc {}<left>
iabbrev gs []<left>
iabbrev gcc {{}}<left><left>
iabbrev gss [[]]<left><left>
iabbrev gsb [()]<left><left>
iabbrev gbb (())<left><left>
iabbrev gt <><left>
iabbrev gp \|
iabbrev ga &
iabbrev gaa &&
iabbrev gpp \|\|
iabbrev bt ``<left>
iabbrev dl ${}<left>
iabbrev gq ''<left>
iabbrev dq ""<left>
iabbrev ggg >>
iabbrev gll <<
iabbrev gu _

" iabbrev gt < <>
