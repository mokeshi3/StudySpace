#!/bin/perl
use strict;

my $scaler = 1;
my @array = (10, 20, 30, 40);
my %hash = ("laurel" => "hardy", "nick" => "nora");

# reference
my $rscaler = \$scaler;
my $rarray = \@array;
my $rhash = \%hash;

# dereference
print "$$rscaler\n";
print "@$rarray\n";
print "%$rhash\n";

# array reference
my $ra = \('a', 'b', 'c');    # This reference is for scaler.
print "@$rarray[2]\n";
print "$rarray->[2]\n";

# no name reference
my @nonamearray = [123, 456, 789];
my $nonamehash = {"a" => 1, "b" => 2, "c" => 3};
print "@nonamearray\n";
print "%nonamehash\n";
