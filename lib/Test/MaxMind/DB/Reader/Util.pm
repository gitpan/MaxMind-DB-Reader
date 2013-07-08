package Test::MaxMind::DB::Reader::Util;
{
  $Test::MaxMind::DB::Reader::Util::VERSION = '0.3.0'; # TRIAL
}

use Sub::Exporter -setup => { exports => ['standard_metadata'] };

sub standard_metadata {
    return (
        database_type => 'Test',
        languages     => [ 'en', 'zh' ],
        description   => {
            en => 'Test Database',
            zh => 'Test Database Chinese',
        },
    );
}

1;
