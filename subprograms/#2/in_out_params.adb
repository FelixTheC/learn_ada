with Ada.Text_IO; use Ada.Text_IO;

procedure In_Out_Params is
  procedure Swap(A, B : in out Integer) is
    Tmp : Integer;
  begin -- Swap
    Tmp := A;
    A := B;
    B := A;
  end Swap;

  A : Integer := 12;
  B : Integer := 44;
begin -- In_Out_Params
  Swap (A, B);
  Put_Line (Integer'Image (A)); --  Prints 44
end In_Out_Params;
