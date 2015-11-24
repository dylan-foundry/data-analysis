module: dylan-user

define library data-analysis-test-suite
  use common-dylan;
  use statistics;
  use testworks;
  use system;

  export data-analysis-test-suite;
end library;

define module statistics-test-suite
  use common-dylan;
  use statistics;
  use testworks;

  export statistics-test-suite;
end module;

define module data-analysis-test-suite
  use common-dylan;
  use testworks;

  use statistics-test-suite;

  export data-analysis-test-suite;
end module;
