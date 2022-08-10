CLASS z518375_miniducksimulator DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
      interfaces if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS Z518375_MINIDUCKSIMULATOR IMPLEMENTATION.


  method if_oo_adt_classrun~main.

        data: mallard type ref to z518375_mallardduck.

*         create object mallard.
         mallard = new #(  ).

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
