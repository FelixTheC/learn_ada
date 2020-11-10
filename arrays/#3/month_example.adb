with Ada.Text_IO; use Ada.Text_IO;

procedure Month_Example is

  type Month_Duration is range 1 .. 31;
  type Month is (Jan, Feb, Mar,
                 Apr, May, Jun,
                 Jul, Aug, Sep,
                 Oct, Nov, Dec);

  type My_Int_Array is array (Month) of Month_Duration;
  --                          ^ Can use an enumeration type as the index

  Tab : constant My_Int_Array :=
  --    ^ constant is like a variable but cannot be modified
                (31, 28, 31,
                 30, 31, 30,
                 31, 31, 30,
                 31, 30, 31);
  --  Maps months to number of days (ignoring leap years)

  Feb_Days : Month_Duration := Tab (Feb);
   --  Number of days in February
begin -- Month_Example

  for M in Month loop
    Put_Line (
      Month'Image (M) & " has "
      & Month_Duration'Image (Tab (M)) & " days."
    );
  end loop;
end Month_Example;
