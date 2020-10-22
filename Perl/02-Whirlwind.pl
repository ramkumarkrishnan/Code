#!/usr/bin/perl

#Anything OS dependent is a bad example - Windows does not support ls
#Gitbash in Windows does not seem to find the path for perldoc
@lines = `ls -al`; # perldoc -u -f atan2`;

foreach (@lines) {
   s/\w:/&/g;
   print;
}
