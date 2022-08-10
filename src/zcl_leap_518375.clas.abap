CLASS zcl_leap_518375 DEFINITION PUBLIC.
  PUBLIC SECTION.
    METHODS leap
      IMPORTING
        year          TYPE i
      RETURNING
        VALUE(result) TYPE abap_bool.
ENDCLASS.

CLASS zcl_leap_518375 IMPLEMENTATION.

  METHOD leap.
* add solution here
    result = COND abap_bool(
        WHEN year MOD 400 = 0 THEN abap_true
        WHEN year MOD 100 = 0 THEN abap_false
        WHEN year MOD 4   = 0 THEN abap_true
         ).
  ENDMETHOD.

ENDCLASS.



