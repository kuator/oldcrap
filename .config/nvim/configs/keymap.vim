inoremap kj <esc>
let mapleader=" "
let maplocalleader="s"

nnoremap s <nop>

inoremap { {}<left>
inoremap < <><left>
inoremap " ""<left>
inoremap ( ()<left>
inoremap [ []<left>


inoreabbrev   luanch   launch
inoreabbrev   dt       <><left>
inoreabbrev   at       @
inoreabbrev   dl       $
inoreabbrev   ds       []<left>
inoreabbrev   ss       []<left>
inoreabbrev   dlr      ${}<left>
inoreabbrev   dp       \|\|
inoreabbrev   pp       \|\|
inoreabbrev   ppe      \|\|=
inoreabbrev   dp       \|\|<left>
inoreabbrev   dc       {}<left>
inoreabbrev   db       ()<left>
inoreabbrev   dq       ""<left>
inoreabbrev   bt       ``<left>
inoreabbrev   q        ""<left>
inoreabbrev   de       ==
inoreabbrev   ee       ==
inoreabbrev   eq       =
inoreabbrev   e        =
inoreabbrev   co       :
inoreabbrev   un       _
inoreabbrev   u        _
inoreabbrev   ne       !=
inoreabbrev   pl       +
inoreabbrev   mi       -
inoreabbrev   su       +
inoreabbrev   st       *
inoreabbrev   lte      <=
inoreabbrev   gte      >=
inoreabbrev   ple      +=
inoreabbrev   mie      -=
inoreabbrev   lt       <
inoreabbrev   leg      <=>
inoreabbrev   gt       >
inoreabbrev   dgt      >>
inoreabbrev   dlt      <<
inoreabbrev   mu       *
inoreabbrev   sl       /
inoreabbrev   di       /
inoreabbrev   mo       %
inoreabbrev   ha       #
inoreabbrev   pe       %
inoreabbrev   da       &&
inoreabbrev   aa       &&
inoreabbrev   a        &
inoreabbrev   oc       {<cr>}<esc>O
inoreabbrev   far      =>
inoreabbrev   tar      ->
inoreabbrev   ex       !
inoreabbrev   qu       ?
inoreabbrev   lam      =>{<cr>}<esc>O
" inoreabbrev   arr      =>{<cr>}<esc>O
inoreabbrev   ze       0
inoreabbrev   on       1
inoreabbrev   tw       2
inoreabbrev   th       3
inoreabbrev   fo       4
inoreabbrev   fi       5
inoreabbrev   si       6
inoreabbrev   se       7
inoreabbrev   ei       8
inoreabbrev   ni       9






" inoremap <c-z>s []<left>
" inoremap <c-z>t <><left>
" inoremap <c-z>c {}<left>
" inoremap <c-z>b ()<left>

" inoremap <c-c>s []<left>
" inoremap <c-c>t <><left>
" inoremap <c-c>c {}<left>
" inoremap <c-c>b ()<left>
" inoremap <c-c>q ""<left>
" inoremap <c-c>d ""<left>
" inoremap <c-c>e =


nnoremap <c-l> <c-l>:nohl<cr>
vnoremap y ygv<Esc>


" Start new line from any cursor position
inoremap <s-return> <c-o>o

" When pressing <leader>cd switch to the directory of the open buffer
map <leader>cd :lcd %:p:h<cr>:pwd<cr>


" Double leader key for toggling visual-line mode
nmap <silent> <Leader><Leader> V
vmap <Leader><Leader> <Esc>


nnoremap <localleader>v :source $MYVIMRC<CR>
nnoremap <leader>e :vsp $MYVIMRC<CR>

nnoremap - $
" nnoremap <localleader>wq! :wq!<CR>


" nnoremap ` '
nnoremap ' `
