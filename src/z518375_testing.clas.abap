CLASS z518375_testing DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    TYPES group TYPE c LENGTH 1.
    TYPES: BEGIN OF initial_type,
             group       TYPE group,
             number      TYPE i,
             description TYPE string,
           END OF initial_type,
           itab_data_type TYPE STANDARD TABLE OF initial_type WITH EMPTY KEY.

    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS z518375_testing IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    DATA(initial_data) =
            VALUE itab_data_type(
                ( group = 'A' number = 10  description = 'Group A-2' )
                ( group = 'B' number = 5   description = 'Group B' )
                ( group = 'A' number = 6   description = 'Group A-1' )
                ( group = 'C' number = 22  description = 'Group C-1' )
                ( group = 'A' number = 13  description = 'Group A-3' )
                ( group = 'C' number = 500 description = 'Group C-2' )
                ).
    TRY.
        DATA(wa_data) = initial_data[ 8 ].
      CATCH cx_sy_itab_line_not_found.
        out->write( 'Pinche huevon, ha dado un dump' ).
        EXIT.
    ENDTRY.
    out->write( wa_data ).
  ENDMETHOD.

ENDCLASS.
