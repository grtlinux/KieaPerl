#!/bin/perl -w

#####

$string = "    Hello,    world!!!   ";
$string =~ s/^\s+//;
$string =~ s/\s+$//;
print ">$string<\n";

#####

$string = "   Hello, world!!!     ";
@many = (
	"    Hello, Kim  ",
	" How do you do?    ",
	"    What time is it?   ",
	"   That's a good idea!!  "
	);

sub trim {
	my @out = @_;
	for (@out) {
		s/^\s+//;
		s/\s+$//;
	}
	return wantarray ? @out : $out[0];
}

$string = trim($string);
@many = trim(@many);

printf(">>>>> string: '%s'\n", $string);
print ">>>>> many: ", @many, "\n";


#####

while (<STDIN>) {
	chomp;
	print ">$_<\n";
}

#####

#####

#####

