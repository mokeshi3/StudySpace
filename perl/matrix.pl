#!/bin/env perl
use strict;
use warnings;

sub matrix_read_file()
{
	my ($filename) = @_;
	my $matrix_name;
	open (F, $filename) || die "Could not open $filename: $!";
	while(my $line = <FILE>)
	{
		chomp($line);
		next if $line =~ /^\s*$/;
		if ($line =~ /[A-Za-z]\w*/) {
			$matrix_name = $1;
		} else {
			my (@row) = split(/\s+/, $line);
			push (@{$matrix_name}, \@row);
		}
	}
}
