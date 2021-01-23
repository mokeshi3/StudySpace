#!/bin/perl
$html=<>;
$html=~s/<b>((?!<b>).*?)<\/b>/$1/;
printf "%s\n", $html;
