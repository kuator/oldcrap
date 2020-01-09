"*****************************************************************************
"" Vim-PLug core
"*****************************************************************************
let vimplug_exists=expand('~/.vim/autoload/plug.vim')

if !filereadable(vimplug_exists)
  if !executable("curl")
    echoerr "You have to install curl or first install vim-plug yourself!"
    execute "q!"
  endif
  echo "Installing Vim-Plug..."
  echo ""
  silent exec "!\curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
  let g:not_finish_vimplug = "yes"

  autocmd VimEnter * PlugInstall
endif

call plug#begin(expand('~/.vim/plugged'))

" (Optional) Multi-entry selection UI.
Plug 'junegunn/fzf'

Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-surround'
Plug 'hail2u/vim-css3-syntax'
Plug 'othree/html5.vim'
Plug 'mattn/emmet-vim'
Plug 'flazz/vim-colorschemes'
Plug 'godlygeek/tabular'
Plug 'tpope/vim-rsi'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-line'
Plug 'wellle/targets.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'SirVer/ultisnips'
Plug 'w0rp/ale'
Plug 'liuchengxu/vim-clap'
Plug 'desmap/slick'


if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1

Plug 'autozimu/LanguageClient-neovim', {
      \ 'branch': 'next',
      \ 'do': 'bash install.sh',
      \ }

call plug#end()

runtime macros/matchit.vim
set nocompatible
set clipboard=unnamedplus
inoremap kj <esc>
vnoremap y ygv<Esc>
nnoremap ' `
omap ' `
map s <nop>

" Tabulation and spaces
set expandtab                                                               " Show spaces instead of tabs
set shiftwidth=0                                                            " columns per <<
set softtabstop=2                                                           " spaces per tab
set tabstop=2                                                               " columns per tabs
set autoindent
set smartindent
set number
set relativenumber
set incsearch
set nowrap
set ignorecase
set smartcase
set mouse=n
set nobackup
set nowritebackup
set noswapfile
set splitbelow
set splitright

"https://vim.fandom.com/wiki/Change_cursor_shape_in_different_modes
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

syntax enable
filetype plugin indent on
set termguicolors
set hlsearch
colorscheme gruvbox
set bg=dark


hi! Normal ctermbg=NONE guibg=NONE
hi! NonText ctermbg=NONE guibg=NONE
hi! LineNr guifg=white guibg=NONE
hi! SignColumn guibg=NONE ctermbg=NONE
hi! EndOfBuffer ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
hi! CursorLineNr ctermbg=NONE guibg=NONE
hi! Pmenusel guifg=white guibg=#504945
hi! Comment guifg=#ABaaaa



let mapleader=" "
inoreabbr lam =>
inoreabbr far =>
inoreabbr tar ->
set ttimeoutlen=50
tnoremap <esc> <C-\><C-n>
nnoremap <silent><c-l> <c-l>:nohl<cr>
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
set signcolumn=yes
set hidden
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=300
set shortmess+=c
set signcolumn=yes
set wildmenu
set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.png,*.ico
set wildignore+=*.pdf,*.psd
set wildignore+=node_modules/*,bower_components/*
" set scrolloff=5       " Start scrolling n lines before horizontal
" set sidescrolloff=7   " Start scrolling n chars before end of screen.
set wildcharm=<C-z>
set hidden


let g:user_emmet_install_global = 0
let g:user_emmet_leader_key=','
autocmd FileType html,css EmmetInstall


let g:LanguageClient_serverCommands = {
      \ 'javascript': ['typescript-language-server', '--stdio'],
      \ 'typescript': ['typescript-language-server', '--stdio'],
      \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
      \ 'javascript.jsx': ['tcp://127.0.0.1:2089'],
      \ 'python': ['pyls'],
      \ 'ruby': ['solargraph', 'stdio'],
      \ 'cpp': ['ccls', '--log-file=/tmp/cq.log'],
      \ }

nnoremap <leader>mn :call LanguageClient_contextMenu()<CR>
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> <leader>gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <leader>rn :call LanguageClient#textDocument_rename()<CR>
" Automatically start language servers.
let g:LanguageClient_autoStart = 1

set pyxversion=3

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-l>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"

nnoremap <silent> <leader><leader> :Clap files<cr>
set laststatus=2

" Targets.vim
let g:targets_nl = 'nN'

let g:clap_disable_run_rooter = 1
