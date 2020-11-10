with Ada.Text_IO; use Ada.Text_IO;

procedure Custom_Floating_Types is

  type T3   is digits 3;
  type T15  is digits 15;
  type T18  is digits 18;

begin -- Custom_Floating_Types
  Put_Line ("T3  requires " & Integer'Image (T3'Size) & " bits");
  Put_Line ("T15 requires " & Integer'Image (T15'Size) & " bits");
  Put_Line ("T18 requires " & Integer'Image (T18'Size) & " bits");
end Custom_Floating_Types;
