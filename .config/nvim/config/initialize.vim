if (!isdirectory(expand("$HOME/.config/nvim/repos/github.com/Shougo/dein.vim")))
call system(expand("mkdir -p $HOME/.config/nvim/repos/github.com"))
call system(expand("git clone https://github.com/Shougo/dein.vim $HOME/.config/nvim/repos/github.com/Shougo/dein.vim"))
endif

set runtimepath+=~/.config/nvim/repos/github.com/Shougo/dein.vim/

call dein#begin(expand('~/.config/nvim'))
call dein#add('Shougo/dein.vim')
call dein#add('haya14busa/dein-command.vim')
call dein#add('wsdjeg/dein-ui.vim')
"}}}


call dein#add('whatyouhide/vim-gotham')
call dein#add('tpope/vim-surround')
call dein#add('morhetz/gruvbox')
call dein#add('skywind3000/vim-keysound')
call dein#add('mattn/emmet-vim')


colorscheme gruvbox
set background=dark

if dein#check_install()
  call dein#install()
  let pluginsExist=1
endif

call dein#end()
