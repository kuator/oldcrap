let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
imap <silent> <C-G><C-H> h
imap <silent> <C-G><C-D> d
imap <silent> <C-G><C-O> o
imap <silent> <C-G><C-B> b
cnoremap <C-N> <Down>
cnoremap <C-P> <Up>
cnoremap <C-E> <End>
cnoremap <C-A> <Home>
noremap! <C-D> <Del>
noremap! <C-B> <Left>
noremap! <C-F> <Right>
map! <Nul> <C-Space>
noremap  ^
noremap <NL> G
noremap  gg
noremap  $
nnoremap <silent> <expr>  &buftype ==# 'quickfix' ? '' : ':call append(".", repeat([""], v:count1))'
vnoremap  "hy:%s/\Vh//g<Left><Left>
nnoremap <silent>  :nohlsearch
nnoremap  T
nnoremap  gzz
nmap <silent>  <Nop>
nnoremap <expr>  ' :JumpTargetWin
nnoremap <silent>  ls :LoadLastSession
nnoremap <silent>  ev :tab drop $MYVIMRC
nnoremap <silent>  w :write
nnoremap <silent>  cd :cd %:p:h
nnoremap <silent>  O :call append(line('.') - 1, repeat([''], v:count1))
nnoremap <silent>  ht :tab help 
nnoremap <silent>  hh :help 
nnoremap <silent>  gp :set paste!
nnoremap  vsp :vsplit 
nnoremap  sp :split 
nnoremap  k gt
nnoremap  j gT
nnoremap  tc :tabclose
nnoremap  to :tabnew 
vnoremap / /\%V
noremap : ;
noremap ; :
nnoremap Q @@
nnoremap Y y$
nnoremap <expr> a empty(getline('.')) ? 'S' : 'a'
vmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
nnoremap gtf :execute 'tabnew' printf('%s/%s', getcwd(), expand('<cfile>'))
nnoremap <silent> go pk"_dd
nnoremap <expr> i empty(getline('.')) ? 'S' : 'i'
noremap j gj
noremap k gk
nmap <silent> m <Nop>
xmap <silent> m <Nop>
vnoremap n :normal 
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))
vnoremap <C-R> "hy:%s/\Vh//g<Left><Left>
nnoremap <C-]><C-T> T
nnoremap <C-]><C-]> gzz
nmap <silent> <C-]> <Nop>
noremap <silent> <S-Down> :wincmd +
noremap <silent> <S-Up> :wincmd -
noremap <silent> <S-Right> :wincmd >
noremap <silent> <S-Left> :wincmd <
noremap <C-L> $
noremap <C-H> ^
noremap <C-K> gg
noremap <C-J> G
map <Nul> <C-Space>
cnoremap  <Home>
noremap!  <Left>
noremap!  <Del>
cnoremap  <End>
noremap!  <Right>
imap <silent>  h
imap <silent>  d
imap <silent>  o
imap <silent>  b
cnoremap  <Down>
cnoremap  <Up>
let &cpo=s:cpo_save
unlet s:cpo_save
set noarabicshape
set ambiwidth=double
set autoindent
set background=dark
set backspace=2
set backup
set backupdir=~/.vim/backup
set belloff=all
set cmdheight=2
set completeopt=menu
set dictionary=/usr/share/dict/words
set diffopt=internal,filler,closeoff,iwhite
set directory=~/.vim/swap
set display=lastline
set expandtab
set fileencodings=utf-8,sjis,cp932,euc-jp
set fileformats=unix,mac,dos
set formatoptions=cqtjrol
set helplang=ja
set history=2048
set hlsearch
set ignorecase
set incsearch
set langnoremap
set nolangremap
set laststatus=2
set lazyredraw
set listchars=tab:>\ ,trail:\ ,extends:<,precedes:<
set matchpairs=(:),{:},[:],<:>
set printoptions=paper:a4
set regexpengine=2
set ruler
set runtimepath=~/.vim,/var/lib/vim/addons,/etc/vim,/usr/share/vim/vimfiles,/usr/share/vim/vim81,/usr/share/vim/vimfiles/after,/etc/vim/after,/var/lib/vim/addons/after,~/.vim/after,~/.vim/bundle/repos/github.com/Shougo/dein.vim
set scrolloff=3
set shiftwidth=4
set showcmd
set showmatch
set showtabline=2
set smartcase
set smartindent
set splitright
set statusline=%<%F\ %m%r%h%w%y%{'['.(&fenc!=''?&fenc:&enc).']['.&fileformat.']'}%=%l/%L,%c%V%8P
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set synmaxcol=512
set tabstop=4
set undodir=~/.vim/undo
set undofile
set updatetime=500
set viewoptions=cursor,folds
set virtualedit=all
set whichwrap=b,s,h,l,<,>,[,]
set wildignorecase
set wildmenu
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
set splitbelow splitright
set nosplitbelow
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
enew
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
set breakindent
setlocal breakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
set conceallevel=2
setlocal conceallevel=2
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal cursorlineopt=both
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != ''
setlocal filetype=
endif
setlocal fixendofline
set foldcolumn=1
setlocal foldcolumn=1
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
set foldmarker=\ {{{,\ }}}
setlocal foldmarker=\ {{{,\ }}}
set foldmethod=indent
setlocal foldmethod=indent
setlocal foldminlines=1
setlocal foldnestmax=20
set foldtext=Mopp_fold_text()
setlocal foldtext=Mopp_fold_text()
setlocal formatexpr=
setlocal formatoptions=cqtjrol
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
set list
setlocal list
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=4
setlocal noshortname
setlocal showbreak=
setlocal sidescrolloff=-1
set signcolumn=yes
setlocal signcolumn=yes
setlocal smartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=512
if &syntax != ''
setlocal syntax=
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal wincolor=
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOS
set winminheight=1 winminwidth=1
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
