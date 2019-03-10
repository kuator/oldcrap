"| |/ /   _  __ _| |_  \ \   / (_)_ __ ___  _ __ ___ 
"| ' / | | |/ _` | __|  \ \ / /| | '_ ` _ \| '__/ __|
"| . \ |_| | (_| | |_    \ V / | | | | | | | | | (__ 
"|_|\_\__,_|\__,_|\__|    \_/  |_|_| |_| |_|_|  \___|
"
"
"  Author: Kuat Abylkassymov
"  repo  : https://github.com/kuator/dotfiles/
"


source $HOME/.config/nvim/config/initialize.vim
source $HOME/.config/nvim/config/general.vim
source $HOME/.config/nvim/config/lines.vim
source $HOME/.config/nvim/config/mappings.vim
source $HOME/.config/nvim/config/plugins.vim
"source $HOME/.config/nvim/config/autoclosing.vim
source $HOME/.config/nvim/config/gui.vim



""for f in split(glob('~/.config/nvim/config/*.vim'), '\n')
""  exe 'source' f
""endfor



"let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -l -g ""'
