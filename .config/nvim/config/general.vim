" https://vim.fandom.com/wiki/Fix_meta-keys_that_break_out_of_Insert_mode
if !has('nvim')
        let c='a'
        while c <= 'z'
          exec "set <M-".toupper(c).">=\e".c
          exec "imap \e".c." <M-".toupper(c).">"
          let c = nr2char(1+char2nr(c))
        endw
endif


if &compatible
  set nocompatible
endif

set nocompatible
set number
set relativenumber


colorscheme gruvbox
set background=dark
set clipboard=unnamedplus

filetype plugin indent on
syntax enable
set expandtab
set wildmenu



