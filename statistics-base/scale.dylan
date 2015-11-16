Module: statistics-base
Synopsis: Scale a vector of values to fit within a range.
Author: Bruce Mitchener, Jr.
Copyright: See LICENSE file in this distribution.

define method scale
    (sample :: limited(<vector>, of: <double-float>),
     lower-bound :: <double-float>, upper-bound :: <double-float>)
 => (res :: limited(<vector>, of: <double-float>))
  let (min-range, max-range) = minimum+maximum(sample);
  let a = (upper-bound - lower-bound) / (max-range - min-range);
  let b = upper-bound - (a * max-range);
  map(method (val)
        a * val + b
      end, sample)
end method scale;
