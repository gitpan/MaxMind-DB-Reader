package MaxMind::DB::Reader::Data::Container;
{
  $MaxMind::DB::Reader::Data::Container::VERSION = '0.040002';
}
BEGIN {
  $MaxMind::DB::Reader::Data::Container::AUTHORITY = 'cpan:TJMATHER';
}

use strict;
use warnings;

sub new {
    my $str = 'container';
    return bless \$str, __PACKAGE__;
}

1;
