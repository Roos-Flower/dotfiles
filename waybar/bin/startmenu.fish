#! /usr/bin/fish
set b (eww active-windows|string join " ")
switch $b
    case "*startmenu*"
        eww close startmenu
        eww close dismiss-overlay
        eww update open=false
    case "*"
        eww open startmenu
        eww update open=true
end
