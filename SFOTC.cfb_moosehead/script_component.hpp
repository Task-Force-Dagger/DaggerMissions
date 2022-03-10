#define PREFIX TFD
#define COMPONENT SOFTC

// Version
#define MAJOR 3
#define MINOR 6
#define PATCHLVL 0

// Map
#define MAP cfb_moosehead

#define DEBUG_SYNCHRONOUS
//#define DEBUG_MODE_FULL

#include "\x\cba\addons\main\script_macros_mission.hpp"

#define TFDFUNC(var1,var2) TRIPLES(DOUBLES(tfd,var1),fnc,var2)

#define TFDGVAR(var1,var2) TRIPLES(tfd,var1,var2)
#define QTFDGVAR(var1,var2) QUOTE(TFDGVAR(var1,var2))

// ACE3
#define ACEFUNC(var1,var2) TRIPLES(DOUBLES(ace,var1),fnc,var2)
