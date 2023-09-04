::  Parse CSV files with a known schema, then perform queries on the
::  results.
::
/+  *csv-utils
|_  csv=(list (list @t))
++  grab
  |%
  ++  mime  |=((pair mite octs) (de-csv q.q))
  ++  noun
    |=  n=*
    ^-  (list (list @t))
    =/  result  ((list (list @t)) n)
    ?>  (validate result)
    result
  ++  txt  |=(c=cord (de-csv c))
  --
++  grow
  |%
  ++  mime
    ?>  (validate csv)
    [/text/csv (as-octs:mimes:html (en-csv csv))]
  ++  noun
    ?>  (validate csv)
    csv
  ++  txt
    ?>  (validate csv)
    (en-csv csv)
  --
++  grad
  |%
  ++  form  %csv-diff
  ++  diff
    |=  bob=(list (list @t))
    ^-  (urge:clay (list @t))
    ?>  (validate csv)
    ?>  (validate bob)
    (lusk:differ csv bob (loss:differ csv bob))
  ++  pact
    |=  dif=(urge:clay (list @t))
    ^-  (list (list @t))
    =/  result  (lurk:differ csv dif)
    ?>  (validate result)
    result
  ++  join
    |=  $:  ali=(urge:clay (list @t))
            bob=(urge:clay (list @t))
        ==
    ^-  (unit (urge:clay (list @t)))
    (csv-join ali bob)
  ++  mash
    |=  $:  [ship desk (urge:clay (list @t))]
            [ship desk (urge:clay (list @t))]
        ==
    ^-  (urge:clay (list @t))
    ~|(%csv-mash !!)
  --
--
