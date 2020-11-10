procedure Main is
  -- ID Card number type, incompatible with Integer.
  type Social_Security_Number is
    new Integer range 0 .. 999_99_9999;
  --                  ^ Since a SSN has 9 digits max, and cannot be
  --                    negative, we enforce a validity constraint.

  SSN : Social_Security_Number := 555_55_5555;
  --                              ^ You can put underscores as formatting in
  --                                any number.

  I : Integer;

  Invalid : Social_Security_Number := -1;
  --                                  ^ This will cause a runtime error
  --                                    (and a compile time warning with
  --                                     GNAT)

begin -- Main
  --I := SSN;                           -- Illegal, they have different types
  --SSN := I;                           -- Likewise illegal
  I := Integer (SSN);                 -- OK with explicit conversion
  SSN := Social_Security_Number (I);  -- Likewise OK
end Main;
