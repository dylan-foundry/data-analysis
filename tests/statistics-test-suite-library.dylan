module: dylan-user

define library statistics-test-suite
  use common-dylan;
  use statistics;
  use testworks;
  use system;

  export statistics-test-suite;
end library;

define module statistics-test-suite
  use common-dylan;
  use statistics;
  use testworks;

  export statistics-test-suite;
end module;
