:: factorial
::

=/  fact  1
|=  n=@ud
^-  @ud
  ?:  ?|(=(n 1) =(n 0))
    fact
  %=  $
  n  (sub n 1)
  fact  (mul fact n)
  ==
