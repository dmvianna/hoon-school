:: Q1
::

(my ~[['kale' 5] ['potato' 1] ['apple' 1]])

:: Q2
::

=/  produce  (my ~[['kale' 5] ['potato' 1] ['apple' 1]])
=/  produce  %-  ~(put by produce)  ['onion' 2]
produce

:: Q3
::

=/  produce  (my ~[['kale' 5] ['potato' 1] ['apple' 1]])
=/  produce  %-  ~(del by produce)  'kale'
produce

:: Q4
::

=/  produce  (my ~[['kale' 5] ['potato' 1] ['apple' 1]])
=/  potato  (%~(get by produce) 'potato')
(need potato)

:: Q5
::

^-  (set @t)  (sy ~['kale' 'potato' 'apple' 'apple' 'kale'])

:: Q6
::

=/  produce  (sy ~['kale' 'potato' 'apple' 'apple' 'kale'])
^-  (set @t)  (~(put in produce) 'onion')

:: Q7
::

=/  produce  (sy ~['kale' 'potato' 'apple' 'apple' 'kale'])
^-  (set @t)  (~(del in produce) 'apple')

:: Q8
::

;:  add  1  2  3  4  5  ==

;:(add 1 2 3 4 5)

:: Q9
::
