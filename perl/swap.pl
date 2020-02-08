#!/usr/bin/perl
use strict;
use warnings;

sub swap {
  ($_[0], $_[1]) = ($_[1], $_[0]);
}

my $one = 1;
my $two = 2;
my @list = ( 1, 2 );
swap($one, $two);
swap(@list);
print "$one $two\n";
print "@list\n";
