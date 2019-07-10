let g:tmux_navigator_no_mappings = 1
nnoremap <silent> <c-w><c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-w><c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-w><c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-w><c-l> :TmuxNavigateRight<cr>
nnoremap <silent> <C-w>\ :TmuxNavigatePrevious<cr>


" For all buffers
call denite#custom#option('_', {
	\ 'empty': 0,
	\ 'auto_resume': 1,
	\ 'statusline': 1,
	\ 'start_filter': 1,
	\ 'vertical_preview': 1,
	\ 'prompt': '❯❯❯',
	\ })

if has('nvim')
	call denite#custom#option('_', { 'split': 'floating' })
endif

call denite#custom#option('_', {'root_markers': '.venv, venv/, .git, build.sbt, Pipfile, package.json,init.vim, .+.sln'} )

nnoremap <silent><leader>do :<C-u>Denite file/old -default-action=switch <CR>
nnoremap <silent><leader>df :Denite file/rec <cr>
nnoremap <silent><leader>dg :<C-u>DeniteProjectDir grep -buffer-name=search -no-empty <CR>
nnoremap <silent><leader>dp :<c-u>DeniteProjectDir file/rec <cr>

" nnoremap <silent><localleader>o :<C-u>Denite file/old -default-action=switch <CR>
" nnoremap <silent><localleader>f :Denite file/rec <cr>
" nnoremap <silent><localleader>g :<C-u>DeniteProjectDir grep -buffer-name=search -no-empty <CR>
" nnoremap <silent><localleader>p :<c-u>DeniteProjectDir file/rec <cr>

" KEY MAPPINGS
autocmd FileType denite call s:denite_settings()
function! s:denite_settings() abort
	highlight! link CursorLine Visual
	nnoremap <silent><buffer><expr> <CR> denite#do_map('do_action')
	nnoremap <silent><buffer><expr> i    denite#do_map('open_filter_buffer')
	nnoremap <silent><buffer><expr> d    denite#do_map('do_action', 'delete')
	nnoremap <silent><buffer><expr> p    denite#do_map('do_action', 'preview')
	nnoremap <silent><buffer><expr> t    denite#do_map('do_action', 'tabopen')
	nnoremap <silent><buffer><expr> v    denite#do_map('do_action', 'vsplit')
	nnoremap <silent><buffer><expr> h    denite#do_map('do_action', 'split')
	nnoremap <silent><buffer><expr> -    denite#do_map('do_action', 'split')
	nnoremap <silent><buffer><expr> '    denite#do_map('quick_move')
	nnoremap <silent><buffer><expr> q    denite#do_map('quit')
	nnoremap <silent><buffer><expr> r    denite#do_map('redraw')
	nnoremap <silent><buffer><expr> yy   denite#do_map('do_action', 'yank')
	nnoremap <silent><buffer><expr> <Esc>   denite#do_map('quit')
	nnoremap <silent><buffer><expr> <C-u>   denite#do_map('restore_sources')
	nnoremap <silent><buffer><expr> <C-f>   denite#do_map('do_action', 'defx')
	nnoremap <silent><buffer><expr> <C-x>   denite#do_map('choose_action')
	nnoremap <silent><buffer><expr><nowait> <Space> denite#do_map('toggle_select').'j'
endfunction

autocmd FileType denite-filter call s:denite_filter_settings()
function! s:denite_filter_settings() abort
	nnoremap <silent><buffer><expr> <Esc>  denite#do_map('quit')
	inoremap <silent><buffer><expr> <Esc>  denite#do_map('quit')
  inoremap <silent><buffer><expr> <cr>   denite#do_map('do_action')
	nnoremap <silent><buffer><expr> q      denite#do_map('quit')
	inoremap <silent><buffer><expr> <C-c>  denite#do_map('quit')
	nnoremap <silent><buffer><expr> <C-c>  denite#do_map('quit')
	inoremap <silent><buffer>       kj     <Esc><C-w>p
	nnoremap <silent><buffer>       kj     <Esc><C-w>p
endfunction





"Defx{{{
nnoremap <silent> <localleader>e :Defx -split=vertical -winwidth=35 -direction=topleft -columns=filename:type:mark<CR>
nnoremap <silent> <leader>tv :Defx -split=vertical -winwidth=35 -direction=topleft -columns=filename:type:mark<CR>
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
    nnoremap <silent><buffer><expr> <C-l>
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
"}}}


let g:coc_global_extensions =['coc-html',
      \ 'coc-css',
      \ 'coc-snippets',
      \ 'coc-prettier',
      \ 'coc-eslint',
      \ 'coc-emmet',
      \ 'coc-tsserver',
      \ 'coc-json',
      \ 'coc-python',
      \ 'coc-solargraph']
      " \ 'coc-highlight',
      " \ 'coc-git',
      " \ 'coc-emoji',
      " \ 'coc-lists',
      " \ 'coc-post',
      " \ 'coc-stylelint',
      " \ 'coc-yaml',

let g:user_emmet_leader_key=','
let g:user_emmet_install_global = 0
autocmd FileType html,css,javascript EmmetInstall




" === coc.nvim === "

" if hidden is not set, TextEdit might fail.
set hidden
" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup
" Better display for messages
set cmdheight=2
" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=100
" don't give |ins-completion-menu| messages.
set shortmess+=c
" always show signcolumns
set signcolumn=yes
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" Remap for rename current word
nmap <leader>r <Plug>(coc-rename)
" Remap for do codeAction of current line
nmap <silent><leader>ac <Plug>(coc-codeaction)
nmap <silent><leader>qf <Plug>(coc-fix-current)
" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)
" Use `[c` and `]c` to navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)
" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
" Highlight symbol under cursor on CursorHold
" autocmd CursorHold * silent call CocActionAsync('highlight')
" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)


" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

inoremap <silent><expr> <m-space> coc#refresh()
inoremap <silent><expr> <a-space> coc#refresh()



"EasyMotion
let g:EasyMotion_do_mapping = 0 " Disable default mappings
nmap <localleader>w <Plug>(easymotion-bd-w)
nmap <localleader>w <Plug>(easymotion-overwin-w)
nmap <localleader>f <Plug>(easymotion-bd-f)
nmap <localleader>s <Plug>(easymotion-overwin-f2)
let g:EasyMotion_smartcase = 1
" JK motions: Line motions
nmap <localleader>j <Plug>(easymotion-j)
nmap <localleader>k <Plug>(easymotion-k)
nmap <localleader>g <Plug>(easymotion-bd-jk)
nmap <localleader>g <Plug>(easymotion-overwin-line)

omap zw <Plug>(easymotion-bd-w)
omap zf <Plug>(easymotion-bd-f)
omap zj <Plug>(easymotion-j)
omap zk <Plug>(easymotion-k)
omap zg <Plug>(easymotion-bd-jk)

" Targets.vim
let g:targets_nl = 'nN'


" vim-after-object
" autocmd VimEnter * call after_object#enable('=', ':', '-', '#', ' ')
autocmd VimEnter * call after_object#enable([']', '['], '=', ':')

" rainbow.vim
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle


"titlecase.vim
let g:titlecase_map_keys = 0
nmap <leader>gt <Plug>Titlecase
vmap <leader>gt <Plug>Titlecase
