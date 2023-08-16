:: random-boxcar: Return 1 or 0, semi-randomly.
::
::::  /base/gen/random-boxcar.hoon
  ::

:: Let's reuse our boxcar generator.
::
/=  boxcar  /gen/boxcar

:: No arguments wanted, just entropy.
::
:-  %say
|=  [[* eny=@uvJ *] * *]
:-  %noun

:: We're going to assign a random number
:: from 0 to 10 to the 'random' face.
::
=/  rand
(~(rad og eny) 10)

:: Run boxcar with the random number.
::
(boxcar rand)
