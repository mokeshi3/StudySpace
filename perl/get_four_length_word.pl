#!/bin/perl
$text = <STDIN>;
chomp($text);
while ($text =~ /\b(\w{4})\b/g) {
	print "$1\n";
}
