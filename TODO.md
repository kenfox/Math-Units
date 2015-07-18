# Ideas and Future Direction

- In order to better fit into the Math name space, Math::Units should
  provide overloading or some other solution for being able to write
  equations with unit checking directly in Perl. The current module is
  more suited to be named Convert::Units, but after so long in Math,
  it probably isn't doing any harm to keep it there. There's also a
  simple constraint solver built into the unit converter that could be
  exposed for extension.

- There should be a set of routines for adding new unit formulas,
  reductions and conversions. This would also be nice to support as
  import syntax so a program can just import Math::Units with a few
  extra conversions specific to a domain.

- Some conversions can be automatically generated from a reduction,
  but they are hand coded at the moment. (This has to be done
  carefully because conversions are bi-directional while reductions
  *must* be consistently uni-directional.)

- It would be nice to simplify the built-in conversions using the
  to-be-defined routines for extending the library.

- There are many units (several in the GNU unit program for example)
  that aren't defined here. Since I am in the U.S. and immersed in our
  peculiar standard units, I might have missed something common.
  Please let me know if I've messed anything up!
