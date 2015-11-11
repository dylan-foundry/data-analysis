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

define test mean/geometric-test ()
  let data = as(limited(<vector>, of: <double-float>), #[2.0d0, 8.0d0]);
  assert-equal(4.0d0, mean/geometric(data));
end test mean/geometric-test;

define suite mean-test-suite ()
  test mean/simple-knuth-test;
  test mean/harmonic-test;
  test mean/geometric-test;
end suite;

define constant $extrema-data
  = as(limited(<vector>, of: <double-float>),
       #[-2.0d0, 0.0d0, -5.0d0, 8.0d0, 6.0d0]);

define test extrema/both-test ()
  let (minimum, maximum) = minimum+maximum($extrema-data);
  assert-equal(-5.0d0, minimum);
  assert-equal(8.0d0, maximum);
end test extrema/both-test;

define test extrema/minima-test ()
  assert-equal(-5.0d0, minimum($extrema-data));
  assert-equal(-5.0d0,
               minimum/trimmed($extrema-data, -5.0d0));
  assert-equal(-2.0d0,
               minimum/trimmed($extrema-data,
                               -5.0d0,
                               inclusive?: #f));
  assert-equal(-2.0d0,
               minimum/trimmed($extrema-data, -4.0d0));
end test extrema/minima-test;

define test extrema/maxima-test ()
  assert-equal(8.0d0, maximum($extrema-data));
  assert-equal(8.0d0,
               maximum/trimmed($extrema-data, 8.0d0));
  assert-equal(6.0d0,
               maximum/trimmed($extrema-data,
                               8.0d0,
                               inclusive?: #f));
  assert-equal(0.0d0,
               maximum/trimmed($extrema-data, 4.0d0));
end test extrema/maxima-test;

define suite extrema-test-suite ()
  test extrema/both-test;
  test extrema/minima-test;
  test extrema/maxima-test;
end suite;

define suite statistics-base-test-suite ()
  suite mean-test-suite;
  suite extrema-test-suite;
end suite;
