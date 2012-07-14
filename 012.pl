use warnings;

$i = 1;

$tnum = 1;

while (1) {
	$i++;
	$tnum += $i;

	#print $tnum;

	$numdivisors = 2; #1 and itself
	foreach $divisor (2 .. $tnum/2) {
		last if $divisor > ($tnum / $divisor);
		$numdivisors += 2 if $tnum % $divisor == 0;
		$numdivisors-- if $divisor == ($tnum / $divisor);
	}

	#print " has $numdivisors divisors\n";

	last if $numdivisors > 500;
}

print $tnum . "\n";
