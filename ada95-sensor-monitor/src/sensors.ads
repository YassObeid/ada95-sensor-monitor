package Sensors is

   -- Type abstrait "générique" pour tous les capteurs
   type Sensor is abstract tagged record
      Name      : String (1 .. 20);
      Value     : Float := 0.0;
      Min_Value : Float := 0.0;
      Max_Value : Float := 0.0;
   end record;

   -- Obligatoire : chaque capteur concret doit définir comment il se met à jour
   procedure Update (S : in out Sensor) is abstract;

   -- Commun à tous les capteurs
   function Is_Alarm (S : Sensor) return Boolean;
   procedure Print_Status (S : Sensor);

   -- Capteur concret (température) : hérite de Sensor
   type Temperature_Sensor is new Sensor with null record;

   -- Implémentation de Update pour Temperature_Sensor
   overriding procedure Update (S : in out Temperature_Sensor);

end Sensors;
