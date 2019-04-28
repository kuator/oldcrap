"setlocal formatprg=prettier\ --parser\ typescript
" autocmd BufWritePre *.ts :normal gggqG

" let b:ale_linters = {
" \   'typescript': ['tsserver', 'tslint'],
" \}

let b:ale_linters = {
\   'typescript': ['tsserver'],
\}

let b:ale_fixers = ['prettier']

let b:ale_fixers = {
\    'typescript': ['prettier', 'eslint'],
\}

let b:ale_linters_ignore = {'typescript': ['tslint']}


setlocal autoindent
setlocal cindent
setlocal smartindent
set expandtab 
set shiftwidth=2
