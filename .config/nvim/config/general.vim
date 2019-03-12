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
syntax on
set expandtab
set wildmenu
set nowrap

" Disabling arrow keys
noremap <Left> :echoe "Use h"<CR>
noremap <Right> :echoe "Use l"<CR>
noremap <Up> :echoe "Use k"<CR>
noremap <Down> :echoe "Use j"<CR>









let g:deoplete#enable_at_startup = 1
if !exists('g:deoplete#omni#input_patterns')
  let g:deoplete#omni#input_patterns = {}
endif
" let g:deoplete#disable_auto_complete = 1
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif


autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType typescript setlocal omnifunc=typescript#CompleteTS


" In the case you want the completion work all the time
"call deoplete#custom#option('omni_patterns', {
"		\  'javascript': '.\+',
"		\})


call deoplete#custom#option('omni_patterns', {
		\ 'java': '[^. *\t]\.\w*',
		\  'html': ['<', '</', '<[^>]*\s[[:alnum:]-]*'],
		\  'xhtml': ['<', '</', '<[^>]*\s[[:alnum:]-]*'],
		\  'xml': ['<', '</', '<[^>]*\s[[:alnum:]-]*'],
		\  'javascript': '[^. *\t]\.\w*',
		\})



let g:deoplete#omni#input_patterns = get(g:,'deoplete#omni#input_patterns',{})


setlocal autoindent
setlocal cindent
setlocal smartindent
set expandtab 
set shiftwidth=2
