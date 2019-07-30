" ========================================
"       Kuat Abylkassymov's vimrc
" ========================================

let s:vim_config_dir = expand('~/.config/nvim')
let s:vim_plug_script = s:vim_config_dir . '/autoload/plug.vim'
let s:vim_plug_home = s:vim_config_dir . '/plugged'

let s:just_installed_vim_plug = 0
if !filereadable(s:vim_plug_script)
  exe '!curl -fL https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim --create-dirs -o' shellescape(s:vim_plug_script)
  autocmd VimEnter * PlugInstall --sync
endif

call plug#begin(s:vim_config_dir . '/plugged')
" Plug 'isRuslan/vim-es6'
" Plug 'SirVer/ultisnips'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-operator-user'
Plug 'honza/vim-snippets'
Plug 'amadeus/vim-convert-color-to'
Plug 'AndrewRadev/dsf.vim'
Plug 'Shougo/denite.nvim'
Plug 'chrisbra/NrrwRgn'
Plug 'hail2u/vim-css3-syntax'
Plug 'godlygeek/tabular'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-line'
Plug 'jasonlong/vim-textobj-css'
Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'mattn/emmet-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'HerringtonDarkholme/yats.vim'
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-rsi'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'wellle/targets.vim'
Plug 'desmap/slick'
Plug 'flazz/vim-colorschemes'
" Tmux/Neovim movement integration
Plug 'christoomey/vim-tmux-navigator'

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

set wildoptions=pum
set pumblend=20
set autoread
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
" colorscheme slick
colorscheme gruvbox
" colorscheme slick
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
hi! CocErrorSign guifg=#F78080
hi! CursorLine guifg=white guibg=NONE gui=bold


" hi! CocFloating guibg=NONE guifg=white 

let mapleader=" "
set updatetime=100

" Use the stdio version of OmniSharp-roslyn:
" let g:OmniSharp_server_stdio = 1
" augroup omnisharp_commands
"     autocmd!
"     autocmd FileType cs nnoremap <buffer> gd :OmniSharpGotoDefinition<CR>
" augroup END

inoreabbr lam =>
inoreabbr far =>
inoreabbr tar ->
inoreabbr pl +
inoreabbr ex !

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
imap <C-l> <Plug>(coc-snippets-expand)
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

" If you want :UltiSnipsEdit to split your window.
" let g:UltiSnipsEditSplit="vertical"

let g:user_emmet_install_global = 0
let g:user_emmet_leader_key=','
autocmd FileType html,css EmmetInstall
set wildcharm=<C-z>
nnoremap ,e :e **/*<C-z><S-Tab>
nnoremap ,f :find **/*<C-z><S-Tab>
nnoremap <silent> ,g :grep! -Rin --exclude-dir={.git,node_modules,tmp,log} <cword> .<Cr>:cw<Cr>

augroup VimCSS3Syntax
  autocmd!

  autocmd FileType css setlocal iskeyword-=-
augroup END


" ergonomics
inoremap <c-s><c-h> (
inoremap <c-s><c-j> )
inoremap <c-s><c-k> {
inoremap <c-s><c-l> }
inoremap <c-s><c-d> *
inoremap <c-s><c-f> _


" Targets.vim
let g:targets_nl = 'nN'

nnoremap gu g~
vnoremap gu g~


let g:tmux_navigator_no_mappings = 1
nnoremap <silent> <c-w><c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-w><c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-w><c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-w><c-l> :TmuxNavigateRight<cr>
nnoremap <silent> <C-w>\ :TmuxNavigatePrevious<cr>



" For all buffers
call denite#custom#option('_', {
	\ 'empty': 0,
	\ 'auto_resume': 1,
	\ 'statusline': 1,
	\ 'start_filter': 1,
	\ 'vertical_preview': 1,
	\ 'prompt': '❯❯❯',
	\ })

if has('nvim')
	call denite#custom#option('_', { 'split': 'floating' })
endif

