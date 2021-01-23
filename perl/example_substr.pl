#!/bin/perl -w
use strict;

# 基本構文
substr($string, $offset, $count);

# 例文
$string = "This is what you have.";

# 切り抜き
$value = substr($string, $offset, $count);
$value = substr($string, $offset);

$first = substr($string, 0, 1); # "T"
$start = substr($string, 5, 2); # "is"
$rest = substr($string, 13); # "you have"
$last = substr($string, -1); # "."
$end = substr($string, -5); # "have."
$piece = substr($string, -9, 3); # "you"

# 書き込み
substr($string, $offset, $count) = $newstring;
substr($string, $offset) = $newtail;

substr($string, 5, 2) = "wasn't"; # "is"を"wan't"に換える
substr($string, -12) = "ondrous"; # 最後の12文字を置き換える
substr($string, 0, 1) = ""; # 最初の文字を削除する
substr($string, -10) = ""; # 最後の10文字を削除する

# =~演算子と組み合わせて使う
# 最後の10文字とのみマッチするかを検証
if(substr($string, -10) =~ /pattern/) {
    print "Pattern matches in last 10 character\n";
}

# 最初の5文字に限って、"is"を"at"に置き換える
substr($string, 0, 5) =~ s/is/at/g;

# 文字列中の最初の文字と最後の文字を交換する
(substr($string, 0, 1), substr($string, -1, 1)) = (substr($string, -1, 1), substr($string, 0, 1));