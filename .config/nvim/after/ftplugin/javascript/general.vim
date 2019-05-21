" let b:ale_linters = ['standard']
" let b:ale_fixers = ['standard']
let b:ale_linters = ['eslint']
let b:ale_fixers = ['eslint', 'prettier']

" let b:ale_fixers = {
" \    'javascript.jsx': ['prettier_eslint'],
" \}


" let g:ale_linters = {
" \   'javascript.jsx': ['eslint'],
" \}

" let g:ale_fixers = {
" \    'javascript.jsx': ['prettier_eslint'],
" \}

" let b:ale_linters = {
" \   'javascript': ['tsserver'],
" \}



nmap <leader>co yiwoconsole.log('<c-r>"', <c-r>");<Esc>^
iabbrev cl console.log();<left><left>


" iabbrev dd {{}}<left><left>
" iabbrev sd [[]]<left><left>
" iabbrev ss {}<left><left>
