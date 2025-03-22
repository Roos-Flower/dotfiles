#! /usr/bin/fish
set s (string sub -s 30 -l 20 (iwctl station wlan0 show | grep State))
set i " "
switch $s
    case "* connected*"
        set i (string sub -s 35 -l 2 (iwctl station wlan0 show | grep ' RSSI'))
        if test $i -gt -4
            echo 󰤨
        else if test $i -gt -5
            echo 󰤥
        else if test $i -gt -6
            echo 󰤢
        else
            echo 󰤟
        end
    case '*'
        echo 󰤭
end


set -e s
set -e i
