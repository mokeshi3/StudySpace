#!/bin/perl
#use strict;
use warnings;

$test = "";

while($arg = shift @ARGV) {
	if ($arg =~ /-D(\w+)=(\w+)/) {
		$var_name = $1;
		$value = $2;
		$$var_name = $value; # $1の名前の変数に$2の値を代入する。
	}
}

print "option -Dtest = $test\n";
