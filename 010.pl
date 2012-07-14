my $sieve = '';
vec($sieve, 2000000, 1) = 0;

$sieve = ~$sieve;

for (my $i = 2; $i <= 2000000; $i++) {
	next unless (vec($sieve, $i, 1));
	for (my $x = $i * 2; $x <= 2000000; $x += $i) {
		vec($sieve, $x, 1) = 0;
	}
}

$total = 0;

for (2..2000000) {
	if (vec $sieve, $_, 1) {
		$total += $_;
	}
}

print $total . "\n";
