package MaxMind::DB::Reader::Data::Container;
$MaxMind::DB::Reader::Data::Container::VERSION = '1.000003';
use strict;
use warnings;

sub new {
    my $str = 'container';
    return bless \$str, __PACKAGE__;
}

1;
