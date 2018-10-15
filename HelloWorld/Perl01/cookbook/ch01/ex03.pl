#!/bin/perl

($alpha, $beta, $production) = qw(January March August);

($alpha, $beta, $production) = ($beta, $production, $alpha);

print ">>>>> $alpha, $beta, $production\n"

