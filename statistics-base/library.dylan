Module: dylan-user

define library statistics-base
  use dylan;
  use common-dylan;
  use io;

  export statistics-base;
end library statistics-base;

define module statistics-base
  use dylan;
  use dylan-extensions;
  use transcendentals;
  use format-out;

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
end module statistics-base;
