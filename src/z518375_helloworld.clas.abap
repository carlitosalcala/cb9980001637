CLASS z518375_helloworld DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
      interfaces if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS Z518375_HELLOWORLD IMPLEMENTATION.


  method if_oo_adt_classrun~main.
    out->write( |Hello , Welcome to 518375 Rest Application Programming Model { cl_abap_context_info=>get_user_technical_name( ) } | ).
    out->write( |Its { cl_abap_context_info=>get_user_time_zone( ) }| ).
  endmethod.
ENDCLASS.
