let mapleader=" "

inoremap <M-s> <Esc>:wq <cr>
cnoremap <M-s> :wq <cr>
nnoremap <M-s> :wq <cr>
vnoremap <M-s> :wq <cr>


inoremap <M-d> <Esc> :wq! <cr>
cnoremap <M-d> :wq! <cr>
nnoremap <M-d> :wq! <cr>
vnoremap <M-d> :wq! <cr>

map <leader>e :e! ~/.config/nvim/init.vim<cr>
nnoremap <silent> ,<leader> :nohlsearch<cr>




"single movements h j k l
noremap! ,h <left>
noremap! ,j <down>
noremap! ,k <up>
noremap! ,l <right>
"append shortcuts
noremap! ,A <esc>A
noremap! ,a <esc>a
"new line and insert shortcuts
noremap! ,O <esc>O
noremap! ,o <esc>o



" My custom mappings
"noremap ; :
"noremap ; :
"noremap <A-l> ,
"noremap <A-;> ;




inoremap kj <Esc>
cnoremap kj <Esc>
cnoremap jj <cr>
nnoremap ss :
nnoremap <leader><leader> :xa<cr>
nnoremap <leader>s :w<cr>
nnoremap <leader>q :q<cr>
nnoremap <leader>g GG
nnoremap <leader>f /
nnoremap <leader>p :bn<cr>
nnoremap <leader>n :bp<cr>
nnoremap <leader>d :bd<cr>
nnoremap <leader>e :e $MYVIMRC<cr>
nnoremap <leader>v :so $MYVIMRC<CR>
"cnoremap <M-i> <tab>
nnoremap <silent> ,<leader> :nohlsearch<cr>



"https://superuser.com/questions/445123/vim-sending-tab-completion-key-against-a-mapped-keystroke
set wildcharm=<tab>
cnoremap df <tab>
"cnoremap ff <tab><s-tab><s-tab>



nnoremap vv V

inoremap ; :
inoremap <a-;> ;

nnoremap <leader>b :ls<CR>:b<Space>







nnoremap <C-I> :call VimLock(1)<CR>i
function! VimLock(enable)
  if a:enable
    inoremap a 1
    inoremap s 2
    inoremap d 3
    inoremap f 4
    inoremap g 5
    inoremap h 6
    inoremap j 7
    inoremap k 8
    inoremap l 9
    inoremap ; 0
    iunmap kj
    inoremap ee <Esc>:call VimLock(0)<CR>i
  else
    iunmap a
    iunmap s
    iunmap d
    iunmap f
    iunmap g
    iunmap h
    iunmap j
    iunmap k
    iunmap l
    iunmap ;
    iunmap ee
    inoremap kj <Esc>
  endif
endfunction




"Working on this (
"cnoremap <silent> <a-i> <esc>:call VimLock(1)<cr>:
""cnoremap <expr> <a-i> VimLock(1)<cr>
"function! VimLock(enable)
"  if a:enable
"    cnoremap a 1
"    cnoremap s 2
"    cnoremap d 3
"    cnoremap f 4
"    cnoremap g 5
"    cnoremap h 6
"    cnoremap j 7
"    cnoremap k 8
"    cnoremap l 9
"    cnoremap ; 0
"    cunmap kj
"    cunmap jj
"    cunmap df
"    cnoremap <silent> ee <esc>:call VimLock(0)<cr>
"  else
"    cunmap a
"    cunmap s
"    cunmap d
"    cunmap f
"    cunmap g
"    cunmap h
"    cunmap j
"    cunmap k
"    cunmap l
"    cunmap ;
"    cunmap ee
"    cnoremap kj <Esc>
"  endif
"endfunction


