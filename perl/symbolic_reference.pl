#!/bin/perl
#use strict;
use warnings;

$test = "";

while($arg = shift @ARGV) {
	if ($arg =~ /-D(\w+)=(\w+)/) { # $testに-Dtest=***の***を代入する。
		$var_name = $1;
		$value = $2;
		$$var_name = $value;
	}
}

print "option -Dtest = $test\n";
