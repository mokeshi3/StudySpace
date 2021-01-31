#!/bin/perl
use strict;
use warnings;

open (F, "data/oscar.txt") || die "Could not open database: $!";
my %category_index = (); my %year_index = ();
while(my $line = <F>) {
	chomp $line;
	my ($year, $category, $name) = split (/:/, $line);
	create_entry($year, $category, $name) if $name;
}
print_all_entries_for_year();

sub create_entry {
	my ($year, $category, $name) = @_;
	my $rlEntry = [$year, $category, $name];
	push (@{$year_index{$year}}, $rlEntry);
	push (@{$category_index{$category}}, $rlEntry);
}

sub print_entries_for_year {
	my($year) = @_;
	print ("Year: $year\n");
	foreach my $rlEntry (@{$year_index{$year}}) {
		print ("\t", $rlEntry->[1], " : ", $rlEntry->[2], "\n");
	}
}

sub print_all_entries_for_year {
	foreach my $year (sort keys %year_index) {
		print_entries_for_year($year);
	}
}

sub print_entry {
	my ($year, $category) = @_;
	foreach my $rlEntry (@{$year_index{$year}}) {
		if($rlEntry->[1] eq $category) {
			print "$category ($year), ", $rlEntry->[2], "\n";
			return;
		}
	}
	print "No entry for $category ($year) \n";
}
