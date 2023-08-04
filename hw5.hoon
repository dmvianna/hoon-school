:: Q1
::

=>
    |%
    ++  one  1
    ++  two  .+  one
    ++  three  .+  two
    --
    three


:: Q2
::

=>
    =+  n=0
    |%
    ++  increment-n  .+  n
    --
    increment-n

:: Q3
::

=/  animal
  $?  %rat
      %dog
      %cat
      %bat
      %owl
  ==
=/  animal-tracker
  $:  species=animal
      name=@t
      meals=@ud
  ==
=/  at
  ^-  animal-tracker
  :+  %bat
    'ozzy'
  5
=>
  |%
  ++  animal
  $?  %rat
      %dog
      %cat
      %bat
      %owl
  ==
  ++  animal-tracker
  $:  species=animal
      name=@t
      meals=@ud
  ==
  --
  ^-  animal-tracker
  at

:: Q7
::

=>
=>
|%
++  $  "buried treasure"
--
|%
++  $  "dirt"
--
^$

:: Q8
::

=>
|%
++  $  "dirt"
++  core-in-arm
  |%
  ++  $  "buried treasure"
  --
--
$:core-in-arm

:: Q9
::

=>
|%
++  $  "dirt"
++  core1
  |%
  ++  $  "trea"
  --
++  core2
  |%
  ++  $  "sure"
  --
--
(weld $:core1 $:core2)

:: Q10
::

=>
=>
=/  text  "s"
|%
++  $  "sure"
--
=>
|%
++  $  "dirt"
--
|%
++  $  "dirt"
++  core-in-arm
  |%
  ++  $  "trea"
  --
--
(weld (weld $:core-in-arm ^^$) text)

:: Q11
::

=>
=+  [a=0 b=0]
|%
++  add-arm  (add a b)
++  sub-arm  (sub a b)
++  mul-arm  (mul a b)
++  div-arm  (div a b)
--
add-arm

:: Q12
::

=>
=+  [a=*@ud b=*@ud]
|%
++  add-arm  (add a b)
++  sub-arm  (sub a b)
++  mul-arm  (mul a b)
++  div-arm  (div a b)
--
add-arm

:: Q13
::
=>
=+  [a=*@ud b=*@ud]
|%
++  add-arm  (add a b)
++  sub-arm  (sub a b)
++  mul-arm  (mul a b)
++  div-arm  (div a b)
--
%=  .
   a  1
b  3
==


=>
=+  [a=*@ud b=*@ud]
|%
++  add-arm  (add a b)
++  sub-arm  (sub a b)
++  mul-arm  (mul a b)
++  div-arm  (div a b)
--
.(a 1, b 3)

:: Q14
::
=>
=>
=+  [a=*@ud b=*@ud]
|%
++  add-arm  (add a b)
++  sub-arm  (sub a b)
++  mul-arm  (mul a b)
++  div-arm  (div a b)
--
.(a 1, b 3)
add-arm

:: Q15
::

=>
|_  [a=@ud b=@ud]
++  add-arm  (add a b)
++  sub-arm  (sub a b)
++  mul-arm  (mul a b)
++  div-arm  (div a b)
--
=>
%=  .
a  1
b  3
==
add-arm

:: Q16
::

=>
|_  [a=@ud b=@ud]
++  add-arm  (add a b)
++  sub-arm  (sub a b)
++  mul-arm  (mul a b)
++  div-arm  (div a b)
--
%~  add-arm  .  [a=1 b=3]

=>
|_  [a=@ud b=@ud]
++  add-arm  (add a b)
++  sub-arm  (sub a b)
++  mul-arm  (mul a b)
++  div-arm  (div a b)
--
~(add-arm . [a=1 b=3])

:: Q17
::

=>
|_  [a=@ud b=@ud]
++  add-arm  (add a b)
++  sub-arm  (sub a b)
++  mul-arm  (mul a b)
++  div-arm  (div a b)
--
~(div-arm . [a=~(add-arm . [a=10 b=2]) b=~(mul-arm . [a=2 b=3])])
