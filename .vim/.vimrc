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

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-surround'
Plug 'andymass/vim-matchup'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-line'
Plug 'honza/vim-snippets'
Plug 'iandingx/leetcode.vim'
Plug 'OmniSharp/omnisharp-vim'
Plug 'flazz/vim-colorschemes'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'wellle/targets.vim'
Plug 'isRuslan/vim-es6'
Plug 'pangloss/vim-javascript'

call plug#end()
filetype plugin on

set clipboard=unnamedplus
inoremap kj <esc>
vnoremap kj <esc>
nnoremap ' `
omap ' `
map s <nop>

" nnoremap 0 ^
" Tabulation and spaces
set expandtab                                                               " Show spaces instead of tabs
set shiftwidth=0                                                            " columns per <<
set softtabstop=2                                                           " spaces per tab
set tabstop=2                                                               " columns per tabs
set autoindent
set number
set relativenumber
set incsearch
set ignorecase
set smartcase
set mouse=n
"set ttymouse=xterm2

"https://vim.fandom.com/wiki/Change_cursor_shape_in_different_modes
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"
"https://vim.fandom.com/wiki/256_colors_in_vim
"set t_Co=256

" nmap <silent> gd <Plug>(coc-definition)

syntax on
set termguicolors
set hlsearch
colorscheme gruvbox
" colorscheme OceanicNext
set background=dark
hi! Normal ctermbg=NONE guibg=NONE
hi! NonText ctermbg=NONE guibg=NONE
hi! Pmenusel guifg=white guibg=#555555
hi! Pmenu guifg=white guibg=NONE
hi! LineNr guifg=white guibg=NONE
hi! EndOfBuffer ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
hi! SignColumn guibg=NONE ctermbg=NONE
hi! Comment guifg=#ABaaaa
hi! CocErrorSign guifg=#F56566 guibg=NONE


" Use the stdio version of OmniSharp-roslyn:
let g:OmniSharp_server_stdio = 1
let mapleader=" "
set updatetime=300
augroup omnisharp_commands
    autocmd!
    autocmd FileType cs nnoremap <buffer> gd :OmniSharpGotoDefinition<CR>
augroup END

inoreabbr lam =>
inoreabbr far =>
inoreabbr tar ->
set ttimeoutlen=50
tnoremap <esc> <C-\><C-n>
nnoremap <c-l> <c-l>:nohl<cr>
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
set signcolumn=yes
