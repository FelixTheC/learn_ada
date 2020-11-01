with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Check_Positive is
  N: Integer;
begin
  Put("Enter an Integer value: ");
  Get(N);
  Put(N);
  declare
    S: String :=
      (if N > 0 then " is a positive number"
       else " is not a positive number");
  begin
    Put_Line(S);
  end;
end Check_Positive;
