CLASS z518375_cl_two_fer DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS two_fer
      IMPORTING
        input         TYPE string OPTIONAL
      RETURNING
        VALUE(result) TYPE string.
ENDCLASS.



CLASS z518375_cl_two_fer IMPLEMENTATION.
  METHOD two_fer.
* add solution here
    result =
        COND string(
            WHEN input is initial then |One for you, one for me.|
            ELSE |One for { INPUT }, one for me.|
            ).
  ENDMETHOD.

ENDCLASS.
