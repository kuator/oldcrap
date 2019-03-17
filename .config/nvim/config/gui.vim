colorscheme gruvbox
set background=dark
if &t_Co == 8 && $TERM !~# '^linux'
  set t_Co=16
endif
