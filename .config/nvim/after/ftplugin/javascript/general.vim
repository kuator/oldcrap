let b:ale_linters = {
\   'javascript': ['eslint'],
\}

let b:ale_fixers = {
\    'javascript': ['prettier', 'eslint'],
\}

" let b:ale_linters = {
" \   'javascript': ['tsserver'],
" \}



nmap <leader>co yiwoconsole.log('<c-r>"', <c-r>");<Esc>^
iabbrev cl console.log();<left><left>

color gruvbox
