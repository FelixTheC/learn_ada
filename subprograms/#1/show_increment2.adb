with Ada.Text_IO; use Ada.Text_IO;
with Increment_By;

procedure Show_Increment is
  A, B, C : Integer;

  procedure Display_Result is
    begin
      Put_Line("Increment of " & Integer'Image (A)
          & " with "      & Integer'Image (B)
          & " is "        & Integer'Image (C));
    end Display_Result;

begin
  A := 10;
  B := 20;
  C := Increment_By(A, Incr => B);
  Display_Result;

  A := 1;
  B := 200;
  C := Increment_By(A, Incr => B);
  Display_Result;
end Show_Increment;
