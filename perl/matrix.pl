#!/bin/env perl
use strict;
use warnings;

sub matrix_read_file
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

sub matrix_multiple
{
	my ($r_mat1, $r_mat2) = @_;
	my ($r_product);
	my ($r1, $c1) = matrix_count_rows_cols ($r_mat1);
	my ($r2, $c2) = matrix_count_rows_cols ($r_mat2);
	die "Matrix 1 has $c1 columns and matrix 2 has $r2 rows."
		. "Connot multiply\n" unless ($c1 == $r2);
	for(my $i = 0; $i < $c2;$i++) {
		for(my $j = 0;$j < $c1;$j++) {
			my $sum = 0;
			for(my $k = 0;$k < $c1;$k++) {
				$sum += $r_mat1->[$i][$k] * $r_mat2->[$k][$j];
			}
			$r_product->[$i][$j] = $sum;
		}
	}
	$r_product;
}

sub matrix_count_rows_cols {
	my ($r_mat) = @_;
	my $num_rows = @$r_mat;
	my $num_cols = @{$r_mat->[0]};
	($num_rows, $num_cols);
}
