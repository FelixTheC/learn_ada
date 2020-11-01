with Ada.Text_IO; use Ada.Text_IO;

procedure Greet_5b is
   I: Integer := 1; -- Variable declaration
begin
   loop
      Put_Line("Hello World!" & Integer'Image(I));
      exit when I = 5; -- Exit statement
      I := I + 1;
   end loop;
end Greet_5b;
