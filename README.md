# Math::Units 1.3
Perl library for unit conversions

Math::Units is a pure Perl unit conversion system. This module has
been tested fairly well using the GNU units program as a baseline.
Although unit conversion is conceptually simple, there are lots of
places where bugs can hide. THIS SOFTWARE DOES NOT HAVE A WARRANTY!
If you use this software, please verify that the units you are
converting are correctly handled.  If you find a bug in either the
code or the conversion tables, please send them to me as soon as
possible and I will publish a correction immediately.

For more information, read the documentation found in Units.pm.

To build this module, cd to the directory that contains this README
file and type the following:

    perl Makefile.PL
    make

Please run the tests after you build the module:

    make test

If everything passes, install the module:

    make install

This package was originally published in 1998 when I was an active
Perl developer. Daniel Muey (DMUEY on CPAN) released the 1.3 version
in 2008. It reformatted the code to match perltidy standards and unit
test naming conventions that had changed over the years.

The code is not under active development at the moment, but please
send pull requests if you have fixes or improvements. The git repo
at https://github.com/kenfox/Math-Units is the current version.

- Ken
