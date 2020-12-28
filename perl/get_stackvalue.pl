#!/bin/perl
printf "Input stack value:\n";
$price = <STDIN>;
chomp($price);
$price =~ s/(\.\d\d[1-9]?)\d*/$1/;
printf "%s\n", $price;
