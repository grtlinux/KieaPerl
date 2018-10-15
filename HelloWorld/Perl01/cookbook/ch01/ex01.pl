#!/bin/perl

$a = << "EOF";
This is a multiline here document
terminated by EOF on a line by itself.
Do you get it?
EOF

print ">>>>> $a\n";

sub cut2fmt {
	my (@position) = @_;
	my $template = '';
	my $lastpos = 1;
	
	foreach $place (@position) {
		$template .= "A" . ($place - $lastpos) . " ";
		$lastpos = $place;
	}
	
	$template .= "A*";
	return $template;
}

$fmt = cut2fmt(8, 14, 20, 26, 30);
print "$fmt\n";

