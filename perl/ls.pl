#!/usr/bin/perl
use strict;
use warnings;

sub print_dir {
   my $dir = shift;
   my @files = glob "$dir/*";
   foreach my $file (@files) {
      print "$file\n";
   }
}
sub ls {
   foreach (@_) {
      print_dir $_;
   }
}
ls @ARGV;
