package MaxMind::DB::Reader::Data::EndMarker;
$MaxMind::DB::Reader::Data::EndMarker::VERSION = '1.000001';
use strict;
use warnings;

sub new {
    my $str = 'end marker';
    return bless \$str, __PACKAGE__;
}

1;
