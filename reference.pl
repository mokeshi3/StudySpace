#!/bin/perl
use strict;

my $scaler = 1;
my @array = (10, 20);
my %hash = ("laurel" => "hardy", "nick" => "nora");

# reference
my $rscaler = \$scaler;
my $rarray = \@array;
my $rhash = \%hash;

# dereference
print "$$rscaler\n";
print "@$rarray\n";
print "%$rhash\n";
