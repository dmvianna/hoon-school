:: Q2
::
^-  %-  list
    @ud
:-  1  :-  2  :-  3  :-  4  :-  5  ~

`(list @ud)`[1 2 3 4 5 ~]

:: Q3
::
=/  animal
   $?  %rat
       %dog
       %cat
       %bat
       %owl
   ==
`(list animal)`[%rat %dog %cat %bat ~]


:: Q4
::
=/  carlist  ^-  (list @t)  ['ford' 'chevy' 'toyota' ~]
  ^-  %-  list
  @t
:-  'dodge'
carlist

=/  carlist  ^-  (list @t)  ['ford' 'chevy' 'toyota' ~]
  `(list @t)`['dodge' carlist]

:: Q5
::
 =/  starlist  `(lest @p)`[~sonnet ~winter ~diglet ~ponnys ~]
  i.starlist

 =/  starlist  `(list @p)`[~sonnet ~winter ~diglet ~ponnys ~]
  ?~  starlist  !!
  i.starlist


:: Q6
::
(gulf 1 50)

:: Q7
::
=/  mul2  |=(a=@ud (mul a 2))
(turn (gulf 1 50) mul2)

:: Q8
::
=/  mul2  |=(a=@ud (mul a 2))
  (roll (turn (gulf 1 50) mul2) add)

:: Q9
::
=/  is-star  |=(p=@p &((gth p 255) (lth p 65.536)))
   =/  ps
 :*  ~zod
     ~binrul
     ~sampel-palnet
     ~mister-rabbyt
     ~litzod
     ~sonnet
     ~ponnys
     ~nec
     ~
 ==
(skim `(list @p)`ps is-star)

:: Q10
::
=/  is-star  |=(p=@p &((gth p 255) (lth p 65.536)))
   =/  ps
 :*  ~zod
     ~binrul
     ~sampel-palnet
     ~mister-rabbyt
     ~litzod
     ~sonnet
     ~ponnys
     ~nec
     ~
 ==
(lent (skim `(list @p)`ps is-star))

:: Q13
::
((sane %t) 'Thë ångström įs ä vęry smäll ûnīt øf méäśürèmęnt')
((sane %ta) 'Thë ångström įs ä vęry smäll ûnīt øf méäśürèmęnt')
((sane %tas) 'Thë ångström įs ä vęry smäll ûnīt øf méäśürèmęnt')
`(list @tD)`"Thë ångström įs ä vęry smäll ûnīt øf méäśürèmęnt"

:: Q14
::
((sane %t) 'abcd-1234')
((sane %ta) 'abcd-1234')
((sane %tas) 'abcd-1234')
`(list @tD)`"abcd-1234"

:: Q15
::
`(list @tD)`~[`@`114 `@`97 `@`105 `@`110 `@`98 `@`111 `@`119 `@`32 `@`115 `@`104 `@`101 `@`114 `@`98 `@`101 `@`116]

:: Q16
::
^-  tape  ~[`@`114 `@`97 `@`105 `@`110 `@`98 `@`111 `@`119 `@`32 `@`115 `@`104 `@`101 `@`114 `@`98 `@`101 `@`116]

:: Q17
::
^-  tape  (turn ~[114 97 105 110 98 111 119 32 115 104 101 114 98 101 116] @)
^-  tape  %+  turn  ~[114 97 105 110 98 111 119 32 115 104 101 114 98 101 116]  @
^-  tape  ^-  (list @)  ~[114 97 105 110 98 111 119 32 115 104 101 114 98 101 116]

:: Q18
::
=/  hail
   %-  tape
 " liah lla"
 =/  tibru
   %-  cuss
 "urbit"
%-  flop
%-  weld
:-  tibru  hail

:: Q19
::
^-  tape
%^    snap
    "I have a lot of honey"
  16
'm'

:: Q20
::
%-  crip
^-  tape
%^    snap
    "I have a lot of honey"
  16
'm'

:: Q21
::
=/  ship  ^-  @p  ~tamlut-modnys
=/  num  ^-  @ud  24
"Hello, I'm {<ship>} and I like the number {<num>}."
