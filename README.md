# Demo of  [**c-atom**](https://github.com/ctlst-tech/c-atom) library usage: Piloting Cessna 172 in flightgear 

## YouTube demo

[![go to YouTube, check c172 engine start video](https://img.youtube.com/vi/OVEkKTiokHU/0.jpg)](https://www.youtube.com/watch?v=OVEkKTiokHU)

## Run it

0. Make sure you have all submodules inited and updated: ```git submodule update --init --recursive```
1. Run ```make prebuild``` to generate code of atomic functions
2. Build **catom** runner by ```make catom``` command
3. Copy ```rig/flightgear/*.xml``` to ```Protocol``` dir inside your FlightGear installation
4. Add the following to the FlightGear command line options (check that c172 is selected as an aircraft):
```
--generic=socket,in,50,,6000,udp,fg_in_control
--generic=socket,in,50,,6001,udp,fg_in_switches
--generic=socket,out,50,127.0.0.1,6010,udp,fg_out_nav
--generic=socket,out,50,127.0.0.1,6011,udp,fg_out_engine
```
5. Start FlightGear
6. Run ```catom``` by ```make run_catom```
7. Use ```rig/flightgear/commander.sh``` to toggle commands
