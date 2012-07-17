use warnings;

use constant POWER => 5;

sub splitpower {
	my ($n, $power) = (@_);
	@numbers = split('', $n);

	my $sum = 0;

	foreach (@numbers) {
		$sum += int($_) ** $power;
	}

	$sum;
}

$total = 0;

foreach (10 .. (9 ** POWER) * (POWER + 1)) {
	$value = splitpower($_, POWER);
	$total += $value if $_ == $value;
}

print "$total\n";
