use warnings;
use bignum;

$number = 2 ** 1000;
$number = "$number";

$sum = 0;

foreach (0 .. length($number) - 1) {
	$sum += int(substr($number, $_, 1));
}

print $sum . "\n";
