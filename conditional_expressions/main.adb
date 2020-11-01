with Ada.Text_IO; use Ada.Text_IO;

procedure Main is
begin
  for I in 1..10 loop
  Put_Line(Integer'Image(I) & (if I mod 2 = 0 then " is Even" else " is Odd"));
  end loop;
end Main;
