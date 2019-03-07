inoremap kj <Esc>
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
noremap ; :
noremap <A-l> ,
noremap <A-;> ;

nnoremap <leader><leader> :xa<cr>
