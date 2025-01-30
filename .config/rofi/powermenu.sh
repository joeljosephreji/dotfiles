#!/usr/bin/env sh

lock=" Lock"
suspend="⏾ Suspend"
logout="󰗽 Logout"
shutdown="⏻ Shutdown"
reboot=" Reboot"

selected=$(echo "$lock
$suspend
$logout
$shutdown
$reboot" | rofi -dmenu -i -p "Power Menu")

case $selected in
    "$lock")
        # notify-send "Locking!"
        hyprlock
        ;;
    "$suspend")
        # notify-send "Suspending!"
        amixer set Master mute
        systemctl suspend
        ;;
    "$logout")
        # notify-send "Logging out!"
        hyprctl dispatch exit
        ;;
    "$reboot")
        # notify-send "Rebooting!"
        systemctl reboot
        ;;
    "$shutdown")
        # notify-send "Shutting down!"
        systemctl poweroff
        ;;
    *)
        # notify-send "Invalid Option!"
        ;;
esac

