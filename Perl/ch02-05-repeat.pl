#!/usr/bin/perl -w
print "Enter string: ";
$str1 = <STDIN>;
if (defined($str1)) {
	print "The input is $str1";
} else {
	print "The input is not provided\n";
}
print "Enter repetitions: ";
$num1 = <STDIN>;
$out = $str1 x $num1;
print "Repeat: $out";
