# From https://perlbrew.pl/Install-a-sitecustomize.pl-file-with-perlbrew.html
use strict;
use Config;
use Cwd ();
my %seen;
my @bindirs =
  grep { defined && !$seen{$_}++ }
  map { $Config{"install". $_} }
  map { ("${_}bin", "${_}script") } "", "site", "vendor";

my $script = Cwd::realpath($0);

if ( ! grep { /\Q$script\E/ } @bindirs ) {
  my @path = split "/", $script;
  if ( @path > 2 ) { # at least /bin/foo
    pop @path; # get rid of script filename
    my $installbase = join("/", @path[0 .. $#path-1], 'lib', 'perl5');
    if ( $path[-1] eq 'bin' && -d $installbase ) {
      require lib;
      lib->import($installbase);
    }
  }
}
