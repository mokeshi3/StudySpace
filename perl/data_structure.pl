#!/bin/perl
use strict;
use warnings;

my %sue = (
	"name" => "Sue",
	"age"  => "45");
my %john = (
	"name" => "John",
	"age"  => "20");
my %peggy = (
	"name" => "Peggy",
	"age"  => "16");

$sue{"children"} = [\%john, \%peggy];

print "peggy age: %sue{childlen}[1]{age}\n";

my %sue2 = (
	"name" => "Sue2",
	"age"  => "45",
	"children" => [
		{
			"name" => "John",
			"age"  => "20"
		},
		{
			"name" => "Peggy",
			"age"  => "16"
		}
	]
);

print "peggy age: %sue2{childlen}[1]{age}\n";
