use DateTime;

$dt = DateTime->new(
      year       => 1900,
      month      => 1,
      day        => 1);

print $dt->day_of_week() . "\n";
