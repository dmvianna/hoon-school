|=  jon=json
|^  ^-  @t
=/  =fbb
  (to-fbb jon)
?-  -.fbb
  %foo  (cat 3 +.fbb '!!!')
  %bar  ?:(+.fbb 'Yes' 'No')
  %baz  :((cury cat 3) p.fbb q.fbb r.fbb)
==
+$  fbb
  $%  [%foo @t]
      [%bar ?]
      [%baz p=@t q=@t r=@t]
  ==
++  to-fbb
=,  dejs:format
%-  of
:~  foo+so
    bar+bo
    baz+(at ~[so so so])
==
--
