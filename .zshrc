# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

export PATH=$HOME/.npm-global/bin:$PATH

JAVA_PATH=/usr/lib/jvm/java-11-openjdk-amd64

# Path to your oh-my-zsh installation.
export ZSH="/home/evakuator/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="refined"
#ZSH_THEME="bullet-train"

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
plugins=( git vi-mode zsh-autosuggestions zsh-syntax-highlighting pip-env z)

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
alias zic="vim ~/.zshrc"
alias vic="vim ~/.vimrc"
alias nic="nvim ~/.config/nvim/init.vim"
alias pric="nvim ~/.profile"
alias gotop="cd ~/Documents/Programming"
alias djangogo="cd ~/Documents/django"
alias jsgo="cd ~/Documents/javascript"
alias v="vim"
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
alias maketern="cp ~/.tern-project ."
alias sim="cd /home/evakuator/Documents/kbtu/simulation/"
alias config="cd /home/evakuator/.config/"
alias doc="cd /home/evakuator/Documents/"
alias dow="cd /home/evakuator/Downloads/"
alias k="cd /home/evakuator/Documents/kbtu/"
alias lar="cd /home/evakuator/Documents/kbtu/angular/"
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




# export PROMPT='[${ret_status}%{$fg[magenta]%}%n@%{$fg[red]%}%m]-[%{$fg[cyan]%}%c%{$reset_color%}]%{$fg_bold[blue]%}-[%T]%{$reset_color%}$ '
# PS1='%m %1d$ '


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

cowsay $(fortune)
#cowsay "Glory to Mankind"
#cowsay "Nurai is bitch"
#cat /home/evakuator/another.text

. /home/evakuator/anaconda3/etc/profile.d/conda.sh


clear-screen() { echoti clear; precmd; zle redisplay; }
zle -N clear-screen



#shopt -s extglob

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


