CLASS z518375_mallardduck DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
      interfaces if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS Z518375_MALLARDDUCK IMPLEMENTATION.


  method if_oo_adt_classrun~main.

    out->write( |Hello , Welcome to 518375 Rest Application Programming Model { cl_abap_context_info=>get_user_technical_name( ) } | ).
    out->write( |Its { cl_abap_context_info=>get_user_time_zone( ) }| ).
*      data: mallard type ref to z518375_mallardduck.

*         create object mallard.
*         mallard = new #( ).
*        mallard = new z518375_mallardduck.
*        MallardDuck mallard = new MallardDuck();
*        FlyBehavior cantFly = () -> System.out.println("I can't fly");
*        QuackBehavior squeak = () -> System.out.println("Squeak");
*        RubberDuck  rubberDuckie = new RubberDuck(cantFly, squeak);
*        DecoyDuck   decoy = new DecoyDuck();
*
*        Duck     model = new ModelDuck();
*
*        mallard.performQuack();
*        rubberDuckie.performQuack();
*        decoy.performQuack();
*
*        model.performFly();
*        model.setFlyBehavior(new FlyRocketPowered());
*        model.performFly();
  endmethod.
ENDCLASS.
