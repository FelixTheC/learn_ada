with Ada.Text_IO; use Ada.Text_IO;

procedure Unconstrained_Array_Example is

  type Days is (Monday, Tuesday, Wednesday,
                Thursday, Friday, Saturday, Sunday);
  type Workload_Type is array (Days range <>) of Natural;
  --  Indefinite array type
  --                           ^ Bounds are of type Days,
  --                             but not known

  Workload : constant Workload_Type (Monday .. Friday) :=
  --                                 ^ Specify the bounds
  --                                   when declaring
     (Friday => 7, others => 8);
  --               ^ Default value
  --  ^ Specify element by name of index

begin -- Unconstrained_Array_Example

  for I in Workload'Range loop
    Put_Line (Integer'Image (Workload (I)));
  end loop;
end Unconstrained_Array_Example;
