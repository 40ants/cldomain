0.14 (unreleased)
=================

* Script was made a separate lisp system and ported from cl-launch_ to
  roswell_.
* Now it reports if some package wasn't found and returns proper exit
  codes to command line.

0.13 06-09-2015
===============

* updated com.dvlsoft.clon to net.didierverna.clon.

0.12 24-02-2015
===============

* fixed argument generation bug.

0.11 30-12-2014
===============

* support loading symbol information from multiple packages.

0.10 12-06-2014
===============

* added back parentheses to parameter lists.
* added type information to parameter list of methods.
* added links to other methods from a method docstring.
* fixed bug with macro documentation strings.
* added better keyword detection in documentation strings.
* fixed bug where symbols at the end of documentation
  strings were ignored.

0.9 10-02-2014
==============

* fixed problem with version number generation.

0.8 10-02-2014
==============

* fixed bug with lisps argument.
* removed dependency on swank.
* remove specializers symbols package if it's the current
  package.

0.7 12-06-2013
==============

* started to make internals more modular.
* print specialisation for methods.
* add links to method specializers.
* added methods to index.

0.6 22-04-2013
==============

* added more documentation.
* added better error handling when json fails to parse.
* methods can now pull documentation from their generic.

0.5 20-04-2013
==============

* inherit environment when calling subprocesses.
* better handling of symbols in doc strings.

0.4 19-04-2013
==============

* fixed some packaging bugs.
* made the data model more tolerant to missing symbols.
* fixed symbol resolving bug.
* added output of unused symbols.

0.3 16-04-2013
==============

* cleaned up specializer output.
* fixed bug when rendering specializers that have the form :KEYWORD
  SYMBOL.
* updated documentation.
* split out package code from lisp program.

0.2 14-04-2013
==============


* link between generics and specializers.
* ignore symbols in documentation if they are in the arg list.
* better Quicklisp support.
* handling of symbols that boarder on punctuation.

0.1 UNRELEASED
==============

* initial prototype


.. _roswell: https://github.com/roswell/roswell
.. _cl-launch: http://www.cliki.net/CL-Launch
