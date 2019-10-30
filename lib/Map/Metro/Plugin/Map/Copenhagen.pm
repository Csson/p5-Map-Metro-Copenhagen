use 5.16.0;

package Map::Metro::Plugin::Map::Copenhagen;

# ABSTRACT: Map::Metro map for Copenhagen
# AUTHORITY
our $VERSION = '0.2008';

use Moose;
with 'Map::Metro::Plugin::Map';

has '+mapfile' => (
    default => 'map-copenhagen.metro',
);
sub map_version {
    return $VERSION;
}
sub map_package {
    return __PACKAGE__;
}

1;

__END__

=pod

=encoding utf-8

=head1 SYNOPSIS

    use Map::Metro;
    my $graph = Map::Metro->new('Copenhagen')->parse;

=head1 DESCRIPTION

See L<Map::Metro> for usage information.

=head1 Status

This map includes:

=for :list
* All three current lines (as of 2019-10-29) of the Copenhagen metro (L<wikipedia|https://en.wikipedia.org/wiki/Copenhagen_metro>)

=for HTML <p><a href="https://raw.githubusercontent.com/Csson/p5-Map-Metro-Copenhagen/master/static/images/copenhagen.png"><img src="https://raw.githubusercontent.com/Csson/p5-Map-Metro-Copenhagen/master/static/images/copenhagen.png" style="max-width: 600px" /></a></p>

=head1 SEE ALSO

=for :list
* L<Map::Metro>
* L<Task::MapMetro::Maps>

=cut
