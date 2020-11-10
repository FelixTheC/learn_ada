with Ada.Text_IO; use Ada.Text_IO;

procedure Greet is

  type Days is (Monday, Tuesday, Wednesday, Thursday,
                   Friday, Saturday, Sunday);

  -- type Weekend_Days is new Days range Saturday .. Sunday;
  --  New type, where only Saturday and Sunday are valid literals.

  --  Declaration of a subtype
  subtype Weekend_Days is Days range Saturday .. Sunday;
  --                           ^ Constraint of the subtype

  M : Days := Sunday;

  S : Weekend_Days := M;
--  No error here, Days and Weekend_Days are of the same type.

begin -- Greet

  for I in Days loop
    case I is
      --  Just like a type, a subtype can be used as a
      --  range
      when Weekend_Days =>
        Put_Line ("Week end!");
      when others =>
        Put_Line ("Hello on " & Days'Image(I));
    end case;
  end loop;

end Greet;
