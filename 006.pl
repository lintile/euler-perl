use strict;
use warnings;

my $sumofsquare = 0;
my $squareofsum = 0;

foreach (1 .. 100)
{
	$sumofsquare += $_ * $_;
	$squareofsum += $_;
}

$squareofsum *= $squareofsum;

print $squareofsum - $sumofsquare, "\n";
