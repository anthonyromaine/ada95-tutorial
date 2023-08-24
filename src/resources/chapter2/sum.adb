with Ada.Text_IO, Ada.Integer_Text_IO;            --  1
use Ada.Text_IO, Ada.Integer_Text_IO;             --  2
procedure Sum is
    First, Second : Integer;                      --  3
begin
    Put ("Enter two integers: ");                 --  4
    Get (First);                                  --  5
    Get (Second);                                 --  6
    Put ("The sum is");                           --  7
    Put (First + Second);                         --  8
    New_Line;                                     --  9
end Sum;
