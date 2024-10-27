# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !

# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]]; then
  # Shell is non-interactive.  Be done now!
  return
fi

# Put your fun stuff here.

#neofetch

if [ "$TERM" = "xterm-kitty" ]; then
  fastfetch --kitty-direct /home/SP649/.config/gentoo.png --logo-width 26 --logo-height 14
else
  fastfetch
fi

cd /home/SP649/

alias vim="nvim"
#alias ff="fastfetch --kitty-direct /home/SP649/.config/gentoo.png --logo-width 26 --logo-height 14"
alias ff="fastfetch"

PS1='\[\e[38;5;25;1m\]┌─\[\e[0;38;5;25m\][\[\e[0m\] \[\e[38;5;111;1m\]\u\[\e[0;38;5;111m\]@\[\e[38;5;111;1m\]\h\[\e[0m\] \[\e[38;5;25m\]]\[\e[38;5;25m\]-\[\e[38;5;25m\][\[\e[0m\] \[\e[38;5;111m\]\T\[\e[0m\] \[\e[38;5;25m\]]\[\e[38;5;25m\]-\[\e[38;5;25m\][\[\e[0m\] \[\e[38;5;110m\]\d\[\e[0m\] \[\e[38;5;25m\]]\[\e[38;5;25m\]-\[\e[38;5;25m\][\[\e[0m\] \[\e[38;5;117;3m\]\w\[\e[0m\] \[\e[38;5;25m\]]\n\[\e[38;5;25;1m\]└\[\e[0;38;5;25m\]\$\[\e[0m\] '
. "$HOME/.cargo/env"
