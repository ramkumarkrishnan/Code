#!/usr/bin/perl -w
print "Provide colwidth: ";
chomp (my $width = <STDIN>);
print "\nProvide filename: ";
chomp (my $filnam = <STDIN>);
printf "\n*** Now printing file: %s formatted to colwidth %d***\n", $filnam, $width;
print "1234567890" x 7, "12345\n";

my $fh;
open $fh, '<', $filnam
  or die "Not able to open $filnam!\n";

while (<$fh>) {
	chomp;
	printf "%*s\n", $width, $_;
}
