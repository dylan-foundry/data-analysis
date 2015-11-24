Module: statistics
Synopsis: Implementations of various algorithms for calculating a mean.
Author: Bruce Mitchener, Jr.
Copyright: See LICENSE file in this distribution.

define open generic mean/fast
    (sample :: <numeric-sequence>)
 => (mean :: <number>);

define open generic mean/arithmetic
    (sample :: <numeric-sequence>)
 => (mean :: <number>);

define open generic mean/harmonic
    (sample :: <numeric-sequence>)
 => (mean :: <number>);

define open generic mean/geometric
    (sample :: <numeric-sequence>)
 => (mean :: <number>);

define method mean/fast
    (sample :: <double-float-vector>)
 => (mean :: <double-float>)
  for (d in sample,
       sum :: <double-float> = 0.0d0 then sum + d)
  finally
    sum / as(<double-float>, sample.size)
  end for
end method mean/fast;

define method mean/arithmetic
    (sample :: <double-float-vector>)
 => (mean :: <double-float>)
  for (d in sample,
       counter :: <double-float> = 1.0d0 then counter + 1.0d0,
       mean :: <double-float> = 0.0d0 then mean + (d - mean) / counter)
  finally
    mean
  end for
end method mean/arithmetic;

define method mean/harmonic
    (sample :: <double-float-vector>)
 => (mean :: <double-float>)
  for (d in sample,
       sum :: <double-float> = 0.0d0 then sum + (1.0d0 / d))
  finally
    as(<double-float>, sample.size) / sum
  end for
end method mean/harmonic;

define method mean/geometric
    (sample :: <double-float-vector>)
 => (mean :: <double-float>)
  for (d in sample,
       sum :: <double-float> = 0.0d0 then sum + log(d))
  finally
    exp(sum / as(<double-float>, sample.size))
  end for
end method mean/geometric;
