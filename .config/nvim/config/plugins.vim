let mapleader = ' '

let g:jedi#completions_enabled = 0

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\}

" let g:ale_fix_on_save = 1


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
call denite#custom#map('normal','st', '<denite:do_action:tabopen>', 'noremap')
call denite#custom#map('normal','sv', '<denite:do_action:vsplit>', 'noremap')
call denite#custom#map('normal','sh', '<denite:do_action:split>', 'noremap')
call denite#custom#map('normal','sc', '<denite:quit>', 'noremap')



" let maplocalleader = ';'
nnoremap <silent><leader>dp :<c-u>DeniteProjectDir file/rec<cr>
nnoremap <silent><leader>df :Denite file/rec<cr>
nnoremap <silent><leader>dd :<c-u>Denite directory_rec -default-action=cd<cr>
nnoremap <silent><leader>dj :<c-u>Denite jump change file/point -mode=normal<cr>
nnoremap <silent><leader>db :<C-u>Denite buffer file/old -default-action=switch<CR>
nnoremap <silent><leader>do :<C-u>Denite file/old -default-action=switch<CR>
nnoremap <silent><leader>dg :<C-u>DeniteProjectDir grep -buffer-name=search -no-empty -mode=normal<CR>
nnoremap <silent> <Leader>dw :DeniteCursorWord file/rec<CR>
nnoremap <silent> <Leader>dc :DeniteCursorWord grep -buffer-name=search<CR>
nnoremap <silent><leader>* :<C-u>DeniteCursorWord line -buffer-name=search -auto-highlight -mode=normal<CR>
nnoremap <silent><leader>/ :<C-u>Denite line -buffer-name=search -auto-highlight<CR>
nnoremap <silent><leader>; :<C-u>Denite command command_history<CR>

" nnoremap <leader>dg :DeniteProjectDir -buffer-name=grep -default-action=quickfix grep:::!<CR>



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
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)


" let g:easyescape_chars = { "j": 1, "k": 1 }
" let g:easyescape_timeout = 100
" cnoremap jk <ESC>
" cnoremap kj <ESC>



" imap <C-s> <Plug>(neosnippet_expand_or_jump)
" smap <C-s> <Plug>(neosnippet_expand_or_jump)
" xmap <C-s> <Plug>(neosnippet_expand_target)


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








" Defx
nnoremap <leader>tv :Defx -split=vertical -winwidth=35 -direction=topleft -columns=git:icons:filename:type<CR>
autocmd FileType defx call s:defx_my_settings()
function! s:defx_my_settings() abort
    " Define mappings
    nnoremap <silent><buffer><expr> <CR>
                \ defx#do_action('drop')
    nnoremap <silent><buffer><expr> c
                \ defx#do_action('copy')
    nnoremap <silent><buffer><expr> m
                \ defx#do_action('move')
    nnoremap <silent><buffer><expr> p
                \ defx#do_action('paste')
    nnoremap <silent><buffer><expr> l
                \ defx#do_action('drop')
    nnoremap <silent><buffer><expr> E
                \ defx#do_action('open', 'vsplit')
    nnoremap <silent><buffer><expr> P
                \ defx#do_action('open', 'pedit')
    nnoremap <silent><buffer><expr> o
                \ defx#do_action('open_or_close_tree')
    nnoremap <silent><buffer><expr> K
                \ defx#do_action('new_directory')
    nnoremap <silent><buffer><expr> N
                \ defx#do_action('new_file')
    nnoremap <silent><buffer><expr> M
                \ defx#do_action('new_multiple_files')
    nnoremap <silent><buffer><expr> C
                \ defx#do_action('toggle_columns',
                \                'mark:filename:type:size:time')
    nnoremap <silent><buffer><expr> S
                \ defx#do_action('toggle_sort', 'time')
    nnoremap <silent><buffer><expr> d
                \ defx#do_action('remove')
    nnoremap <silent><buffer><expr> r
                \ defx#do_action('rename')
    nnoremap <silent><buffer><expr> !
                \ defx#do_action('execute_command')
    nnoremap <silent><buffer><expr> x
                \ defx#do_action('execute_system')
    nnoremap <silent><buffer><expr> yy
                \ defx#do_action('yank_path')
    nnoremap <silent><buffer><expr> .
                \ defx#do_action('toggle_ignored_files')
    nnoremap <silent><buffer><expr> ;
                \ defx#do_action('repeat')
    nnoremap <silent><buffer><expr> h
                \ defx#do_action('cd', ['..'])
    nnoremap <silent><buffer><expr> ~
                \ defx#do_action('cd')
    nnoremap <silent><buffer><expr> q
                \ defx#do_action('quit')
    nnoremap <silent><buffer><expr> <Space>
                \ defx#do_action('toggle_select') . 'j'
    nnoremap <silent><buffer><expr> *
                \ defx#do_action('toggle_select_all')
    nnoremap <silent><buffer><expr> j
                \ line('.') == line('$') ? 'gg' : 'j'
    nnoremap <silent><buffer><expr> k
                \ line('.') == 1 ? 'G' : 'k'
    nnoremap <silent><buffer><expr> <c-l>
                \ defx#do_action('redraw')
    nnoremap <silent><buffer><expr> <C-g>
                \ defx#do_action('print')
    nnoremap <silent><buffer><expr> cd
                \ defx#do_action('change_vim_cwd')
    " Mouse
    nnoremap <silent><buffer><expr> <2-LeftMouse>
                \ defx#do_action('open_or_close_tree')
    nnoremap <silent><buffer><expr> <3-LeftMouse>
                \ defx#do_action('drop')
    nnoremap <silent><buffer><expr> <RightMouse>
                \ defx#do_action('cd', ['..'])
endfunction










let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <m-h> : TmuxNavigateLeft<cr>
nnoremap <silent> <m-j> : TmuxNavigateDown<cr>
nnoremap <silent> <m-k> : TmuxNavigateUp<cr>
nnoremap <silent> <m-l> : TmuxNavigateRight<cr>
nnoremap <silent> <c-\>: TmuxNavigatePrevious<cr>


let g:EasyMotion_keys = 'asdghklqwertyuiopzxcvbnmfj:'
