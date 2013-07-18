package MaxMind::DB::Reader::Data::EndMarker;
{
  $MaxMind::DB::Reader::Data::EndMarker::VERSION = '0.040003';
}
BEGIN {
  $MaxMind::DB::Reader::Data::EndMarker::AUTHORITY = 'cpan:TJMATHER';
}

use strict;
use warnings;

sub new {
    my $str = 'end marker';
    return bless \$str, __PACKAGE__;
}

1;
