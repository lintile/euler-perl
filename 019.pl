use DateTime;

$numSumdays = 0;

$dt = DateTime->new(
      year       => 1901,
      month      => 1,
      day        => 1);

$dt->add( days => 1 ) while ( $dt->day_of_week() != 7);

while ( $dt->year != 2001 ) {
	$numSumdays++ if ( $dt->day == 1 );	#add if it's the first of the month
	$dt->add( days => 7 ); 			#go to the next sunday
	#print $dt->mdy('/') . "\n";
}

print $numSumdays . "\n";
