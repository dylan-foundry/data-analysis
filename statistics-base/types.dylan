Module: statistics-base
Synopsis: Shared type definitions.
Author: Bruce Mitchener, Jr.
Copyright: See LICENSE file in this distribution.

define constant <double-float-vector>
  = limited(<vector>, of: <double-float>);

define constant <double-float?-vector>
  = limited(<vector>, of: false-or(<double-float>));

define constant <numeric-sequence>
  = type-union(<double-float-vector>, <double-float?-vector>);

define inline function double-float-vector
    (seq :: <sequence>)
 => (vec :: <double-float-vector>)
  as(<double-float-vector>, seq)
end function double-float-vector;
