#!perl
use strict;
use warnings;

print "Your name: \$ "; # imitate the REPL prompt (so that Expect won't hang)
my $your_name = <>;
chomp $your_name;

eval { die "I'm grumpy so I won't greet you, $your_name" };

print "Hello $your_name!\n";
print "\$ ";            # imitate the REPL prompt (so that Expect won't hang)
<>;                     # swallow the 'exit' cmd
