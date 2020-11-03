#!/usr/bin/perl -w
chomp (my @lines = <>);

print "1234567890" x 7, "12345\n";

foreach (@lines) {
	printf "%20s\n", $_;
}
