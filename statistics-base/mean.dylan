Module: statistics-base
Synopsis: Implementations of various algorithms for calculating a mean.
Author: Bruce Mitchener, Jr.
Copyright: See LICENSE file in this distribution.

define method mean/simple
    (sample :: limited(<vector>, of: <double-float>))
 => (mean :: <double-float>)
  for (d :: <double-float> in sample,
       sum :: <double-float> = 0.0d0 then sum + d)
  finally
    sum / as(<double-float>, sample.size)
  end for
end method mean/simple;

define method mean/knuth
    (sample :: limited(<vector>, of: <double-float>))
 => (mean :: <double-float>)
  for (d :: <double-float> in sample,
       counter :: <double-float> = 1.0d0 then counter + 1.0d0,
       mean :: <double-float> = 0.0d0 then mean + (d - mean) / counter)
  finally
    mean
  end for
end method mean/knuth;

define method mean/harmonic
    (sample :: limited(<vector>, of: <double-float>))
 => (mean :: <double-float>)
  for (d :: <double-float> in sample,
       sum :: <double-float> = 0.0d0 then sum + (1.0d0 / d))
  finally
    as(<double-float>, sample.size) / sum
  end for
end method mean/harmonic;
