#!/usr/bin/perl -w
use v5.20;
use feature qw(signatures);

sub greta ($greeted) {
    state @last_greeted;
    push @last_greeted, $greeted;
    return @last_greeted;
}

while (defined(my $greet_now = <STDIN>))
{
    chomp($greet_now);
    print "Hi $greet_now!\n";
    my @out = &greta($greet_now);
    print "@out are also here!\n";
}
