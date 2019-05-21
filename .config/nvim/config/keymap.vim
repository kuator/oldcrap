inoremap kj <esc>
inoremap <expr> <c-d> ((pumvisible())?("\<C-n>"):("<c-d>"))
inoremap <expr> <c-e> ((pumvisible())?("\<C-p>"):("<c-e>"))
nnoremap ss :
nnoremap 0 ^

" Overwrite the current line with yanked text.
nnoremap <silent> go  pk"_dd


" Turn off highlight of the current search words.
nnoremap <silent> <Esc><Esc> :<C-U>nohlsearch<CR>

nnoremap <CR> :nohlsearch<CR><CR>

" move vertically by visual line
nnoremap j gj
nnoremap k gk


inoremap <a-j> <c-n>
inoremap <a-k> <c-p>

let mapleader = ' '
" let mapleader = '\<space>'


" nnoremap <silent><A-j> :set paste<CR>m`o<Esc>``:set nopaste<CR>
" nnoremap <silent><A-k> :set paste<CR>m`O<Esc>``:set nopaste<CR>
" nmap <cr> o<Esc>



nnoremap <leader>g G
nnoremap <leader><leader> :wq
nnoremap <silent><leader>s :source $MYVIMRC<cr>
tnoremap <esc> <c-\><c-n>

inoremap <c-s> <c-y>

vnoremap y ygv<Esc>
nnoremap <c-l> :nohlsearch<cr><>
" vnoremap p "_dP
nnoremap - $


" nnoremap ; :
" inoremap ; :
" vnoremap ; :

" nnoremap : ;
" inoremap : ;
" vnoremap : ;
