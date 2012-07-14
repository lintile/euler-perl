
%hash = ();

$hash{1} = 1;

foreach $num (1 .. 10000) {
	$numdivisors = 1;
	foreach $divisor (2 .. $num/2) {
		last if $divisor > ($num / $divisor);
		if ($num % $divisor == 0) {
			$numdivisors += $divisor;
			$numdivisors += ($num / $divisor) if $divisor != ($num / $divisor);
		}
	}
	$hash{$num} = $numdivisors;
}

$sum = 0;

foreach (1 .. 10000) {
	if ($_ == $hash{$hash{$_}} and $hash{$_} != $_) {
		$sum += $_;
		print $_ . "\n";
	}
}

print "Sum: $sum\n";

