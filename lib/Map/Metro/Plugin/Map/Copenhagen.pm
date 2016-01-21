use 5.16.0;

package Map::Metro::Plugin::Map::Copenhagen;

# VERSION
# ABSTRACT: Map::Metro map for Copenhagen

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
* Both lines of the Copenhagen metro (L<wikipedia|https://en.wikipedia.org/wiki/Copenhagen_metro>)

=for HTML <p><a href="https://raw.githubusercontent.com/Csson/p5-Map-Metro-Copenhagen/master/static/images/copenhagen.png"><img src="https://raw.githubusercontent.com/Csson/p5-Map-Metro-Copenhagen/master/static/images/copenhagen.png" style="max-width: 600px" /></a></p>

=head1 SEE ALSO

=for :list
* L<Map::Metro>
* L<Task::MapMetro::Maps>

=cut
