let mapleader = ' '

let g:jedi#completions_enabled = 0

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\}

let g:ale_fix_on_save = 1


let g:user_emmet_leader_key=','

let g:jsx_ext_required = 1

let g:coc_global_extensions =['coc-html','coc-css', 'coc-prettier','coc-eslint','coc-emmet','coc-tsserver','coc-pairs','coc-json','coc-python']



" Custom options for ripgrep
"   --vimgrep:  Show results with every match on it's own line --hidden:   Search hidden directories and files
"   --heading:  Show the file name above clusters of matches from each file
"   --S:        Search case insensitively if the pattern is all lowercase
call denite#custom#var('grep', 'default_opts', ['--hidden', '--vimgrep', '--heading', '-S'])

call denite#custom#option('_', 'root_markers', '.venv, venv/, .git, build.sbt, Pipfile, package.json,init.vim')

call denite#custom#var('file/rec', 'command', ['rg', '--files', '--glob', '!.git'])
" Use ripgrep in place of "grep"
call denite#custom#var('grep', 'command', ['rg'])
" Recommended defaults for ripgrep via Denite docs
call denite#custom#var('grep', 'recursive_opts', [])
call denite#custom#var('grep', 'pattern_opt', ['--regexp'])
call denite#custom#var('grep', 'separator', ['--'])
call denite#custom#var('grep', 'final_opts', [])

" Remove date from buffer list
call denite#custom#var('buffer', 'date_format', '')

call denite#custom#map('insert','kj', '<denite:enter_mode:normal>', 'noremap')
call denite#custom#map('normal','sc', '<denite:quit>', 'noremap')
call denite#custom#map('normal','<esc>', '<denite:quit>', 'noremap')

" let maplocalleader = ';'
nnoremap <silent><leader>dp :<c-u>DeniteProjectDir file/rec<cr>
nnoremap <silent><leader>df :Denite file/rec<cr>
nnoremap <silent><leader>dd :<c-u>Denite directory_rec -default-action=cd<cr>
nnoremap <silent><leader>dj :<c-u>Denite jump change file/point -mode=normal<cr>
nnoremap <silent><leader>db :<C-u>Denite buffer file/old -default-action=switch<CR>
nnoremap <silent><leader>do :<C-u>Denite file/old -default-action=switch<CR>
nnoremap <silent><leader>dg :<C-u>Denite grep -buffer-name=search -no-empty -mode=normal<CR>



map <leader>bn :bnext<CR>
nnoremap <leader>bp :bprevious<CR>
nnoremap <leader>bf :bfirst<CR>
nnoremap <leader>bd :bdelete<CR>


call denite#custom#option('default' ,  {
\ 'auto_resize': 1,
\ 'prompt': 'λ:',
\ 'direction': 'rightbelow',
\ 'winminheight': '10',
\ 'highlight_mode_insert': 'Visual',
\ 'highlight_mode_normal': 'Visual',
\ 'prompt_highlight': 'Function',
\ 'highlight_matched_char': 'Function',
\ 'highlight_matched_range': 'Normal'
\ })





inoremap <silent><expr> <m-space> coc#refresh()


map <leader>w <Plug>(easymotion-bd-w)


nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <leader>rn <Plug>(coc-rename)
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
vmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>ac  <Plug>(coc-codeaction)
nmap <leader>qf  <Plug>(coc-fix-current)


" let g:easyescape_chars = { "j": 1, "k": 1 }
" let g:easyescape_timeout = 100
" cnoremap jk <ESC>
" cnoremap kj <ESC>
"
"
"
imap <C-s> <Plug>(neosnippet_expand_or_jump)
smap <C-s> <Plug>(neosnippet_expand_or_jump)
xmap <C-s> <Plug>(neosnippet_expand_target)


if has('conceal')
  set conceallevel=2 concealcursor=niv
endif




let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall



"vim-polyglot
let g:polyglot_disabled = ['tex']
let g:polyglot_disabled = ['latex']

"vimtex
let g:vimtex_view_method = "zathura"
