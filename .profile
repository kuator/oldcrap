# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi




#XKB_DIR="$HOME/.config/xkb"
#XKB_SYMBOL_FILE="my-symbols"
#XKB_KEYCODE_FILE="my-keycodes"
#

#setxkbmap -layout "us+$XKB_SYMBOL_FILE(xcape-special)" \
#    -keycodes "evdev+$XKB_KEYCODE_FILE(xcape-special)" \
#    -option "" -print \
#    | xkbcomp -I"$XKB_DIR" - "${DISPLAY%%.*}" >/dev/null 2>&1



# xcape -e "Hyper_R=space"
#xcape -e "ISO_Level3_Shift=space"








#setxkbmap -layout "us+custom(default),ru(winkeys)" -option "" -option "grp:toggle,compose:rctrl" -compat "complete+custom(latch)" -print | xkbcomp -I"$HOME/.config/xkb" - "${DISPLAY%%.*}"




#//////////////Old stuff
# setxkbmap -option caps:swapescape
# setxkbmap -option ctrl:ralt_rctrl
# setxkbmap -option grp:ctrl_alt_toggle
# setxkbmap -layout us,ru

# xkbset ignorelock -control sticky -twokey -latchlock


#////////Temp comment
xkbcomp $HOME/.config/xkb/my $DISPLAY 2> /dev/null
#/////////Temp comment

xcape -t 1000 -e "Hyper_R=space"

xset r rate 220 40

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
