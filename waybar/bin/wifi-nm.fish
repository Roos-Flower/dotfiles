#! /usr/bin/fish
set s (string sub -s 1 -l 5 (nmcli -f DEVICE connection show | grep wlan0))
set i " "
switch $s
    case '*wlan0*'
        set i (string trim (string sub -s 2 (nmcli -f IN-USE,SIGNAL device wifi | grep '*')))
        if test $i -gt 80
            echo 󰤨
        else if test $i -gt 60
            echo 󰤥
        else if test $i -gt 40
            echo 󰤢
        else
            echo 󰤟
        end
    case '*'
        echo 󰤭
end

set -e s
set -e i
