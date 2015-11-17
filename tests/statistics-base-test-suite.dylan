module: statistics-test-suite
synopsis: Test suite for the statistics-base library.

define test mean/arithmetic-test ()
  let data = double-float-vector(#[1.0d0, 3.0d0, 5.0d0]);
  assert-equal(3.0d0, mean/fast(data));
  assert-equal(3.0d0, mean/arithmetic(data));
end test mean/arithmetic-test;

// This is an expected failure until we fix floating point
// comparisons in Testworks.
define test mean/harmonic-test (expected-failure?: #t)
  let data = double-float-vector(#[40.0d0, 60.0d0]);
  assert-equal(48.0d0, mean/harmonic(data));
end test mean/harmonic-test;

define test mean/geometric-test ()
  let data = double-float-vector(#[2.0d0, 8.0d0]);
  assert-equal(4.0d0, mean/geometric(data));
end test mean/geometric-test;

define suite mean-test-suite ()
  test mean/arithmetic-test;
  test mean/harmonic-test;
  test mean/geometric-test;
end suite;

define constant $extrema-data
  = double-float-vector(#[-2.0d0, 0.0d0, -5.0d0, 8.0d0, 6.0d0]);

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

define test scale-test ()
  let scale-data
    = double-float-vector(#[0.0d0, 2.0d0, 4.0d0, 6.0d0, 8.0d0, 10.0d0]);
  let scaled = scale(scale-data, 0.0d0, 5.0d0);
  assert-equal(0.0d0, scaled[0]);
  assert-equal(1.0d0, scaled[1]);
  assert-equal(2.0d0, scaled[2]);
  assert-equal(3.0d0, scaled[3]);
  assert-equal(4.0d0, scaled[4]);
  assert-equal(5.0d0, scaled[5]);
end test scale-test;

define suite scale-test-suite ()
  test scale-test;
end suite;

define constant $variance-data
 = double-float-vector(#[2.0d0, 4.0d0, 4.0d0, 4.0d0,
                         5.0d0, 5.0d0, 7.0d0, 9.0d0]);

define test variance+standard-deviation-test ()
  assert-equal(5.0d0, mean/arithmetic($variance-data));
  assert-equal(4.0d0, variance/population($variance-data));
  assert-equal(2.0d0, standard-deviation/population($variance-data));
end test variance+standard-deviation-test;

define suite variance-test-suite ()
  test variance+standard-deviation-test;
end suite;

define suite statistics-base-test-suite ()
  suite mean-test-suite;
  suite extrema-test-suite;
  suite scale-test-suite;
  suite variance-test-suite;
end suite;
