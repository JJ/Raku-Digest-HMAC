use Test;

plan 3;

use Digest::HMAC;
use Digest;
use Digest::SHA;

# tests taken from wikipedia

my $key = "this is a long key";

my @results = <4c186973e04c5e7232c158346a75063c
834d6abd91181b75a99db6285ba36050 98c94fdd9e5a3b0bb95a5b7f4a281350>;

for -1..1 -> $delta {
    is hmac-hex($key, "", &md5, $key.chars + $delta),
            @results.shift , "Using delta $delta";
}
