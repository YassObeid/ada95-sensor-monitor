with Ada.Text_IO;
with Ada.Float_Text_IO;

package body Sensors is

   package T_IO renames Ada.Text_IO;
   package F_IO renames Ada.Float_Text_IO;

   -- petite "source" de valeurs simulées (déterministe)
   Tick : Integer := 0;

   function Is_Alarm (S : Sensor) return Boolean is
   begin
      return (S.Value < S.Min_Value) or else (S.Value > S.Max_Value);
   end Is_Alarm;

   procedure Print_Status (S : Sensor) is
   begin
      T_IO.Put_Line ("Sensor: " & S.Name);
      T_IO.Put ("   Value: ");
      F_IO.Put (S.Value, Aft => 2, Exp => 0);
      T_IO.New_Line;

      if Is_Alarm (S) then
         T_IO.Put_Line ("   Status: ALARM");
      else
         T_IO.Put_Line ("   Status: OK");
      end if;
   end Print_Status;

   -- Mise à jour simulée : valeur qui "bouge" entre 0 et 100
   procedure Update (S : in out Temperature_Sensor) is
   begin
      Tick := Tick + 7;
      S.Value := Float (Tick mod 101); -- 0..100
   end Update;

end Sensors;
