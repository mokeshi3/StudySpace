#!/bin/perl
#use strict;
#use warnings;

$a = "I'm a.";
third();
first();
second();
third();

sub first {
	my $a = "I'm first.";
	third();
}

sub second {
	local ($a) = "I'm second.";
	third();
}

sub third {
	print "$a\n";
}
