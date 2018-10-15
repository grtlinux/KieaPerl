#!/bin/perl

#my $user;

#$user ||= "I don't know..";
#print ">>>>> $user\n"

$user = $ENV{USER}
	|| $ENV{LOGNAME}
	|| getlogin()
	|| (getpwuid($<)) [0]
	|| "Unknown uid number $<";

print ">>>>> $user\n"

