# Ada95 Sensor Monitor

Minimal Ada 95 console project demonstrating:
- Package-based design (.ads / .adb)
- Object-oriented programming with tagged types
- Abstract base type and concrete sensor implementation
- Simple alarm detection logic

Build:
gnatmake -gnat95 -O2 -Isrc -o sensor_monitor src/main.adb

Run:
./sensor_monitor

Tests:
gnatmake -gnat95 -O2 -Isrc -o test_sensors tests/test_sensors.adb
./test_sensors
