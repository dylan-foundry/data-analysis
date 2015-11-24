Module: dylan-user

define library statistics
  use dylan;
  use common-dylan;
  use io;

  export statistics;
end library statistics;

define module statistics
  use dylan;
  use dylan-extensions;
  use transcendentals;
  use format-out;

  export <double-float-vector>,
         <double-float?-vector>,
         <numeric-sequence>,
         double-float-vector;

  export mean/fast,
         mean/arithmetic,
         mean/harmonic,
         mean/geometric;

  export minimum+maximum,
         minimum,
         minimum/trimmed,
         maximum,
         maximum/trimmed;

  export scale;

  export variance/sample,
         variance/population,
         standard-deviation/sample,
         standard-deviation/population;
end module statistics;
