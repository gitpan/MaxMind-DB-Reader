
BEGIN {
  unless ($ENV{RELEASE_TESTING}) {
    require Test::More;
    Test::More::plan(skip_all => 'these tests are for release candidate testing');
  }
}

use strict;
use warnings;

# this test was generated with Dist::Zilla::Plugin::NoTabsTests 0.06

use Test::More 0.88;
use Test::NoTabs;

my @files = (
    'bin/mmdb-dump-database',
    'bin/mmdb-dump-metadata',
    'bin/mmdb-dump-search-tree',
    'bin/mmdb-verify-database',
    'lib/MaxMind/DB/Reader.pm',
    'lib/MaxMind/DB/Reader/Data/Container.pm',
    'lib/MaxMind/DB/Reader/Data/EndMarker.pm',
    'lib/MaxMind/DB/Reader/Decoder.pm',
    'lib/MaxMind/DB/Reader/PP.pm',
    'lib/MaxMind/DB/Reader/Role/HasDecoder.pm',
    'lib/MaxMind/DB/Reader/Role/HasMetadata.pm',
    'lib/MaxMind/DB/Reader/Role/NodeReader.pm',
    'lib/MaxMind/DB/Reader/Role/Reader.pm',
    'lib/MaxMind/DB/Reader/Role/Sysreader.pm',
    'lib/MaxMind/DB/Verifier.pm'
);

notabs_ok($_) foreach @files;
done_testing;
