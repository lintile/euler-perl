use strict;
use warnings;

my $n = 1;

foreach my $factor (2 .. 20)
{
	my $remainder = $n % $factor;
	print $remainder, "\n";
	if ($remainder != 0) {
		($factor % $remainder == 0) ? ($n *= ($factor / $remainder)) : ($n *= $factor);
	}
	print $factor, ": ", $n, "\n";
}

print $n, "\n";
