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
  " Plug 'chaoren/vim-wordmotion'
  " Plug 'bkad/CamelCaseMotion'
  " Plug 'vim-scripts/ReplaceWithRegister'
  " Plug 'kana/vim-submode'
  " Plug 'hyhugh/vim-easyescape-plus'
  Plug 'kana/vim-operator-user'
  Plug 'kana/vim-textobj-entire'
  Plug 'kana/vim-textobj-line'
  Plug 'kana/vim-textobj-indent'
  Plug 'christoomey/vim-tmux-navigator'
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

" Ctags {{{
  Plug 'ludovicchabant/vim-gutentags'
"}}}

" HTML {{{
  Plug 'mattn/emmet-vim'
"}}}


" Ctags {{{
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
call plug#end()


