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

sub print_entries_for_year {
	my($year) = @_;
	print ("Year: $year\n");
	foreach $rlEntry (@{$year_index{$year}}) {
		print ("\t", $rlEntry->[1], " : ", $rlEntry->[2], "\n");
	}
}

sub print_all_entries_for_year {
	foreach $year (sort keys %year_index) {
		print_entries_for_year($year);
	}
}

sub print_entry {
	my ($year, $category) = @_;
	foreach $rlEntry (@{$year_index{$year}}) {
		if($rlEntry->[1] eq $category) {
			print "$category ($year), ", $rlEntry->[2], "\n";
			return;
		}
	}
	print "No entry for $category ($year) \n";
}
