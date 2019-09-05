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
Plug 'amadeus/vim-convert-color-to'
Plug 'mattn/emmet-vim'
Plug 'flazz/vim-colorschemes'
Plug 'godlygeek/tabular'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-rsi'
Plug 'othree/html5.vim'
Plug 'tek/vim-textobj-ruby'
Plug 'kana/vim-textobj-user'
Plug 'jasonlong/vim-textobj-css'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-line'
Plug 'honza/vim-snippets'
Plug 'iandingx/leetcode.vim'
Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'wellle/targets.vim'
Plug 'SirVer/ultisnips'
Plug 'w0rp/ale'



if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'Shougo/denite.nvim'
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
" colorscheme OceanicNext
set background=dark
hi! Normal ctermbg=NONE guibg=NONE
hi! NonText ctermbg=NONE guibg=NONE
hi! LineNr guifg=white guibg=NONE
hi! SignColumn guibg=NONE ctermbg=NONE
hi! EndOfBuffer ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
hi! CursorLineNr ctermbg=NONE guibg=NONE
hi! Pmenusel guifg=white guibg=#504945
hi! Comment guifg=#ABaaaa

let mapleader=" "
set updatetime=100
inoreabbr lam =>
inoreabbr far =>
inoreabbr tar ->
set ttimeoutlen=50
tnoremap <esc> <C-\><C-n>
nnoremap <c-l> <c-l>:nohl<cr>
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
set signcolumn=yes
" if hidden is not set, TextEdit might fail.
set hidden
" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup
" Better display for messages
set cmdheight=2
" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300
" don't give |ins-completion-menu| messages.
set shortmess+=c
" always show signcolumns
set signcolumn=yes

" Show file options above the command line
set wildmenu
" Don't offer to open certain files/directories
set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.png,*.ico
set wildignore+=*.pdf,*.psd
set wildignore+=node_modules/*,bower_components/*

set scrolloff=5       " Start scrolling n lines before horizontal
" border of window.
set sidescrolloff=7   " Start scrolling n chars before end of screen.

" set foldmethod=syntax " syntax highlighting items specify folds

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-l>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
" let g:UltiSnipsJumpBackwardTrigger="<c-k>"

let g:user_emmet_install_global = 0
let g:user_emmet_leader_key=','
autocmd FileType html,css EmmetInstall
set wildcharm=<C-z>
" nnoremap ,e :e **/*<C-z><S-Tab>
" nnoremap ,f :find **/*<C-z><S-Tab>

set hidden

let g:LanguageClient_serverCommands = {
      \ 'javascript': ['typescript-language-server', '--stdio'],
      \ 'typescript': ['typescript-language-server', '--stdio'],
      \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
      \ 'javascript.jsx': ['tcp://127.0.0.1:2089'],
      \ 'python': ['pyls'],
      \ 'ruby': ['solargraph', 'stdio'],
      \ }

nnoremap <F5> :call LanguageClient_contextMenu()<CR>
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>
" Automatically start language servers.
let g:LanguageClient_autoStart = 1


let g:ale_linters = {
      \   'javascript': ['eslint'],
      \ }

call deoplete#custom#source('_', 'sorters', ['sorter_word'])
call deoplete#custom#source('ultisnips', 'rank', 9999)

function! s:is_ultisnips_expandable()

  " get word before cursor
  let word = matchstr(getline('.'), printf('\v\w*%%%dc\w', col('.') - 1))
  if(empty(word))
    return 0
  endif

  " test word against triggers
  return !empty(filter(UltiSnips#SnippetsInCurrentScope(), {k,v -> k ==# word}))

endfunction

inoremap <expr> <c-y>
            \ pumvisible() ? 
            \ <sid>is_ultisnips_expandable() ?
            \ "<C-R>=UltiSnips#ExpandSnippet()<cr>" :
            \"<c-y>" : "<c-y>"

set pyxversion=3

let g:ale_linters = {
\   'python': ['pylint'],
\}
