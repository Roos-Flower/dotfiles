#! /usr/bin/fish
set output (df /)[2]
set output (echo $output | string split " ")[2]
set output (math $output x 1024)
set output (math $output / 1073741824)
set output (math round $output)

echo $output
