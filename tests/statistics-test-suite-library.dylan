module: dylan-user

define library statistics-test-suite
  use common-dylan;
  use statistics-base;
  use testworks;
  use system;

  export statistics-test-suite;
end library;

define module statistics-test-suite
  use common-dylan;
  use statistics-base;
  use testworks;

  export statistics-test-suite;
end module;
