#!/bin/perl -w
use strict;

# $bが真なら$b、偽なら$c
$a = $b || $c;

# $xが真でないとき、$xに$yを設定する
$x ||= $y;

# "0"は偽
$ARGV[0] = "0";
$dir = $ARGV[0] || "DEFAULT VALUE";

# "0"は真
$dir = defined($ARGV[0]) || "/tmp";

# 三項演算子
$dir = defined($ARGV) ? $ARGV[0] : "/tmp";

# Unixシステム上のユーザ名を見つける
$user =  $ENV{USER}
	  || $ENV{LOGNAME}
	  || getlogin()
	  || (getpwuid($<))[0]
	  || "Unknown uid number $<";

# ||は配列に対して使えないことに注意
# @aが空なら@bを@aにコピーする
@a = @b unless @a;
# @bが空でなければ@bを、空なら@cを@aにコピーする
@a = @b ? @b : @c;
