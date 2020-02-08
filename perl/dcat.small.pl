#!/usr/bin/perl
use strict;
use warnings;
use v5.20.0;

my $orange = $ENV{'orange'};
my $reset = $ENV{'reset'};
my $pink = $ENV{'pink'};

foreach (@ARGV) {
   my $dir = $_;
   my @files = glob "$dir/*";
   foreach my $file (@files) {
      say "$pink$file$reset:";
      open FILE, $file;
      while (my $line = <FILE>) {
         print "  $orange|$reset  $line";
      }
      say "\n";
   }
}
