module: statistics-test-suite
synopsis: Test suite for the statistics-base library.

define test mean/simple-knuth-test ()
  let data = as(limited(<vector>, of: <double-float>), #[1.0d0, 3.0d0, 5.0d0]);
  assert-equal(3.0d0, mean/simple(data));
  assert-equal(3.0d0, mean/knuth(data));
end test mean/simple-knuth-test;

define test mean/harmonic-test ()
  let data = as(limited(<vector>, of: <double-float>), #[40.0d0, 60.0d0]);
  assert-equal(48.0d0, mean/harmonic(data));
end test mean/harmonic-test;

define suite statistics-base-test-suite ()
  test mean/simple-knuth-test;
  test mean/harmonic-test;
end suite;