call denite#custom#option('_', {'root_markers': 'init.vim, .git, package.json'} )
" call denite#custom#option('_', 'highlight_mode_insert', 'CursorLine')
call denite#custom#option('_', 'highlight_mode_insert', 'None')
call denite#custom#option('_', 'highlight_matched_range', 'None')
call denite#custom#option('_', 'highlight_matched_char', 'None')
call denite#custom#option('_', 'highlight_window_background', 'None')
call denite#custom#option('_', 'highlight_filter_background', 'None')
call denite#custom#option('_', 'highlight_preview_line', 'None')
call denite#custom#option('_', 'highlight_prompt', 'None')

call denite#custom#var('file/rec', 'command',
	\ ['rg', '--files', '--glob', '!.git'])

call denite#custom#source('file', 'matchers',
      \ ['converter/abbr_word', 'matcher/fuzzy'])

nnoremap <silent><leader>do :<C-u>Denite file/old -default-action=switch <CR>
nnoremap <silent><leader>df :Denite file/rec <cr>
nnoremap <silent><leader>dg :<C-u>DeniteProjectDir grep -buffer-name=search -no-empty <CR>
nnoremap <silent><leader>dp :<c-u>DeniteProjectDir file/rec <cr>

" nnoremap <silent><localleader>o :<C-u>Denite file/old -default-action=switch <CR>
" nnoremap <silent><localleader>f :Denite file/rec <cr>
" nnoremap <silent><localleader>g :<C-u>DeniteProjectDir grep -buffer-name=search -no-empty <CR>
" nnoremap <silent><localleader>p :<c-u>DeniteProjectDir file/rec <cr>





" KEY MAPPINGS
autocmd FileType denite call s:denite_settings()
function! s:denite_settings() abort
	nnoremap <silent><buffer><expr> <CR> denite#do_map('do_action')
	nnoremap <silent><buffer><expr> i    denite#do_map('open_filter_buffer')
	nnoremap <silent><buffer><expr> d    denite#do_map('do_action', 'delete')
	nnoremap <silent><buffer><expr> p    denite#do_map('do_action', 'preview')
	nnoremap <silent><buffer><expr> t    denite#do_map('do_action', 'tabopen')
	nnoremap <silent><buffer><expr> v    denite#do_map('do_action', 'vsplit')
	nnoremap <silent><buffer><expr> h    denite#do_map('do_action', 'split')
	nnoremap <silent><buffer><expr> -    denite#do_map('do_action', 'split')
	nnoremap <silent><buffer><expr> '    denite#do_map('quick_move')
	nnoremap <silent><buffer><expr> q    denite#do_map('quit')
	nnoremap <silent><buffer><expr> r    denite#do_map('redraw')
	nnoremap <silent><buffer><expr> yy   denite#do_map('do_action', 'yank')
	nnoremap <silent><buffer><expr> <Esc>   denite#do_map('quit')
	nnoremap <silent><buffer><expr> <C-u>   denite#do_map('restore_sources')
	nnoremap <silent><buffer><expr> <C-f>   denite#do_map('do_action', 'defx')
	nnoremap <silent><buffer><expr> <C-x>   denite#do_map('choose_action')
	nnoremap <silent><buffer><expr><nowait> <Space> denite#do_map('toggle_select').'j'
endfunction

autocmd FileType denite-filter call s:denite_filter_settings()
function! s:denite_filter_settings() abort
	nnoremap <silent><buffer><expr> <Esc>  denite#do_map('quit')
	inoremap <silent><buffer><expr> <Esc>  denite#do_map('quit')
  inoremap <silent><buffer><expr> <cr>   denite#do_map('do_action')
	nnoremap <silent><buffer><expr> q      denite#do_map('quit')
	inoremap <silent><buffer><expr> <C-c>  denite#do_map('quit')
	nnoremap <silent><buffer><expr> <C-c>  denite#do_map('quit')
	inoremap <silent><buffer>       kj     <Esc><C-w>p
	nnoremap <silent><buffer>       kj     <Esc><C-w>p
endfunction

