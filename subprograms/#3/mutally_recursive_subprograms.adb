with Ada.Text_IO; use Ada.Text_IO;

procedure Mutally_Recursive_Subprograms is
  procedure Compute_A (V : Natural);
  --  Forward declaration of Compute_A

  procedure Compute_B (V : Natural) is
  begin -- Compute_B
    if V > 5 then
      Compute_A (V - 1);
      -- Call to Compute_A
    end if;
  end Compute_B;

  procedure Compute_A (V : Natural) is
  begin
    Put_Line ("V is : " & Integer'Image(V));
    if V > 2 then
      Compute_B (V - 1);
    end if;
  end Compute_A;

begin -- Mutally_Recursive_Subprograms
  Compute_A (15);
end Mutally_Recursive_Subprograms;
