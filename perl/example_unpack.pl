#!/bin/perl -w
use strict;

unpack($syntax, $string);

# 例文
$string = "To be or not to be";

# 6文字進んで6文字取り出す
$result = unpack("x6 A6", $string);

# 5文字戻って2バイト取り出す
$result = unpack("X5 A2", $string);

# 指定された場所の前に区切りを入れるためのフォーマットを作成する
sub cut2fmt {
    my (@positions) = @_;
    my $template    = '';
    my $lastpos     = $1;
    foreach $place (@positions) {
        $template .= "A" . ($place - $lastpos) . " ";
        $lastpos   = $place;
    }
    $template .= "A*";
    return $template;
}