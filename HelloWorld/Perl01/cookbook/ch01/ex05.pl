#!/bin/perl

#####

%seen = ();
$string = "an apple a day";
foreach $byte (split //, $string) {
	$seen{$byte}++;
}
print ">>>>> 1. unique chars are: ", sort(keys %seen), "\n";

#####

%seen = ();
$string = "an apple a day";
while ($string =~ /(.)/g) {
	$seen{$1}++;
}
print ">>>>> 2. unique chars are: ", sort(keys %seen), "\n";


#####

$string = "an apple a day";
$sum = 0;
foreach $ascval (unpack("C*", $string)) {
	$sum += $ascval;
}
print ">>>>> 3. sum is $sum\n";

#####

$string = "an apple a day";
$sum = unpack("%32C*", $string);
print ">>>>> 4. sum is $sum\n";


##### need a file

$checksum = 0;
while (<>) {
	$checksum += unpack("%16C*", $_);
}
$checksum %= (2 ** 16) - 1;
print ">>>>> 5. checksum = $checksum\n";

#####

#####

