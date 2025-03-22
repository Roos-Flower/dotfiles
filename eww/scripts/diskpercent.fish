#! /usr/bin/fish
set output (df /)[2]
set output (echo $output | string split " ")
set output $output[5..6]
set output (echo $output | string replace  "%" "")
set output (echo $output | string replace  " " "")

echo $output
