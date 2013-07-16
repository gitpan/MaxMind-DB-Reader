
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
  "EXE_FILES" => [
    "bin/dump-metadata",
    "bin/lookup-ip-address",
    "bin/verify-database"
  ],
  "LICENSE" => "artistic_2",
  "NAME" => "MaxMind::DB::Reader",
  "PREREQ_PM" => {
    "Carp" => 0,
    "Data::IEEE754" => 0,
    "Data::Printer" => 0,
    "Data::Validate::IP" => "0.16",
    "DateTime" => 0,
    "Encode" => 0,
    "Getopt::Long" => 0,
    "IO::File" => 0,
    "List::AllUtils" => 0,
    "Math::Int128" => 0,
    "MaxMind::DB::Common" => "0.031000",
    "MaxMind::DB::Metadata" => 0,
    "MaxMind::DB::Role::Debugs" => 0,
    "MaxMind::DB::Types" => 0,
    "Module::Implementation" => 0,
    "Moo" => 0,
    "Moo::Role" => 0,
    "MooX::StrictConstructor" => 0,
    "Net::Works::Address" => "0.12",
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
    "Test::Fatal" => 0,
    "Test::MaxMind::DB::Common::Data" => 0,
    "Test::MaxMind::DB::Common::Util" => 0,
    "Test::More" => 0,
    "lib" => 0
  },
  "VERSION" => "0.040000",
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



