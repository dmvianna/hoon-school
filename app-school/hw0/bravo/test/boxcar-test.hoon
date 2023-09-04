/+  *test
/=  boxcar  /gen/boxcar
|%
:: Testing the happy path
::
++  test-01
  %+  expect-eq
    !>  `@ud`0
    !>  (boxcar 3)
++  test-02
  %+  expect-eq
    !>  `@ud`1
    !>  (boxcar 5)
--