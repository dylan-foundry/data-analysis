The STATISTICS-BASE library
***************************

.. current-library:: statistics-base

.. contents::
   :local:


The STATISTICS-BASE module
==========================

.. current-module:: statistics-base

Types
-----

.. type:: <double-float-vector>

.. type:: <double-float?-vector>

.. type:: <numeric-sequence>

Coercion Functions
------------------

.. function:: double-float-vector

   :signature: double-float-vector (seq) => (vec)

   :parameter seq: An instance of :class:`<sequence>`.
   :value vec: An instance of :type:`<double-float-vector>`.

Extrema
-------

.. generic-function:: maximum
   :open:

   :signature: maximum (sample) => (maximum)

   :parameter sample: An instance of :type:`<numeric-sequence>`.
   :value maximum: An instance of :class:`<number>`.

   :seealso:

     - :gf:`maximum/trimmed`
     - :gf:`minimum`
     - :gf:`minimum/trimmed`
     - :gf:`minimum+maximum`

.. method:: maximum
   :specializer: <double-float-vector>
   :sealed:

.. generic-function:: maximum/trimmed
   :open:

   :signature: maximum/trimmed (sample upper-limit #key inclusive?) => (maximum)

   :parameter sample: An instance of :type:`<numeric-sequence>`.
   :parameter upper-limit: An instance of :class:`<number>`.
   :parameter #key inclusive?: An instance of :class:`<boolean>`.
   :value maximum: An instance of :class:`<number>`.

   :seealso:

     - :gf:`maximum`
     - :gf:`minimum`
     - :gf:`minimum/trimmed`
     - :gf:`minimum+maximum`

.. method:: maximum/trimmed
   :specializer: <double-float-vector>, <double-float>
   :sealed:

.. generic-function:: minimum
   :open:

   :signature: minimum (sample) => (minimum)

   :parameter sample: An instance of :type:`<numeric-sequence>`.
   :value minimum: An instance of :class:`<number>`.

   :seealso:

     - :gf:`maximum`
     - :gf:`maximum/trimmed`
     - :gf:`minimum/trimmed`
     - :gf:`minimum+maximum`

.. method:: minimum
   :specializer: <double-float-vector>
   :sealed:

.. generic-function:: minimum/trimmed
   :open:

   :signature: minimum/trimmed (sample lower-limit #key inclusive?) => (minimum)

   :parameter sample: An instance of :type:`<numeric-sequence>`.
   :parameter lower-limit: An instance of :class:`<number>`.
   :parameter #key inclusive?: An instance of :class:`<boolean>`.
   :value minimum: An instance of :class:`<number>`.

   :seealso:

     - :gf:`maximum`
     - :gf:`maximum/trimmed`
     - :gf:`minimum`
     - :gf:`minimum+maximum`

.. method:: minimum/trimmed
   :specializer: <double-float-vector>, <double-float>
   :sealed:

.. generic-function:: minimum+maximum
   :open:

   :signature: minimum+maximum (sample) => (minimum maximum)

   :parameter sample: An instance of :type:`<numeric-sequence>`.
   :value minimum: An instance of :class:`<number>`.
   :value maximum: An instance of :class:`<number>`.

   :seealso:

     - :gf:`maximum`
     - :gf:`maximum/trimmed`
     - :gf:`minimum`
     - :gf:`minimum/trimmed`

.. method:: minimum+maximum
   :specializer: <double-float-vector>
   :sealed:

Means
-----

.. generic-function:: mean/arithmetic
   :open:

   :signature: mean/arithmetic (sample) => (mean)

   :parameter sample: An instance of :type:`<numeric-sequence>`.
   :value mean: An instance of :class:`<number>`.

   :seealso:

     - :gf:`mean/fast`
     - :gf:`mean/geometric`
     - :gf:`mean/harmonic`

.. method:: mean/arithmetic
   :specializer: <double-float-vector>
   :sealed:

.. generic-function:: mean/fast
   :open:

   :signature: mean/fast (sample) => (mean)

   :parameter sample: An instance of :type:`<numeric-sequence>`.
   :value mean: An instance of :class:`<number>`.

   :seealso:

     - :gf:`mean/arithmetic`
     - :gf:`mean/geometric`
     - :gf:`mean/harmonic`

.. method:: mean/fast
   :specializer: <double-float-vector>
   :sealed:

.. generic-function:: mean/geometric
   :open:

   :signature: mean/geometric (sample) => (mean)

   :parameter sample: An instance of :type:`<numeric-sequence>`.
   :value mean: An instance of :class:`<number>`.

   :seealso:

     - :gf:`mean/arithmetic`
     - :gf:`mean/fast`
     - :gf:`mean/harmonic`

.. method:: mean/geometric
   :specializer: <double-float-vector>
   :sealed:

.. generic-function:: mean/harmonic
   :open:

   :signature: mean/harmonic (sample) => (mean)

   :parameter sample: An instance of :type:`<numeric-sequence>`.
   :value mean: An instance of :class:`<number>`.

   :seealso:

     - :gf:`mean/arithmetic`
     - :gf:`mean/fast`
     - :gf:`mean/geometric`

.. method:: mean/harmonic
   :specializer: <double-float-vector>
   :sealed:

Scaling
-------

.. generic-function:: scale
   :open:

   :signature: scale (sample lower-bound upper-bound) => (res)

   :parameter sample: An instance of :type:`<numeric-sequence>`.
   :parameter lower-bound: An instance of :class:`<number>`.
   :parameter upper-bound: An instance of :class:`<number>`.
   :value res: An instance of :type:`<numeric-sequence>`.

.. method:: scale
   :specializer: <double-float-vector>, <double-float>, <double-float>
   :sealed:

Variance and Deviation
----------------------

.. generic-function:: standard-deviation/population
   :open:

   :signature: standard-deviation/population (sample) => (standard-deviation)

   :parameter sample: An instance of :type:`<numeric-sequence>`.
   :value standard-deviation: An instance of :class:`<number>`.

   :seealso:

     - :gf:`variance/population`
     - :gf:`variance/sample`
     - :gf:`standard-deviation/sample`

.. method:: standard-deviation/population
   :specializer: <double-float-vector>
   :sealed:

.. generic-function:: standard-deviation/sample
   :open:

   :signature: standard-deviation/sample (sample) => (standard-deviation)

   :parameter sample: An instance of :type:`<numeric-sequence>`.
   :value standard-deviation: An instance of :class:`<number>`.

   :seealso:

     - :gf:`variance/population`
     - :gf:`variance/sample`
     - :gf:`standard-deviation/population`

.. method:: standard-deviation/sample
   :specializer: <double-float-vector>
   :sealed:

.. generic-function:: variance/population
   :open:

   :signature: variance/population (sample) => (variance)

   :parameter sample: An instance of :type:`<numeric-sequence>`.
   :value variance: An instance of :class:`<number>`.

   :seealso:

     - :gf:`variance/sample`
     - :gf:`standard-deviation/population`
     - :gf:`standard-deviation/sample`

.. method:: variance/population
   :specializer: <double-float-vector>
   :sealed:

.. generic-function:: variance/sample
   :open:

   :signature: variance/sample (sample) => (variance)

   :parameter sample: An instance of :type:`<numeric-sequence>`.
   :value variance: An instance of :class:`<number>`.

   :seealso:

     - :gf:`variance/population`
     - :gf:`standard-deviation/population`
     - :gf:`standard-deviation/sample`

.. method:: variance/sample
   :specializer: <double-float-vector>
   :sealed:
