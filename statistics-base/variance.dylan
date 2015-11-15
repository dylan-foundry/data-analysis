Module: statistics-base
Synopsis: Calculating variance and standard deviation.
Author: Bruce Mitchener, Jr.
Copyright: See LICENSE file in this distribution.

define method variance-internal
    (sample :: limited(<vector>, of: <double-float>))
 => (sum-squares :: <double-float>)
  let mean :: <double-float> = 0.0d0;
  let previous-mean :: <double-float> = 0.0d0;
  let sum-squares :: <double-float> = 0.0d0;
  let count :: <double-float> = 0.0d0;
  for (val in sample)
    count := count + 1;
    previous-mean := mean;
    mean := mean + (val - mean) / count;
    sum-squares := sum-squares + (val - mean) * (val - previous-mean);
  end for;
  sum-squares
end method variance-internal;

define method variance/sample
    (sample :: limited(<vector>, of: <double-float>))
 => (variance :: <double-float>)
  let sum-squares = variance-internal(sample);
  sum-squares / as(<double-float>, size(sample) - 1)
end method variance/sample;

define method variance/population
    (sample :: limited(<vector>, of: <double-float>))
 => (variance :: <double-float>)
  let sum-squares = variance-internal(sample);
  sum-squares / as(<double-float>, size(sample))
end method variance/population;

define method standard-deviation/sample
    (sample :: limited(<vector>, of: <double-float>))
 => (standard-deviation :: <double-float>)
  sqrt(variance/sample(sample))
end method standard-deviation/sample;

define method standard-deviation/population
    (sample :: limited(<vector>, of: <double-float>))
 => (standard-deviation :: <double-float>)
  sqrt(variance/population(sample))
end method standard-deviation/population;
