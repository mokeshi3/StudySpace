#!/bin/perl
use strict;
use warnings;

my $a  = 10;
my $ra = \$a;

print "\$a:  ref($a)\n";
print "\$ra: ref($ra)\n";
