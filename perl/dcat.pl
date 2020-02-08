#!/usr/bin/perl
use strict;
use warnings;

my $orange = $ENV{'orange'};
my $reset = $ENV{'reset'};
my $pink = $ENV{'pink'};

sub print_file {
   my $file = shift;
   open FILE, $file;
   while (my $line = <FILE>) {
      print "  $orange|$reset  $line";
   }
}

sub print_dir {
   my $dir = shift;
   my @files = glob "$dir/*";
   foreach my $file (@files) {
      print "$pink$file$reset:\n";
      print_file $file;
      print "\n\n"
   }
}

sub dcat {
   foreach (@_) {
      print_dir $_;
   }
}
dcat @ARGV;
