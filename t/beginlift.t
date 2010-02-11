use strict;
use warnings;
use Test::More tests => 2;

use Readonly::BeginLift;
use constant MY_VALUE => 'foo';
Readonly my $MY_VALUE => 'bar';

BEGIN {
    is MY_VALUE, 'foo', 'Constants have values at BEGIN time';
    is $MY_VALUE, 'bar', '... and so should Readonly constants';
}
