module: statistics-test-suite
synopsis: Test suite for the statistics library.

define test example-test ()
  assert-true(#t);
end test example-test;

define suite statistics-test-suite ()
  test example-test;
end suite;
