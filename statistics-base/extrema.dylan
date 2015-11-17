Module: statistics-base
Synopsis: Implementations of various algorithms for calculating extrema.
Author: Bruce Mitchener, Jr.
Copyright: See LICENSE file in this distribution.

define method minimum+maximum
    (sample :: <double-float-vector>)
 => (minimum :: <double-float>, maximum :: <double-float>)
  let minimum :: <double-float> = sample[0];
  let maximum :: <double-float> = sample[0];
  for (d in sample)
    if (d < minimum)
      minimum := d;
    elseif (d > maximum)
      maximum := d;
    end if;
  end for;
  values(minimum, maximum)
end method minimum+maximum;

define method minimum
    (sample :: <double-float-vector>)
 => (minimum :: <double-float>)
  for (d in sample,
       minimum :: <double-float> = sample[0] then min(minimum, d))
  finally
    minimum
  end for
end method minimum;

define method minimum/trimmed
    (sample :: <double-float-vector>,
     lower-limit :: <double-float>,
     #key inclusive? = #t)
 => (minimum :: <double-float>)
  for (d in sample,
       minimum :: <double-float> = sample[0]
         then if (inclusive?)
                if (d < lower-limit)
                  minimum
                else
                  min(minimum, d)
                end if
              else
                if (d <= lower-limit)
                  minimum
                else
                  min(minimum, d)
                end if
              end if)
  finally
    minimum
  end for
end method minimum/trimmed;

define method maximum
    (sample :: <double-float-vector>)
 => (maximum :: <double-float>)
  for (d in sample,
       maximum :: <double-float> = sample[0] then max(maximum, d))
  finally
    maximum
  end for
end method maximum;

define method maximum/trimmed
    (sample :: <double-float-vector>,
     lower-limit :: <double-float>,
     #key inclusive? = #t)
 => (maximum :: <double-float>)
  for (d in sample,
       maximum :: <double-float> = sample[0]
         then if (inclusive?)
                if (d > lower-limit)
                  maximum
                else
                  max(maximum, d)
                end if
              else
                if (d >= lower-limit)
                  maximum
                else
                  max(maximum, d)
                end if
              end if)
  finally
    maximum
  end for
end method maximum/trimmed;
