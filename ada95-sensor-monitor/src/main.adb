with Ada.Text_IO;
with Sensors;

procedure Main is
   use Ada.Text_IO;
   use Sensors;

   Temp : Temperature_Sensor :=
     (Name      => (others => ' '),
      Value     => 0.0,
      Min_Value => 10.0,
      Max_Value => 30.0);

begin
   Temp.Name (1 .. 13) := "Temperature 1";

   Put_Line ("=== Ada95 Sensor Monitor ===");
   Put_Line ("Range: [10 .. 30]");
   New_Line;

   for I in 1 .. 5 loop
      Update (Temp);
      Print_Status (Temp);
      New_Line;
   end loop;
end Main;
