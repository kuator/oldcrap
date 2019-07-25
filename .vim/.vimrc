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
" Plug 'junegunn/fzf'

Plug 'pangloss/vim-javascript'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-surround'
Plug 'hail2u/vim-css3-syntax'
Plug 'amadeus/vim-convert-color-to'
Plug 'mattn/emmet-vim'
Plug 'flazz/vim-colorschemes'
Plug 'godlygeek/tabular'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-rsi'
" Plug 'andymass/vim-matchup'
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
" Plug 'isRuslan/vim-es6'
" Plug 'SirVer/ultisnips'

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
"https://vim.fandom.com/wiki/256_colors_in_vim
"set t_Co=256

" nmap <silent> gd <Plug>(coc-definition)

syntax enable
filetype plugin indent on
set termguicolors
set hlsearch
colorscheme gruvbox
" colorscheme OceanicNext
set background=dark
hi! Normal ctermbg=NONE guibg=NONE
hi! NonText ctermbg=NONE guibg=NONE
hi! Pmenusel guifg=white guibg=#666666
hi! Pmenu guifg=white guibg=#555555
hi! LineNr guifg=white guibg=NONE
hi! EndOfBuffer ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
hi! SignColumn guibg=NONE ctermbg=NONE
hi! Comment guifg=#ABaaaa
hi! CocErrorSign guifg=#F78080


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
" Remap keys for gotos
nmap <silent> <leader>gd <Plug>(coc-definition)
nmap <silent> <leader>gy <Plug>(coc-type-definition)
nmap <silent> <leader>gi <Plug>(coc-implementation)
nmap <silent> <leader>gr <Plug>(coc-references)
" Use `[c` and `]c` to navigate diagnostics
nmap <silent> <leader>[c <Plug>(coc-diagnostic-prev)
nmap <silent> <leader>]c <Plug>(coc-diagnostic-next)
" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)
" Use <C-l> for trigger snippet expand.
" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)


" Use <C-l> for trigger snippet expand.
" imap <C-l> <Plug>(coc-snippets-expand)
" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)
" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'
" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'


" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

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
let g:UltiSnipsJumpForwardTrigger="<c-l>"
" let g:UltiSnipsJumpBackwardTrigger="<c-k>"

let g:user_emmet_install_global = 0
let g:user_emmet_leader_key=','
autocmd FileType html,css EmmetInstall
set wildcharm=<C-z>
" nnoremap ,e :e **/*<C-z><S-Tab>
" nnoremap ,f :find **/*<C-z><S-Tab>

" ergonomics
inoremap <c-s><c-h> (
inoremap <c-s><c-j> )
inoremap <c-s><c-k> {
inoremap <c-s><c-l> }
inoremap <c-s><c-d> *
inoremap <c-s><c-f> _
