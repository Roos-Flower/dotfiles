#! /usr/bin/fish
set output (cat /proc/net/dev)
set output $output[4]
set output (echo $output | string split " " -n)[11]
set output (math $output / 1048576)
echo $output
