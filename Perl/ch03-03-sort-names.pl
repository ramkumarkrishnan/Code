#!/usr/bin/perl -w
#Print name given the index

@names = qw /fred betty barney dino wilma pebbles bamm-bamm gino gonzo bonzo/;
print "Names: @names\n";
@namesorted = sort(@names);
print "Names sorted: @namesorted\n";
