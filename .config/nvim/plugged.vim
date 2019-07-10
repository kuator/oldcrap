let s:vim_config_dir = expand('~/.config/nvim')
let s:vim_plug_script = s:vim_config_dir . '/autoload/plug.vim'
let s:vim_plug_home = s:vim_config_dir . '/plugged'

let s:just_installed_vim_plug = 0
if !filereadable(s:vim_plug_script)
  exe '!curl -fL https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim --create-dirs -o' shellescape(s:vim_plug_script)
  autocmd VimEnter * PlugInstall --sync
endif

call plug#begin(s:vim_config_dir . '/plugged')

" Editing {{{
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-surround'
  Plug 'easymotion/vim-easymotion'
  " Plug 'justinmk/vim-sneak'
  Plug 'godlygeek/tabular'
" }}}
" Text objects {{{
  
  Plug 'kana/vim-textobj-user'
  Plug 'nelstrom/vim-textobj-rubyblock'
  Plug 'michaeljsmith/vim-indent-object'
  
  " Plug 'kana/vim-submode'
  " Plug 'hyhugh/vim-easyescape-plus'
  Plug 'kana/vim-operator-user'
  Plug 'kana/vim-textobj-entire'
  Plug 'kana/vim-textobj-line'
  Plug 'kana/vim-textobj-indent'
  Plug 'wellle/targets.vim'
  " Plug 'kana/vim-textobj-fold'
" }}}

" Aesthetics {{{
  Plug 'morhetz/gruvbox' 

  Plug 'mhartington/oceanic-next' 
  Plug 'tpope/vim-rsi' 
  " Plug 'koron/nyancat-vim' 
"}}}

" Shougo {{{
if has('nvim')
  Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/denite.nvim'
  Plug 'Shougo/defx.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
"}}}


" HTML {{{
  Plug 'mattn/emmet-vim'
"}}}


" Coc {{{
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
"}}}

" Snippets {{{
  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'
"}}}


" Ruby {{{
  Plug 'vim-ruby/vim-ruby'
  Plug 'tpope/vim-rails'
  Plug 'tpope/vim-bundler'
  Plug 'tpope/vim-rake'
  Plug 'tpope/vim-projectionist'
"}}}


" AndrewRadev {{{
  Plug 'AndrewRadev/dsf.vim'
  Plug 'AndrewRadev/tagalong.vim'
  Plug 'AndrewRadev/sideways.vim'
  Plug 'AndrewRadev/switch.vim'
"}}}


" Junnegunn {{{
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  Plug 'junegunn/goyo.vim'
  Plug 'junegunn/vim-after-object'
  Plug 'junegunn/limelight.vim'
"}}}



" Comfort {{{
  Plug 'yuttie/comfortable-motion.vim'
"}}}


" Ctags {{{
  Plug 'ludovicchabant/vim-gutentags'
  Plug 'liuchengxu/vista.vim'
"}}}


" HTML {{{
  " Plug 'othree/html5.vim'
"}}}

" CSS {{{
  " Plug 'hail2u/vim-css3-syntax'
"}}}


" Syntax {{{
  " Plug 'sheerun/vim-polyglot'
  " Plug 'luochen1990/rainbow'

"}}}

" Chris Toomey
" {{{
  Plug 'christoomey/vim-sort-motion' 
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'christoomey/vim-titlecase'
" }}}

" javascript {{{
  Plug 'pangloss/vim-javascript' 
  Plug 'isRuslan/vim-es6' 
" }}}

call plug#end()
filetype plugin on
"Experimental
" Plug 'chaoren/vim-wordmotion'
" Plug 'bkad/CamelCaseMotion'
" Plug 'vim-scripts/ReplaceWithRegister'
" Plug 'michaeljsmith/vim-indent-object'
" Plug 'michaeljsmith/vim-indent-object#usage'
" Plug 'michaeljsmith/vim-indent-object#usage'
" Plug '907th/vim-auto-save'
" Plug 'kshenoy/vim-signature'
" Plug 'metakirby5/codi.vim'
" Plug 'vimwiki/vimwiki'
" Plug 'jez/vim-superman'
" Plug 'tommcdo/vim-ninja-feet'
" Plug 'tmsvg/pear-tree'
" Plug 'amadeus/vim-convert-color-to'

