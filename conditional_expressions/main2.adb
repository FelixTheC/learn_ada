with Ada.Text_IO; use Ada.Text_IO;

procedure Main is

begin -- Main
  for I in 1..10 loop
    Put_Line(case I is
      when 1 | 3 | 5 | 7 | 9 => Integer'Image(I) & " is Odd",
      when 2 | 4 | 6 | 8 | 10 => Integer'Image(I) & " is Even");
  end loop;
end Main;
