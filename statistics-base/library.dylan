Module: dylan-user

define library statistics-base
  use dylan;
  use io;

  export statistics-base;
end library statistics-base;

define module statistics-base
  use dylan;
  use dylan-extensions;
  use format-out;

  export mean/simple,
         mean/knuth,
         mean/harmonic;
end module statistics-base;
