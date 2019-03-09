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
