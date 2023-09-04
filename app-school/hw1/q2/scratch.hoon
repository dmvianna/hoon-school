|commit %base
=csv-to-txt-tube .^(tube:clay %cc /===/csv/txt)
=mycsv -read [%x our %base da+now /put/cars/csv]
!<  @t  (csv-to-txt-tube !>(mycsv))
