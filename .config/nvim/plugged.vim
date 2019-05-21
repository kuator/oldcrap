if (!isdirectory(expand("$HOME/.config/nvim/repos/github.com/Shougo/dein.vim")))
	call system(expand("mkdir -p $HOME/.config/nvim/repos/github.com"))
	call system(expand("git clone https://github.com/Shougo/dein.vim $HOME/.config/nvim/repos/github.com/Shougo/dein.vim"))
endif

set runtimepath+=~/.config/nvim/repos/github.com/Shougo/dein.vim/

call dein#begin(expand('~/.config/nvim'))

call dein#add('Shougo/dein.vim')
call dein#add('haya14busa/dein-command.vim')
call dein#add('wsdjeg/dein-ui.vim')

call dein#add('johngrib/vim-game-code-break')
"call dein#add('davidhalter/jedi-vim', {'lazy':1})
call dein#add('godlygeek/tabular')
call dein#add('mattn/emmet-vim')



" LanguageClient {{{
call dein#add('neoclide/coc.nvim', {'merge':0, 'build': './install.sh nightly'})
" call dein#add('https://github.com/xuhdev/vim-latex-live-preview', {'lazy':1, 'on_ft':'tex'})
call dein#add('https://github.com/lervag/vimtex', {'lazy':1, 'on_ft':'tex'})
"}}}



" Completions {{{

" call dein#add('Shougo/deoplete.nvim', {'lazy': 1, 'on_event': 'InsertEnter'})
" call dein#add('Shougo/deoplete.nvim', {'lazy':1, 'on_ft':['python']})
" call dein#add('davidhalter/jedi-vim', {'lazy': 1, 'on_ft': ['python', 'cython', 'pyrex'] })
" call dein#add('deoplete-plugins/deoplete-jedi', {'lazy':1, 'on_ft':'python'})
"     if !has('nvim')
"         call dein#add('roxma/nvim-yarp')
"         call dein#add('roxma/vim-hug-neovim-rpc')
"     endif



call dein#add('Shougo/neosnippet-snippets')
call dein#add('Shougo/neosnippet.vim')
call dein#add('honza/vim-snippets')
" call dein#add('mhartington/nvim-typescript', {'build': './install.sh', 'lazy': 1, 'on_source': ['deoplete.nvim']})
"}}}

"{{{ Denite
call dein#add('Shougo/denite.nvim')
"}}}



" Operators and text-objects {{{
call dein#add('kana/vim-textobj-user')
call dein#add('kana/vim-textobj-entire')
call dein#add('wellle/targets.vim')
call dein#add('rhysd/clever-f.vim')
call dein#add('kana/vim-textobj-indent', {'lazy': 1, 'on_map':  [['ox', 'ai' , 'ii' , 'aI',  'iI']]})
call dein#add('kana/vim-textobj-line', {'lazy': 1, 'on_map': [['ox', 'al', 'il']]})
call dein#add('kana/vim-textobj-indent', {'lazy': 1, 'on_map':  [['ox', 'ai' , 'ii' , 'aI',  'iI']]})
call dein#add('https://github.com/easymotion/vim-easymotion')
call dein#add('https://github.com/tommcdo/vim-ninja-feet')
call dein#add('https://github.com/AndrewRadev/dsf.vim')
"}}}
"



" Utils {{{
call dein#add('Shougo/defx.nvim')
call dein#add('https://github.com/AndrewRadev/tagalong.vim')
" call dein#add('https://github.com/zhou13/vim-easyescape')
call dein#add('tpope/vim-commentary')
call dein#add('tpope/vim-repeat')
call dein#add('tpope/vim-surround')
call dein#add('mhinz/vim-startify')
call dein#add('https://github.com/yuttie/comfortable-motion.vim')
call dein#add('ryanoasis/vim-devicons')
call dein#add('christoomey/vim-tmux-navigator')
call dein#add('https://github.com/numirias/semshi')
call dein#add('https://github.com/tpope/vim-rsi')
" call dein#add('vim-airline/vim-airline')
" call dein#add('vim-airline/vim-airline-themes')



call dein#add('junegunn/fzf', { 'build': './install --all', 'merged': 0 })
call dein#add('junegunn/fzf.vim', { 'depends': 'fzf' })
call dein#add('dracula/vim')
call dein#add('othree/yajs.vim', {'lazy': 1, 'on_ft':'javascript'})
call dein#add('pangloss/vim-javascript', {'lazy': 1, 'on_ft':'javascript'})
call dein#add('w0rp/ale')
call dein#add('sheerun/vim-polyglot')
call dein#add('https://github.com/pangloss/vim-javascript')
call dein#add('HerringtonDarkholme/yats.vim')
"call dein#add('machakann/vim-highlightedyank')
"call dein#add('tmhedberg/SimpylFold')



"Git
call dein#add('tpope/vim-fugitive')
"


call dein#add('morhetz/gruvbox')                                                  " Gruvbox
"call dein#add('NLKNguyen/papercolor-theme')                                       " Paper color theme
"call dein#add('jacoborus/tender.vim')                                             " Tender
"call dein#add('ayu-theme/ayu-vim')
"call dein#add('https://github.com/cseelus/vim-colors-lucid')



if dein#check_install()
  call dein#install()
  let pluginsExist=1
endif

call dein#end()
filetype plugin indent on
