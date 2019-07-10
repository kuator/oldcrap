inoremap kj <esc>
let mapleader=" "
let maplocalleader="s"
nnoremap s <nop>
nnoremap <c-l> <c-l>:nohl<cr>
vnoremap y ygv<Esc>

" Start new line from any cursor position
inoremap <s-return> <c-o>o
" When pressing <leader>cd switch to the directory of the open buffer
map <leader>cd :lcd %:p:h<cr>:pwd<cr>
nnoremap <localleader>v :source $MYVIMRC<CR>
nnoremap <leader>e :vsp $MYVIMRC<CR>
nnoremap - $
" nnoremap <localleader>wq! :wq!<CR>
" nnoremap ` '
nnoremap ' `
omap ' `
tnoremap <Esc> <C-\><C-n>
" nnoremap <silent> <m-h> <c-w>< 
" nnoremap <silent> <m-j> <c-w>- 
" nnoremap <silent> <m-k> <c-w>+ 
" nnoremap <silent> <m-l> <c-w>> 
nnoremap <silent> <m-k> :res +5<cr>
nnoremap <silent> <m-j> :res -5<cr>
nnoremap <silent> <m-l> :vertical resize +5<cr>
nnoremap <silent> <m-h> :vertical resize -5<cr>
nnoremap <silent> <Leader>= :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>
inoremap <c-z> <c-r>+


" inoreabbrev   luanch   launch
" inoreabbrev   and      &
" inoreabbrev   dt       <><left>
" inoreabbrev   at;      @
" inoreabbrev   dl       $
" inoreabbrev   ds       []<left>
" inoreabbrev   ss       []<left>
" inoreabbrev   dlr      ${}<left>
" inoreabbrev   dp       \|\|
" inoreabbrev   pi       \|
" inoreabbrev   pp       \|\|
" inoreabbrev   ppe      \|\|=
" inoreabbrev   dp       \|\|<left>
" inoreabbrev   dc       {}<left>
" inoreabbrev   db       ()<left>
" inoreabbrev   dq       ""<left>
" inoreabbrev   bt       ``<left>
" inoreabbrev   q        ""<left>
" inoreabbrev   de       ==
" inoreabbrev   ee       ==
" inoreabbrev   tre      ===
" inoreabbrev   eq       =
" inoreabbrev   e        =
" inoreabbrev   co       :
" inoreabbrev   un       _
" inoreabbrev   u        _
" inoreabbrev   ne       !=
" inoreabbrev   nee      !==
" inoreabbrev   pl       +
" inoreabbrev   dpl      ++
" inoreabbrev   mi       -
" inoreabbrev   dmi      --
" inoreabbrev   su       +
" inoreabbrev   st       *
" inoreabbrev   lte      <=
" inoreabbrev   gte      >=
" inoreabbrev   ple      +=
" inoreabbrev   mie      -=
" inoreabbrev   lt       <
" inoreabbrev   leg      <=>
" inoreabbrev   gt       >
" inoreabbrev   dgt      >>
" inoreabbrev   dlt      <<
" inoreabbrev   mu       *
" inoreabbrev   sl       /
" inoreabbrev   di       /
" inoreabbrev   mo       %
" inoreabbrev   ha       #
" inoreabbrev   pe       %
" inoreabbrev   da       &&
" inoreabbrev   aa       &&
" inoreabbrev   oc       {<cr>}<esc>O
" inoreabbrev   far      =>
" inoreabbrev   tar      ->
" inoreabbrev   ex       !
" inoreabbrev   qu       ?
" inoreabbrev   lam      =>{<cr>}<esc>O
" inoreabbrev   ze       0
" inoreabbrev   on       1
" inoreabbrev   tw       2
" inoreabbrev   th       3
" inoreabbrev   fo       4
" inoreabbrev   fi       5
" inoreabbrev   si       6
" inoreabbrev   se       7
" inoreabbrev   ei       8
" inoreabbrev   ni       9


