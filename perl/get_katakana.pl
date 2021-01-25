#!/bin/perl
use strict;
use warnings;
use Encode;
use utf8;
binmode STDOUT, ":utf8";

my $utf8 = find_encoding("utf8");

print "Input text:\n";
my $text = <STDIN>;
chomp($text);
while($text=~qr/(\p{InKatakana})/) {
	printf "%s\n", $utf8->encode($1);
}
