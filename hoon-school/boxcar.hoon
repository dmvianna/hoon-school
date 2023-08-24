:: boxcar: Return 1 when 3 < x =< 5, and 0 otherwise.
::
::::  /base/gen/boxcar.hoon
  ::

/+  boxcar-lib

::  A gate
|=
::  accepting an unsigned decimal as argument
    x=@ud
::  and returning an unsigned decimal as result.
^-  @ud
::  Print the argument to the console.
~&  "boxcar received '{<x>}' as argument"
:: Is the argument
?:
:: both
    ?&
:: greater than 3
        (gth-3:boxcar-lib x)
:: and smaller than 5
        (lte-5:boxcar-lib x)
:: ?
     ==
:: If so, return 1
  1
:: else, return 0.
0
