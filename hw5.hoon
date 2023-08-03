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

:: Q4
::
