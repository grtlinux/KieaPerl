#!/bin/perl

#####

@lines = (<<'END_OF_HERE_DOC' =~ m/^\s*(.+)/gm);
        The boy stood on the burning deck,
        It was as hot as glass.
END_OF_HERE_DOC

$string = join("|", @lines);
print ">>>>> string: ", $string, "\n";

#####


#####


