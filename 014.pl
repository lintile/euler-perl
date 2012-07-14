
%hash = ();

$longestchain = 0;
$longestlength = 0;

foreach $n (1 .. 1000000)
{
	$length = 1;
	$tempn = $n;

	while ($tempn != 1)
	{
		#check to see if we have reached this number before
		if ( exists $hash{$tempn} ){
			#printf "Reached a known number: $tempn, whose length is $hash{$tempn}\n";
			$length += $hash{$tempn} - 1;
			last;
		}
		if ($tempn % 2 == 0) {
			$tempn /= 2;
		}
		else {
			$tempn = $tempn * 3 + 1;
		}
		$length ++;
	}

	#print "$n: $length\n";
	$hash{$n} = $length;

	if ($length > $longestlength) {
		$longestchain = $n;
		$longestlength = $length;
	}
}

print "$longestchain\n";
