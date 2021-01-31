#!/bin/perl
use strict;
use warnings;

%options = {
	"-h" => \&help,
	"-f" => sub {$askNoQuestions = 1},
	"-r" => sub {$recursivve = 1},
	"_default_" => \&default,
};
ProcessArgs(\@ARGV, \%options);
sub ProcessArgs {
	my ($rlArgs, $rhOptions) = @_;
}
