with Ada.Text_IO; use Ada.Text_IO;
with Week;
--  References the Week package, and adds a dependency from Main
--  to Week


procedure Main is
  use Week;

begin

  -- Without => use Week; in line 8
  -- Put_Line ("The first day of the week is: " & Week.Mon);
  Put_Line ("The first day of the week is: " & Mon);

end Main;
