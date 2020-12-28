#!/bin/perl
print "Input number:\n";
$number = <STDIN>;
chomp($number);

if ($number =~ m/^[+-]?[0-9]+(\.[0-9]+)?$/) {
	printf "Yes\n";
} else {
	print "No\n";
}
