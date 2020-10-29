#!/usr/bin/perl -w
print "first number:";
$num1 = <STDIN>;
print "second number:";
$num2 = <STDIN>;
chomp($num1);
chomp($num2);
$prod = $num1 * $num2;
print "Product: $prod";
