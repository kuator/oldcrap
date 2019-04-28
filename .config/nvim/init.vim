"| |/ /   _  __ _| |_  \ \   / (_)_ __ ___  _ __ ___
"| ' / | | |/ _` | __|  \ \ / /| | '_ ` _ \| '__/ __|
"| . \ |_| | (_| | |_    \ V / | | | | | | | | | (__
"|_|\_\__,_|\__,_|\__|    \_/  |_|_| |_| |_|_|  \___|
"
"
"  Author: Kuat Abylkassymov
"  repo  : https://github.com/kuator/dotfiles/
"

runtime plugged.vim
runtime config/plugins.vim
runtime config/keymap.vim
runtime config/global.vim
runtime config/theme.vim


filetype plugin indent on



" let g:ale_fixers = {
" \   'javascript': ['eslint'],
" \}



""for f in split(glob('~/.config/nvim/config/*.vim'), '\n')
""  exe 'source' f
""endfor
