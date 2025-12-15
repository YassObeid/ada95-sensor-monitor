with Ada.Text_IO;
with Sensors;

procedure Test_Sensors is
   use Ada.Text_IO;
   use Sensors;

   T : Temperature_Sensor :=
     (Name      => (others => ' '),
      Value     => 0.0,
      Min_Value => 10.0,
      Max_Value => 30.0);

begin
   Put_Line ("=== Running simple tests ===");

   T.Value := 20.0;
   if Is_Alarm (T) then
      Put_Line ("Test 1 FAILED (20 should be OK)");
   else
      Put_Line ("Test 1 OK");
   end if;

   T.Value := 5.0;
   if Is_Alarm (T) then
      Put_Line ("Test 2 OK");
   else
      Put_Line ("Test 2 FAILED (5 should be ALARM)");
   end if;
end Test_Sensors;
