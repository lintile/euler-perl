use strict;
use warnings;

my $term = 	2;
my $term1 = 1;
my $term2 = 1;
my $total = 0;

while ($term <= 4000000) {
	#print $term . "\n";

	if ($term % 2 == 0) {
		$total += $term;
	}

	$term2 = $term1;
	$term1 = $term;
	$term = $term1 + $term2;
}

print $total . "\n";
