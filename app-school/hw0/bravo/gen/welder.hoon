:: welder
::

|=  strings=(list tape)
^-  tape
?~  strings
  ""
(weld i.strings $(strings t.strings))