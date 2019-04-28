" Fix files with prettier, and then ESLint.
let b:ale_fixers = ['autopep8', 'yapf']
let b:ale_linters = ['pylint']
" Equivalent to the above.
let b:ale_fixers = {'python': ['autopep8', 'yapf']}


" Tabulation and spaces
set expandtab                                                               " Show spaces instead of tabs
set shiftwidth=0                                                            " columns per <<
set softtabstop=4                                                           " spaces per tab
set tabstop=4                                                               " columns per tabs
