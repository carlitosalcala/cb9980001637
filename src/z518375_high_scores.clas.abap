CLASS z518375_high_scores DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    TYPES integertab TYPE STANDARD TABLE OF i WITH EMPTY KEY.
    METHODS constructor
      IMPORTING
        scores TYPE integertab.

    METHODS list_scores
      RETURNING
        VALUE(result) TYPE integertab.

    METHODS latest
      RETURNING
        VALUE(result) TYPE i.

    METHODS personalbest
      RETURNING
        VALUE(result) TYPE i.

    METHODS personaltopthree
      RETURNING
        VALUE(result) TYPE integertab.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA scores_list TYPE integertab.

ENDCLASS.


CLASS z518375_high_scores IMPLEMENTATION.

  METHOD constructor.
    me->scores_list = scores.
  ENDMETHOD.

  METHOD list_scores.
    " add solution here
    result = me->scores_list.
  ENDMETHOD.

  METHOD latest.
    " add solution here
   result = scores_list[ lines( scores_list ) ].
  ENDMETHOD.

  METHOD personalbest.
    " add solution here
    sort scores_list by table_line DESCENDING.
    result = scores_list[ 1 ].
  ENDMETHOD.

  METHOD personaltopthree.
    " add solution here
    data top_lines type i.
    top_lines = lines( scores_list ) .
    sort scores_list by table_line DESCENDING.
    if top_lines > 3.
        top_lines = 3.
    endif.

    while sy-index <= top_lines.
      append scores_list[ sy-index ] to result.
      " result = scores_list[e sy-index ].
    endwhile.
    " result = value #(
    "FOR i = 1 while i <= lines( scores_list ) and i < 4
   "  ( scores_list[ i ] )
    " ).
  ENDMETHOD.


ENDCLASS.
