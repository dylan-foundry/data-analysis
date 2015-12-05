Module: statistics
Synopsis: Calculating standard scores (z-scores).
Author: Bruce Mitchener, Jr.
Copyright: See LICENSE file in this distribution.

define open generic standard-scores
    (sample :: <numeric-sequence>)
 => (scores :: <numeric-sequence>);

define sealed method standard-scores
    (population :: <double-float-vector>)
 => (scores :: <double-float-vector>)
  let mean :: <double-float> = mean/arithmetic(population);
  let std-dev :: <double-float> = standard-deviation/population(population);
  let scores = make(<double-float-vector>, size: population.size);
  for (o :: <double-float> in population,
       index :: <integer> from 0)
    scores[index] := (o - mean) / std-dev;
  end for;
  scores
end method standard-scores;
