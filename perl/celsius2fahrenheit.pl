#!/bin/perl
print "Enter a temperature in Celsius:\n";
$celsius = <STDIN>;
chomp($celsius);

if ($celsius =~ m/^[0-9]+$/) {
	$fahrenheit = ($celsius * 9 / 5) + 32;
	printf "%.2lf is %.2lf F\n", $celsius, $fahrenheit;
} else {
	print "Expecting a number, so I don't understand \"$celsius\".\n";
}
