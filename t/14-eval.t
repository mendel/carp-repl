#!perl
use strict;
use warnings;
use Test::More tests => 4;
use Test::Expect;

# an exception caught by an eval should not trigger the REPL

expect_run
(
    command => "$^X -Ilib -MCarp::REPL=noprofile t/scripts/14-eval.pl",
    prompt  => '$ ',
    quit    => 'exit',
);

expect_send('World');
expect_like(qr/World/);
like(
    Test::Expect->expect_handle->before,
    qr/Hello/
);
