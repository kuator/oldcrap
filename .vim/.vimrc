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

Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}

call plug#end()


set clipboard=unnamedplus
inoremap kj <esc>
vnoremap kj <esc>
nnoremap 0 ^


" Tabulation and spaces
set expandtab                                                               " Show spaces instead of tabs
set shiftwidth=0                                                            " columns per <<
set softtabstop=4                                                           " spaces per tab
set tabstop=4                                                               " columns per tabs

set number
set relativenumber

nnoremap ss :



"https://vim.fandom.com/wiki/Change_cursor_shape_in_different_modes
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"
