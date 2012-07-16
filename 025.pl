use bigint;

$n  = 2;
$n1 = 1;
$n2 = 1;

$term = 3;


while (1) {
	#Calculate next term
	$term++;
	$n2 = $n1;
	$n1 = $n;
	$n = $n1 + $n2;

	last if length("$n") >= 1000;
}

print "$term\n";
