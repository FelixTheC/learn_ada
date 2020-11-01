procedure Swap(A, B : Integer) is
  Tmp : Integer;
begin --
  Tmp := A;

  A := B; -- Error: assignment to "in" mode parameter not allowed

  B := Tmp; -- Error: assignment to "in" mode parameter not allowed

end Swap;
