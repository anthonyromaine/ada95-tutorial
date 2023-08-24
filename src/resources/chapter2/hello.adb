-------------------------------------------------------------
--
--   Program: Hello
--   Purpose: Display the message "Hello world!".
--   Author:  John English (je@brighton.ac.uk)
--
-------------------------------------------------------------

with Ada.Text_IO;                                       --  1
procedure Hello is                                      --  2
begin                                                   --  3
    Ada.Text_IO.Put ("Hello world!");                   --  4
    Ada.Text_IO.New_Line;                               --  5
end Hello;                                              --  6
