:: Q1
::

=/  x  5
|%
++  $
?:(&((gth x 3) (lte x 5)) 1 0)
--

:: Q2
::

=>
=/  x  5
|%
++  $
?:(&((gth x 3) (lte x 5)) 1 0)
--
=>
%=  .
x  3
==
$

=>
=/  x  5
|%
++  $
?:(&((gth x 3) (lte x 5)) 1 0)
--
%~  $  .  3

=>
=/  x  5
|%
++  $
?:(&((gth x 3) (lte x 5)) 1 0)
--
%-  .  3

:: Q3
::

=>
|_  x=@ud
++  $
?:(&((gth x 3) (lte x 5)) 1 0)
--
%-  .  3

:: Q4
::

=>
  |=  x=@ud
  ?:(&((gth x 3) (lte x 5)) 1 0)
=>
%=  .
    x  3
  ==
$

=>
 |=  x=@ud
 ?:(&((gth x 3) (lte x 5)) 1 0)
%~  $  .  3

=>
 |=  x=@ud
 ?:(&((gth x 3) (lte x 5)) 1 0)
%-  .  3

:: Q5
::

=>
 |=  x=@ud
 ^-  @ud
 ?:(&((gth x 3) (lte x 5)) 1 0)
%-  .  3

:: Q7
::
[ 8
  [1 0]
  8
  [ 1
    6
    [5 [1 0] 0 60]
    [0 6]
    9
    2
    10
    [60 8 [9 2.398 0 31] 9 2 10 [6 0 124] 0 2]
    10
    [6 8 [9 36 0 31] 9 2 10 [6 [0 125] 0 14] 0 2]
    0
    1
  ]
  9
  2
  0
  1
]

:: Q8
::

[a=1, b=1]

:: Q9
::

|_  [a=@rs b=@rs c=@rs]
++  quad
  |=  x=@rs
    ^-  @rs
    (mul a (mul x x))
++  linear
  |=  x=@rs
    ^-  @rs
    (mul b x)
++  const  c
++  $
  |=  x=@rs
    ^-  @rs
    (add (quad x) (add (linear x) const))
--

:: Q10
::

=>
|_  [a=@rs b=@rs c=@rs]
++  quad
  |=  x=@rs
    ^-  @rs
    (mul a (mul x x))
++  linear
  |=  x=@rs
    ^-  @rs
    (mul b x)
++  const  c
++  $
  |=  x=@rs
    ^-  @rs
    (add (quad x) (add (linear x) const))
--
%-  .  [a=`@rs`3 b=`@rs`2 c=`@rs`1]

:: Q11
::

=>
=>
|_  [a=@rs b=@rs c=@rs]
++  quad
  |=  x=@rs
    ^-  @rs
    (mul a (mul x x))
++  linear
  |=  x=@rs
    ^-  @rs
    (mul b x)
++  const  c
++  $
  |=  x=@rs
    ^-  @rs
    (add (quad x) (add (linear x) const))
--
%-  .  [a=`@rs`3 b=`@rs`2 c=`@rs`1]
%-  .  `@rs`5

:: Q12
::

=>
=/  n  4
=/  counter  0
|%
++  $
  ?:  =(+(counter) n)
    counter
    %=  $
    counter  +(counter)
  ==
--
$

:: Q13
::

=>
=/  n  4
=/  counter  0
|.
  ?:  =(+(counter) n)
    counter
    %=  $
    counter  +(counter)
  ==
$

:: Q14
::

=/  n  4
=/  counter  0
|-
  ?:  =(+(counter) n)
    counter
    %=  $
    counter  +(counter)
  ==

:: Q15
::

=/  counter  0
|=  n=@ud
 ^-  @ud
   ?:  =(+(counter) n)
     counter
     %=  $
     counter  +(counter)
   ==

:: Q16
::

=/  n  4
=/  fact  1
|-
  ?:  =(n 1)
    fact
  %=  $
  n  (sub n 1)
  fact  (mul fact n)
  ==

:: Q17
::

=/  fact  1
|=  n=@ud
^-  @ud
  ?:  =(n 1)
    fact
  %=  $
  n  (sub n 1)
  fact  (mul fact n)
  ==

=/  fact  1
|=  n=@ud
^-  @ud
  ?:  ?|(=(n 1) =(n 0))
    1
  %=  $
  n  (sub n 1)
  fact  (mul fact n)
  ==

:: Q18
::

|=  strings=(list tape)
^-  tape
?~  strings
  ""
(weld i.strings $(strings t.strings))