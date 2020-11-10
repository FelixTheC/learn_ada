with Ada.Text_IO; use Ada.Text_IO;

procedure Main is

  type Mod_Int is mod 2 ** 5;
  --              ^ Range is 0 .. 31
  A : Mod_Int := 20;
  B : Mod_Int := 15;
  M : Mod_Int := A + B;
  --  No overflow here, M = (20 + 15) mod 32 = 3

begin -- Main

  for I in 1..M loop
    Put_Line ("#" & Mod_Int'Image(I) & " Hello, World!");
  end loop;

end Main;
