#!/usr/bin/fish
kill hyprsunset
if test $status -ne 0
    hyprsunset -t 4000 &
end
