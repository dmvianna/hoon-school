|commit %base
=csv-to-txt-tube .^(tube:clay %cc /===/csv/txt)
=mycsv -read [%x our %base da+now /put/cars/csv]
!<  @t  (csv-to-txt-tube !>(mycsv))

=txt-to-csv-tube .^(tube:clay %cc /===/txt/csv)

!<  (list (list @t))
(txt-to-csv-tube !>(`@t`'Year,Make,Model\0a1997,Ford,E350\0a2000,Mercury,Cougar\0a'))
