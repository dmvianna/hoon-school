:: decrement
::

=/  counter  0
|=  n=@ud
 ^-  @ud
   ?:  =(+(counter) n)
     counter
     %=  $
     counter  +(counter)
   ==
