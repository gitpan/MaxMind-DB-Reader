
use strict;
use warnings;



use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "Read MaxMind DB files",
  "AUTHOR" => "Dave Rolsky <autarch\@urth.org>, Olaf Alders <olaf\@wundercounter.com>",
  "BUILD_REQUIRES" => {},
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "MaxMind-DB-Reader",
  "EXE_FILES" => [],
  "LICENSE" => "artistic_2",
  "NAME" => "MaxMind::DB::Reader",
  "PREREQ_PM" => {
    "Carp" => 0,
    "Data::IEEE754" => 0,
    "Data::Validate::Domain" => 0,
    "Data::Validate::IP" => 0,
    "Encode" => 0,
    "IO::File" => 0,
    "List::AllUtils" => 0,
    "Math::Int128" => 0,
    "MaxMind::DB::Common" => 0,
    "MaxMind::DB::Metadata" => 0,
    "MaxMind::DB::Role::Debugs" => 0,
    "Moose" => 0,
    "Moose::Role" => 0,
    "MooseX::Getopt::Dashes" => 0,
    "MooseX::StrictConstructor" => 0,
    "Net::Works::Address" => 0,
    "NetAddr::IP::Util" => 0,
    "Socket" => 0,
    "Sub::Exporter" => 0,
    "Try::Tiny" => 0,
    "autodie" => 0,
    "bytes" => 0,
    "constant" => 0,
    "namespace::autoclean" => 0,
    "strict" => 0,
    "warnings" => 0
  },
  "TEST_REQUIRES" => {
    "Exporter" => 0,
    "File::Temp" => 0,
    "Net::Works::Network" => 0,
    "Scalar::Util" => 0,
    "Test::Bits" => 0,
    "Test::DescribeMe" => 0,
    "Test::Fatal" => 0,
    "Test::MaxMind::DB::Common::Data" => 0,
    "Test::More" => 0,
    "lib" => 0
  },
  "VERSION" => "0.3.0",
  "test" => {
    "TESTS" => "t/*.t t/MaxMind/DB/*.t t/MaxMind/DB/Reader/*.t t/MaxMind/DB/Reader/Decoder-types/*.t"
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  my $tr = delete $WriteMakefileArgs{TEST_REQUIRES};
  my $br = $WriteMakefileArgs{BUILD_REQUIRES};
  for my $mod ( keys %$tr ) {
    if ( exists $br->{$mod} ) {
      $br->{$mod} = $tr->{$mod} if $tr->{$mod} > $br->{$mod};
    }
    else {
      $br->{$mod} = $tr->{$mod};
    }
  }
}

unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



