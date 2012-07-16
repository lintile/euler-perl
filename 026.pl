use warnings;
use bigint;

$longcycle = 0;
$longcycleden = 0;

sub modexp {
	my ($base, $exp, $mod) = @_;

	return 1 	 if ($exp == 0);
	return $base if ($exp == 1);

	$half = modexp($base, $exp/2, $mod);

	return ($half * $half) % $mod if ($exp % 2 == 0);
	return ($half * $half * $base) % $mod;
}

for ($d = 1000; $d > 1; $d--) {

	last if ($longcycle > $d);

	next if ($d % 2 == 0);

	@ks = (1 .. $d - 1);

	foreach $k (@ks) {
		if (modexp(10, $k, $d) == 1) {
			$longcycle = $k if $k > $longcycle;
			$longcycleden = $d;
			last;
		}
	}
}

print "$longcycleden\n";

