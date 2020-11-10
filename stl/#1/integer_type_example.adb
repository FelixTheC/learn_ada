with Ada.Text_IO; use Ada.Text_IO;

procedure Integer_Type_Example is
  -- Declare a signed integer type
  type My_Int is range -1..20;
  --  Like variables, type declarations can only appear in
  --  declarative regions

begin -- Integer_Type_Example

  for I in My_Int loop
    Put_Line (My_Int'Image(I));
    --              ^ 'Image attribute, converts a value to a
    --                 String
  end loop;

end Integer_Type_Example;
