#!/bin/perl


#####

$string = "Hello, world!!!";
$revbytes = reverse($string);
print ">>>>> 1. revbytes: $revbytes\n";

#####

$string = q[Yoda said, "can you see this?"];
$revwords = join(" ", reverse split(" ", $string));
print ">>>>> 2. revwords: $revwords\n";

#####

$string = q[Yoda said, "can you see this?"];
@words = split(" ", $string);

$str1 = reverse($string);
@wrds = reverse(@words);
$str2 = reverse(@words);

print ">>>>> 3-1. str1: $str1\n";
print ">>>>> 3-2. wrds: @wrds\n";
print ">>>>> 3-3. str2: $str2\n";

#####

$string = q/Yoda said, "can you see this?"/;
@allwords = split(" ", $string);
$revwords = join(" ", reverse @allwords);
print ">>>>> 4. revwords: $revwords\n";

#####


#####


#####


#####


#####


