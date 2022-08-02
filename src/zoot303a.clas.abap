CLASS zoot303a DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    interfaces if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zoot303a IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

        CALL METHOD report=>singleton->register_car_entry
        EXPORTING
          license_plate    = '1234'
          brand            = 'Opel'
          model            = 'Cors'
          year             = '2020'
          color            = 'Whit'
          location         = 'Spai'
          heading          = 'N'
          turn01           = ''
          turn02           = ''
          turn03           = ''
          speed01          = ''
          speed02          = ''
          speed03          = ''
          speed_unit       = ''
          tare_weight      = '4800'
          weight_unit      = 'KG'
          passengers       = '2'
          basic_navigation = ' '
          gps_navigation   = ' '
          no_navigation    = ' '.


    call method report=>singleton->show_report( )
        .
    out->write(
        report=>singleton->output_stack
         ).
  ENDMETHOD.

ENDCLASS.
