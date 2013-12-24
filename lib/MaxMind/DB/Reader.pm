package MaxMind::DB::Reader;
{
  $MaxMind::DB::Reader::VERSION = '0.050001';
}
BEGIN {
  $MaxMind::DB::Reader::AUTHORITY = 'cpan:TJMATHER';
}

use strict;
use warnings;

use 5.010000;

use Module::Implementation;
use Moo 1.003000 ();
use Role::Tiny 1.003002 ();

my $Implementation;

{
    my $loader = Module::Implementation::build_loader_sub(
        implementations => [ 'XS', 'PP' ],
    );

    $Implementation = $loader->();
}

sub new {
    shift;
    return $Implementation->new(@_);
}

1;

# ABSTRACT: Read MaxMind DB files

__END__

=pod

=head1 NAME

MaxMind::DB::Reader - Read MaxMind DB files

=head1 VERSION

version 0.050001

=head1 DESCRIPTION

This module requires Perl 5.10+.

This first release is being done for the sake of the L<GeoIP2> package. Real
documentation for this distro is forthcoming.

=head1 AUTHORS

=over 4

=item *

Dave Rolsky <drolsky@maxmind.com>

=item *

Olaf Alders <oalders@maxmind.com>

=back

=head1 COPYRIGHT AND LICENSE

This software is Copyright (c) 2013 by MaxMind, Inc..

This is free software, licensed under:

  The Artistic License 2.0 (GPL Compatible)

=cut
