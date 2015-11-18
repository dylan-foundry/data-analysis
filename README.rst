statistics
==========

This is a general purpose collection of statistics
libraries for the `Dylan`_ programming language.

It currently consists of a ``statistics-base``
library providing some general statistical functions
for calculating means, variance, deviation, and extrema.

Documentation for this set of libraries can be found
online at http://opendylan.org/documentation/statistics/.

Contributing
------------

Additional functionality and libraries are welcome.

Some immediate ideas for additions include:

* Median
* Weighted means
* Trimmed means
* Absolute deviation
* Covariance
* Percentiles and quantiles
* Rankings
* Distances (probably a separate library within this repo)
* Z scores
* Distributions
* Random data generation
* Online / streaming descriptive statistics

Larger projects might include:

* Time series data support
* Dataframes
* CSV reader / writer
* Improving testing
* Benchmarks and compiler improvements (mainly with LLVM)

Building
--------

This library can be built with Open Dylan 2014.1 or later
on these platforms with the C compiler back-end:

* Mac OS X
* Linux, 64 bit x86_64
* FreeBSD, 64 bit x86_64 (not available with 2014.1)

Using Open Dylan from current master with the LLVM compiler
back-end should work on 32 bit and 64 bit Mac OS X, Linux
and FreeBSD.

The HARP compiler back-end has a bug that prevents it
from being able to compile this library.

To use this library in the typical manner given Dylan's
lack of a package manager:

* Use a git submodule to pull this repository into your
  project.
* Add registry entries for the libraries from this
  repository that you plan to use.
* Use it.
