#!/bin/perl
use strict;
use warnings;

open(F, "data/oscar.txt") || die "Could not find data/oscar.txt.";
my %category_index = ();my %year_index = ();
while(my $line = <F>) {
	chomp($line);
	my ($year, $category, $name) = split(/:/, $line);
	create_entry($year, $category, $name);
}
print_all_entry();

sub create_entry {
	my ($year, $category, $name) = @_;
	my $entry = [$year, $category, $name];
	push(@{$year_index{$year}}, $entry);
	push(@{$category_index{$category}}, $entry);
}

sub print_entry {
	my ($year, $category, $name) = @{$_[0]};
	print("Year    : $year\n");
	print("Category: $category\n");
	print("Name    : $name\n");
}

sub print_all_entry {
	foreach my $key (sort keys %year_index) {
		foreach my $entry (@{$year_index{$key}}) {
			print_entry($entry);
			print("\n");
		}
	}
}

