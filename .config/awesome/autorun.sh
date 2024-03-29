#!/usr/bin/env bash

function run {
  if ! pgrep -f "$1" ;
  then
    $@&
  fi
}

run sxhkd &
run nm-applet &
run cbatticon &
run flameshot &
run nitrogen --restore &
run picom &
run copyq &
run /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
run discord --start-minimized &
run kdeconnect-indicator &
run blueman-applet &
run keepassxc &
