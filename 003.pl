use strict;
use warnings;

my $term = 600851475143;

my $root = sqrt($term);

my $sieve = '';
vec($sieve, $root, 1) = 0;

$sieve = ~$sieve;

for (my $i = 2; $i <= $root; $i++) {
	next unless (vec($sieve, $i, 1));
	for (my $x = $i * 2; $x <= $root; $x += $i) {
		vec($sieve, $x, 1) = 0;
	}
}

for (2..$root) {
	if (vec $sieve, $_, 1) {
		while ($term % $_ == 0)
		{
			$term /= $_;
			print "$_\n" ;
		}
	}

}
