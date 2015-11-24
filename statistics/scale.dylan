Module: statistics
Synopsis: Scale a vector of values to fit within a range.
Author: Bruce Mitchener, Jr.
Copyright: See LICENSE file in this distribution.

define open generic scale
    (sample :: <numeric-sequence>,
     lower-bound :: <number>, upper-bound :: <number>)
 => (res :: <numeric-sequence>);

define method scale
    (sample :: <double-float-vector>,
     lower-bound :: <double-float>, upper-bound :: <double-float>)
 => (res :: <double-float-vector>)
  let (min-range, max-range) = minimum+maximum(sample);
  let a = (upper-bound - lower-bound) / (max-range - min-range);
  let b = upper-bound - (a * max-range);
  map(method (val)
        a * val + b
      end, sample)
end method scale;
