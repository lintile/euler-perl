use warnings;

@abundant = ();

$answer = 0;

foreach $num (1 .. 28123) {
	$divisorsum = 1;
	foreach $divisor (2 .. $num/2) {
		last if $divisor > ($num / $divisor);
		if ($num % $divisor == 0) {
			$divisorsum += $divisor;
			$divisorsum += ($num / $divisor) if $divisor != ($num / $divisor);
		}
	}

	push @abundant, $num if $divisorsum > $num;
}

%sums = ();

foreach (1 .. 28123) {
	$sums{$_} = 1;
}

@abkeys = sort  { $a <=> $b } @abundant;

foreach $a (@abkeys) {
	foreach $b (@abkeys) {
		last if $a + $b > 28123;
		$sums{$a + $b} = 0;
	}
}

foreach (1 .. 28123) {
	$answer += $_ if $sums{$_} == 1;
}

print "Sum: $answer\n";
