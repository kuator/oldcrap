# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
## Export npm
export PATH=$HOME/.npm-global/bin:$PATH

## java shit :\
JAVA_PATH=/usr/lib/jvm/java-11-openjdk-amd64

# Path to your oh-my-zsh installation.
export ZSH="/home/evakuator/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="refined"
#ZSH_THEME="bullet-train"
export NVIM_TUI_ENABLE_TRUE_COLOR=1

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=3

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
#ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git vi-mode zsh-autosuggestions zsh-syntax-highlighting pip-env z pyenv)
# plugins=(git vi-mode zsh-autosuggestions zsh-syntax-highlighting pip-env z)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias cb="xclip -selection clipboard"
alias sl="ls"
alias zic="nvim ~/.zshrc"
alias vic="nvim ~/.vimrc"
alias nic="nvim ~/.config/nvim/init.vim"
alias pric="nvim ~/.profile"
alias gotop="cd ~/Documents/Programming"
alias djangogo="cd ~/Documents/kbtu/django"
alias jsgo="cd ~/Documents/javascript"
alias v="nvim"
alias n="nvim"
alias djrs="python manage.py runserver"
alias djsd='python manage.py syncdb'
alias djbs='python manage.py dbshell'
alias djsh="python manage.py shell"
alias djm="python manage.py migrate"
alias djmm="python manage.py makemigrations"
alias djmmm="python manage.py makemigrations;python manage.py migrate"
alias createuser="python manage.py createsuperuser"
alias c="clear"
alias zish="source ~/.zshrc"
alias sourcezsh="source ~/.zshrc"
alias pipsh="pipenv shell"
alias links="nvim ~/links/links.txt"
alias sentdex="djangogo; cd sentdex"
alias n.="nvim s"
alias vi="nvim"
alias maketern="cp ~/.tern-project ."
alias sim="cd /home/evakuator/Documents/kbtu/simulation/"
alias con="cd /home/evakuator/.config/"
alias doc="cd /home/evakuator/Documents/"
alias dow="cd /home/evakuator/Downloads/"
alias k="cd /home/evakuator/Documents/kbtu/"
alias lar="cd /home/evakuator/Documents/kbtu/angular/"
alias git-root='cd $(git rev-parse --show-cdup)'
#alias sim="nvim -u NONE -N"


# alias ohmyzsh="mate ~/.oh-my-zsh"


# added by Anaconda3 2018.12 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!

#__conda_setup="$(CONDA_REPORT_ERRORS=false '/home/evakuator/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
#if [ $? -eq 0 ]; then
#    \eval "$__conda_setup"
#else
#    if [ -f "/home/evakuator/anaconda3/etc/profile.d/conda.sh" ]; then
#        . "/home/evakuator/anaconda3/etc/profile.d/conda.sh"
#        CONDA_CHANGEPS1=false conda activate base
#    else
#        \export PATH="/home/evakuator/anaconda3/bin:$PATH"
#    fi
#fi
#unset __conda_setup

# <<< conda init <<<


. /home/evakuator/anaconda3/etc/profile.d/conda.sh




# export PROMPT='[${ret_status}%{$fg[magenta]%}%n@%{$fg[red]%}%m]-[%{$fg[cyan]%}%c%{$reset_color%}]%{$fg_bold[blue]%}-[%T]%{$reset_color%}$ '
# PS1='%m %1d$ '



# Set zsh mode to vi over emacs
bindkey -v

# ci"
autoload -U select-quoted
zle -N select-quoted
for m in visual viopp; do
  for c in {a,i}{\',\",\`}; do
    bindkey -M $m $c select-quoted
  done
done

# ci{, ci(
autoload -U select-bracketed
zle -N select-bracketed
for m in visual viopp; do
  for c in {a,i}${(s..)^:-'()[]{}<>bB'}; do
    bindkey -M $m $c select-bracketed
  done
done



# # <<< vi init <<<
# surround
autoload -Uz surround
zle -N delete-surround surround
zle -N add-surround surround
zle -N change-surround surround
bindkey -a cs change-surround
bindkey -a ds delete-surround
bindkey -a ys add-surround
bindkey -M visual S add-surround
bindkey 'kj' vi-cmd-mode
PS1+='${VIMODE}'
#   '$' for normal insert mode
#   a big red 'I' for command mode - to me this is 'NOT insert' because red
function zle-line-init zle-keymap-select {
    DOLLAR='%B%F{green}$%f%b '
    GIANT_I='%B%F{red}I%f%b '
    VIMODE="${${KEYMAP/vicmd/$GIANT_I}/(main|viins)/$DOLLAR}"
    zle reset-prompt
}
zle -N zle-line-init
zle -N zle-keymap-select

clear-screen() { echoti clear; precmd; zle redisplay; }
zle -N clear-screen
# # <<< vi init <<<








cowsay $(fortune)






#shopt -s extglob


# https://github.com/junegunn/fzf/issues/337#issuecomment-136383876
# export FZF_DEFAULT_COMMAND="fd . '/mnt/myhdd/' ."
# export FZF_DEFAULT_COMMAND='rg ~ /mnt/myhdd/ --files'


# export FZF_DEFAULT_COMMAND='fd --type f --color=never'
# export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
# export FZF_ALT_C_COMMAND='fd --type d . --color=never'

export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'

export FZF_DEFAULT_OPTS='--bind alt-j:down,alt-k:up'

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"


export VISUAL=nvim
export EDITOR="$VISUAL"


# cdf - cd into the directory of the selected file
cdf() {
   local file
   local dir
   file=$(fzf +m -q "$1") && dir=$(dirname "$file") && cd "$dir"
}


if [ $(command -v rlwrap) ] ; then
  alias node='NODE_NO_READLINE=1 rlwrap node'
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh








# function auto_pipenv_shell {
#     if [ ! -n "${PIPENV_ACTIVE+1}" ]; then
#         if [ -f "Pipfile" ] ; then
#             pipenv shell
#         fi
#     fi
# }

# function cd {
#     builtin cd "$@"
#     auto_pipenv_shell
# }

# auto_pipenv_shell


# function mkdir
# {
#   command mkdir $1 && cd $1
# }

mkcd() {
  mkdir -p $1 && cd $1
}


# zsh-bd
. $HOME/.zsh/plugins/bd/bd.zsh


# zsh-virtualenv-autodetect
. $HOME/.zsh/plugins/zsh-autoswitch-virtualenv/autoswitch_virtualenv.plugin.zsh







function x11-clip-wrap-widgets() {
    # NB: Assume we are the first wrapper and that we only wrap native widgets
    # See zsh-autosuggestions.zsh for a more generic and more robust wrapper
    local copy_or_paste=$1
    shift

    for widget in $@; do
        # Ugh, zsh doesn't have closures
        if [[ $copy_or_paste == "copy" ]]; then
            eval "
            function _x11-clip-wrapped-$widget() {
                zle .$widget
                xclip -in -selection clipboard <<<\$CUTBUFFER
            }
            "
        else
            eval "
            function _x11-clip-wrapped-$widget() {
                CUTBUFFER=\$(xclip -out -selection clipboard)
                zle .$widget
            }
            "
        fi

        zle -N $widget _x11-clip-wrapped-$widget
    done
}


local copy_widgets=(
    vi-yank vi-yank-eol vi-delete vi-backward-kill-word vi-change-whole-line
)
local paste_widgets=(
    vi-put-{before,after}
)

# NB: can atm. only wrap native widgets
x11-clip-wrap-widgets copy $copy_widgets
x11-clip-wrap-widgets paste  $paste_widgets
