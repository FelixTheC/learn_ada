with Ada.Text_IO; use Ada.Text_IO;

procedure Greet_Sa is
begin
   for I in 1..5 loop
      Put_Line("Hello World!" & Integer'Image(I)); -- Procedure call
   end loop;
   Put_Line("And backwards...");
   for I in reverse 1..5 loop
      Put_Line("Hello World!" & Integer'Image(I));
   end loop;
end Greet_Sa;
