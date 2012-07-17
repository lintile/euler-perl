use warnings;
use Math::BigInt;

%hash = ();

foreach $a (2 .. 100) {
	foreach $b (2 .. 100) {
		$n = Math::BigInt->new("$a") ** $b;
		$hash{"$n"} = 1;
	}
}

print keys(%hash) . "\n";
