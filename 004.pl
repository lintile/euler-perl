use strict;
use warnings;

my $max = 0;

foreach my $x (100 .. 999) {
	foreach my $y (100 .. 999) {
		my $product = $x * $y;
		if ( ($product) == scalar reverse($product) ) {
			if ($product > $max) {
				$max = $product;
			}
		}
	}
}

print $max, "\n";
