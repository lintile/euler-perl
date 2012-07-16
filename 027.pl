use warnings;

my $sieve = '';
vec($sieve, 2000000, 1) = 0;

$sieve = ~$sieve;

for (my $i = 2; $i <= 2000000; $i++) {
	next unless (vec($sieve, $i, 1));
	for (my $x = $i * 2; $x <= 2000000; $x += $i) {
		vec($sieve, $x, 1) = 0;
	}
}

%primes = ();

for (2..2000000) {
	if (vec $sieve, $_, 1) {
		$primes{$_} = 1;
	}
}

$besta = 0;
$bestb = 0;
$numpr = 0;

foreach $a (-999 .. 999) {
	foreach $b (-999 .. 999) {
		next if not exists $primes{$b};
		$n = 0;
		$n++ while exists $primes{$n*$n + $a*$n + $b};
		$besta = $a, $bestb = $b, $numpr = $n if ($n > $numpr);
	}
}

print "A: $besta B: $bestb Product: " . ($besta*$bestb) . " Num Primes: $numpr\n";
