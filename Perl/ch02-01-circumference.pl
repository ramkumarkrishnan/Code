#!/usr/bin/perl -w
$radius = <STDIN>;
chomp($radius);
if ($radius <= 0) {
    $circumference = 0;
}
else {
    $pi = 3.141592654;
    $circumference = 2 * $pi * $radius;
}
print "Circumference for radius $radius: $circumference";
