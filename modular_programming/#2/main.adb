with Ada.Text_IO; use Ada.Text_IO;
with Operations;

procedure Main is
  use Operations;

  I : Integer := 5;
  R : Integer;

  function Img (I : Integer) return String renames Integer'Image;

  procedure Display_Update_Values is
    Incr : constant Integer := Get_Increment_Value;
  begin -- Display_Update_Values

    Put_Line (Img (I) & " incremented by " & Img (Incr)
              & " is " & Img (R));
    I := R;
  end Display_Update_Values;

begin -- Main
  R := Increment_By (I);
  Display_Update_Values;
  R := Increment_By (I);
  Display_Update_Values;

  R := Increment_By (I, 5);
  Display_Update_Values;
  R := Increment_By (I);
  Display_Update_Values;

  R := Increment_By (I, 10);
  Display_Update_Values;
  R := Increment_By (I);
  Display_Update_Values;
end Main;
