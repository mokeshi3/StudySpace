#!/bin/perl
use strict;
use warnings;

open (F, "data/oscar.txt") || die "Could not open database: $!";
%category_index = (); %year_index = ();
while($line = <F>) {
	chomp $line;
	($year, $category, $name) = split (/:/, $line);
	create_entry($year, $category, $name) if $name;
}

sub create_entry {
	my ($year, $category, $name) = @_;
	$rlEntry = [$year, $category, $name];
	push (@{$year_index{$year}}, $rlEntry);
	push (@{$category_index{$category}}, $rlEntry);
}
