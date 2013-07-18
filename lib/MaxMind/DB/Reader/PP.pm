package MaxMind::DB::Reader::PP;
{
  $MaxMind::DB::Reader::PP::VERSION = '0.040003';
}
BEGIN {
  $MaxMind::DB::Reader::PP::AUTHORITY = 'cpan:TJMATHER';
}

use strict;
use warnings;
use namespace::autoclean;

use MaxMind::DB::Types qw( Str );

use Moo;
use MooX::StrictConstructor;

with 'MaxMind::DB::Reader::Role::Reader';

has file => (
    is       => 'ro',
    isa      => Str,
    required => 1,
);

sub BUILD {
    my $self = shift;

    my $file = $self->file();

    die "The file you specified ($file) does not exist"
        unless -e $file;

    die "The file you specified ($file) cannot be read"
        unless -r _;

    return;
}

sub _build_data_source {
    my $self = shift;

    open my $fh, '<:raw', $self->file();

    return $fh;
}

__PACKAGE__->meta()->make_immutable();

1;

# ABSTRACT: Pure Perl implementation of the MaxMind DB reader code

__END__

=pod

=head1 NAME

MaxMind::DB::Reader::PP - Pure Perl implementation of the MaxMind DB reader code

=head1 VERSION

version 0.040003

=head1 AUTHORS

=over 4

=item *

Dave Rolsky <autarch@urth.org>

=item *

Olaf Alders <olaf@wundercounter.com>

=back

=head1 COPYRIGHT AND LICENSE

This software is Copyright (c) 2013 by MaxMind, Inc..

This is free software, licensed under:

  The Artistic License 2.0 (GPL Compatible)

=cut
