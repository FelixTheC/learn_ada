with Ada.Text_IO;           use Ada.Text_IO;
with Week.Child;            use Week.Child;
with Week.Child2;           use Week.Child2;
with Week.Child.Grandchild; use Week.Child.Grandchild;

procedure Main is

begin -- Main
  Put_Line ("First day of the week is " & Get_First_Of_Week);
  Put_Line ("Second day of the week is " & Get_Second_Of_Week);
  Put_Line ("---");
  Put_Line ("Last day of the week is " & Get_Last_Of_Week);
end Main;
