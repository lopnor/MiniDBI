use v6;
use Test;
use MiniDBD::mysql;

ok 1;

my $st = MiniDBD::mysql::StatementHandle.new;

sub x ($str) {$st.quote($str)}

is x("hoge\nfuga"), 'hoge\nfuga';
is x("\x00hoge"), '\\0hoge';
is x("hoge\x1ahoge"), 'hoge\\Zhoge';

done_testing;

# vim: ft=perl6 :
