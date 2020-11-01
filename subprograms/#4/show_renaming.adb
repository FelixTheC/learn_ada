with A_Procedure_With_Very_Long_Name_That_Cannot_Be_Changed;

procedure Show_Renaming is
  procedure Show (S : String) renames
    A_Procedure_With_Very_Long_Name_That_Cannot_Be_Changed;

begin
  Show ("Hello World!");
end Show_Renaming;
