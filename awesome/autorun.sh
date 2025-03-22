#!/bin/sh

run() {
  if ! pgrep -f "$1" ;
  then
    "$@"&
  fi
  xset r rate 200 40
  nm-applet &
}
run picom
exec xhost +SI:localuser:roos
