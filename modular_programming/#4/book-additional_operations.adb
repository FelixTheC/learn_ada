package body Book.Additional_Operations is

  function Get_Extended_Title return String is
  begin
    -- Works only because
    -- we declared Title in the declaration
    return "Book Title: " & Title;
  end Get_Extended_Title;

  function Get_Extended_Author return String is
  begin
   --  "Author" string declared in the body of Book package is not
   --  visible here. Therefore, we cannot write:
   --
   --  return "Book Author: " & Author;
   --
   --  but we can use
   --  return "Book Author: " & Get_Author;

    return "Book Author: " & Get_Author;
  end Get_Extended_Author;

end Book.Additional_Operations;
