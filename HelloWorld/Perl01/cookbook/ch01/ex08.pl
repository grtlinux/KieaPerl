#!/bin/perl

use vars qw($rows $cols);
no strict 'refs';
my $text;

($rows, $cols) = (24, 80);
$text = q(I am $rows high and $cols long..);
$text =~ s/\$(\w+)/${$1}/g;

print ">>>>> text: $text\n";




