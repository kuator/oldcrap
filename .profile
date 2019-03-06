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

#xcape -e "Hyper_R=space"
#xcape -e "ISO_Level3_Shift=space"

setxkbmap -option caps:swapescape
setxkbmap -option ctrl:ralt_rctrl
setxkbmap -option grp:ctrl_alt_toggle
setxkbmap -layout us,ru
xset r rate 220 40
