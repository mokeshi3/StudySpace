#!/bin/perl
printf "Input text:\n";
$text = <STDIN>;
chomp($text);
$text =~ s/(\d)(?=(\d\d\d)+(?!\d))/\1,/g;
printf "%s\n", $text;
