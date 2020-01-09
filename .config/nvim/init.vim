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
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-operator-user'
Plug 'honza/vim-snippets'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'easymotion/vim-easymotion'
Plug 'Shougo/denite.nvim'
Plug 'hail2u/vim-css3-syntax'
Plug 'godlygeek/tabular'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-line'
Plug 'whatyouhide/vim-textobj-xmlattr'
Plug 'mattn/emmet-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'HerringtonDarkholme/yats.vim'
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-ragtag'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-rsi'
Plug 'tpope/vim-surround'
Plug 'flazz/vim-colorschemes'
Plug 'christoomey/vim-tmux-navigator'
Plug 'wellle/targets.vim'
Plug 'raghur/fruzzy', {'do': { -> fruzzy#install()}}
Plug 'tpope/vim-unimpaired'

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
filetype plugin indent on
set expandtab                                                               " Show spaces instead of tabs
set shiftwidth=0                                                            " columns per <<
set tabstop=2                                                               " columns per tabs
set softtabstop=2                                                           " spaces per tab
set autoindent
set number
set relativenumber
set incsearch
set nowrap
set ignorecase
set smartcase
" set mouse=n
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
set termguicolors
set hlsearch
colorscheme gruvbox
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
let maplocalleader="s"
set updatetime=100


inoreabbr lam =>
inoreabbr far =>
inoreabbr tar ->
inoreabbr pl +
inoreabbr ex !

set ttimeoutlen=50
" tnoremap <esc> <C-\><C-n>
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
set wildignore+=*/node_modules/*,bower_components/*

set scrolloff=5       " Start scrolling n lines before horizontal
                      " border of window.
set sidescrolloff=7   " Start scrolling n chars before end of screen.

" set foldmethod=syntax " syntax highlighting items specify folds


set wildcharm=<C-z>

" augroup VimCSS3Syntax
"   autocmd!

"   autocmd FileType css setlocal iskeyword-=-
" augroup END


" ergonomics
inoremap <c-s><c-h> (
inoremap <c-s><c-j> )
inoremap <c-s><c-k> {
inoremap <c-s><c-l> }
inoremap <c-s><c-d> *
inoremap <c-s><c-f> _

" Targets.vim
let g:targets_nl = 'nN'

let g:tmux_navigator_no_mappings = 1
nnoremap <silent> <c-w><c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-w><c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-w><c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-w><c-l> :TmuxNavigateRight<cr>
nnoremap <silent> <C-w>\ :TmuxNavigatePrevious<cr>

let g:python_host_prog='/usr/bin/python2'
let g:python3_host_prog='/usr/bin/python3'


"EasyMotion
let g:EasyMotion_do_mapping = 0 " Disable default mappings
nmap <localleader>w <Plug>(easymotion-bd-w)
nmap <localleader>w <Plug>(easymotion-overwin-w)
nmap <localleader>f <Plug>(easymotion-bd-f)
nmap <localleader>s <Plug>(easymotion-overwin-f2)
let g:EasyMotion_smartcase = 1
" JK motions: Line motions
nmap <localleader>j <Plug>(easymotion-j)
nmap <localleader>k <Plug>(easymotion-k)
nmap <localleader>g <Plug>(easymotion-bd-jk)
nmap <localleader>g <Plug>(easymotion-overwin-line)

omap zw <Plug>(easymotion-bd-w)
omap zf <Plug>(easymotion-bd-f)
omap zj <Plug>(easymotion-j)
omap zk <Plug>(easymotion-k)
omap zg <Plug>(easymotion-bd-jk)
omap zz <Plug>(easymotion-bd-f2)


autocmd FileType python setlocal tabstop=4

let g:EasyMotion_keys = 'asdfghjkl;'

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

" call denite#custom#option('_', {'root_markers': 'init.vim, .git, package.json'} )

" call denite#custom#option('_', 'highlight_mode_insert', 'CursorLine')
call denite#custom#option('_', 'highlight_mode_insert', 'None')
call denite#custom#option('_', 'highlight_matched_range', 'None')
call denite#custom#option('_', 'highlight_matched_char', 'None')
call denite#custom#option('_', 'highlight_window_background', 'None')
call denite#custom#option('_', 'highlight_filter_background', 'None')
call denite#custom#option('_', 'highlight_preview_line', 'None')
call denite#custom#option('_', 'highlight_prompt', 'None')

call denite#custom#var('file/rec', 'command',
	\ ['rg', '--files', '--hidden', '--glob', '!.git', '--glob', '!node_modules', '--glob', '!venv'])

" call denite#custom#source('file', 'matchers',
"       \ ['converter/abbr_word', 'matcher/fruzzy'])

let g:fruzzy#usenative = 1

call denite#custom#source(
  \ 'file/rec', 'matchers', ['converter/abbr_word','matcher/fruzzy'])


" nnoremap <silent><leader>do :<C-u>Denite file/old -default-action=switch <CR>
" nnoremap <silent><leader>df :Denite file/rec <cr>
" nnoremap <silent><leader>dg :<C-u>DeniteProjectDir grep -buffer-name=search -no-empty <CR>
" nnoremap <silent><leader>dp :<c-u>DeniteProjectDir file/rec <cr>


nnoremap <silent><leader>do :<C-u>Denite file/old -default-action=switch <CR>
nnoremap <silent><leader>df :Denite file/rec <cr>
nnoremap <silent><leader>dg :<C-u>DeniteProjectDir grep -buffer-name=search -no-empty <CR>
nnoremap <silent><leader>dp :<c-u>DeniteProjectDir file/rec <cr>
nnoremap <silent><space><space> :<c-u>DeniteProjectDir file/rec <cr>

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


" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-l>"
let g:UltiSnipsJumpForwardTrigger="<c-l>"


let g:user_emmet_install_global = 0
" let g:user_emmet_leader_key=','
let g:user_emmet_leader_key='<C-E>'
autocmd FileType html,css,javascript EmmetInstall
let g:user_emmet_mode='iv'  "enable all functions, which is equal to
imap <C-e><C-e> <plug>(emmet-expand-abbr)


" Remap keys for gotos
nmap <silent> <leader>gd <Plug>(coc-definition)
nmap <silent> <leader>gy <Plug>(coc-type-definition)
nmap <silent> <leader>gi <Plug>(coc-implementation)
nmap <silent> <leader>gr <Plug>(coc-references)
nmap <silent> <leader>[c <Plug>(coc-diagnostic-prev)
nmap <silent> <leader>]c <Plug>(coc-diagnostic-next)
nmap <leader>ac  <Plug>(coc-codeaction)
nmap <leader>qf  <Plug>(coc-fix-current)
vmap <leader>af  <Plug>(coc-format-selected)
nmap <leader>af  <Plug>(coc-format-selected)
nmap <leader>rn  <Plug>(coc-rename)


imap <C-l> <Plug>(coc-snippets-expand)
vmap <C-j> <Plug>(coc-snippets-select)
let g:coc_snippet_next = '<c-j>'
let g:coc_snippet_prev = '<c-k>'

nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
