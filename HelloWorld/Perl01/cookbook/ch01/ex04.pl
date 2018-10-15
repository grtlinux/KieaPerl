#!/bin/perl

#####

$char = 'e';

$num = ord($char);
$char = chr($num);

$char = sprintf("%c", $num);

printf("Number %d is character %c\n", $num, $num);

######

$string = "Hello, world!!!";
@ascii = unpack("C*", $string);
$string2 = pack("C*", @ascii);

#####

@ascii_characters = unpack("C*", "sample");
print ">>>>> @ascii_characters\n";

$word = pack("C*", @ascii_characters);
print ">>>>> $word\n";

#####

$hal = "HAL";
@ascii = unpack("C*", $hal);
foreach $val (@ascii) {
	$val++;
}
$ibm = pack("C*", @ascii);
print ">>>>> $ibm\n";




