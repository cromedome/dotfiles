#!/bin/sh

# From https://gist.github.com/tanyuan/55bca522bf50363ae4573d4bdcf06e2e
# make CapsLock behave like Ctrl:
setxkbmap -option ctrl:nocaps
setxkbmap -option altwin:swap_alt_win

# make short-pressed Ctrl behave like Escape:
xcape -e 'Control_L=Escape'

# Disable sticky keys (xfce)
xkbset -a
