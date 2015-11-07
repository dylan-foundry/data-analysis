Module: statistics
Synopsis: 
Author: 
Copyright: See LICENSE file in this distribution.

define method mean
    (sample :: limited(<vector>, of: <double-float>))
 => (mean :: <double-float>)
  let sum :: <double-float> = 0.0d0;
  for (d :: <double-float> in sample)
    sum := sum + d;
  end for;
  sum / as(<double-float>, sample.size)
end;
