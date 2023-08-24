with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;
procedure Calc is
    Length, Width, Height : Integer;
begin
    Put ("Enter Length, Width, and Height (in centimeters): ");
    Get (Length);
    Get (Width);
    Get (Height);
    Put ("The volume is ");
    Put (Length * Width * Height, 1);
    Put (" cm^3");
    New_Line;

    Put ("The surface area is ");
    Put ((2 * Length * Width) + (2 * Length * Height) + (2 * Height * Width),
        1);
    Put (" cm^2");
    New_Line;
end Calc;
