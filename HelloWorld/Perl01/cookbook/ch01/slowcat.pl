#!/bin/perl
# slowcat - an emulate a slow line printer
# usage: slowcat [-DELAY] [files ...]
# ex: perl slowcat.pl -5 ex05.pl

$DELAY = ($ARGV[0] =~ /^-([.\d]+)/) ? (shift, $1) : 1;
$| = 1;
while (<>) {
	for (split(//)) {
		print;
		select(undef, undef, undef, 0.005 * $DELAY);
	}
}

