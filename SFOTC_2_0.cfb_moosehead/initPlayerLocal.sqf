#include "script_component.hpp"


if (!isDedicated) then {waitUntil {!isNull player && isPlayer player};};

// Disable CUP street lights based on lighting levels (bad performance script)
CUP_stopLampCheck = true;

// Fixing warning spam from ambientLife. Also, if I hear "Look a bunny!" one more bloody time...
sleep 0.2;
enableEnvironment [false, true];

////////////////////////////////////////////////////////////////////////////////
// Shut the hell up  - Mute Orders and Reports						 //
////////////////////////////////////////////////////////////////////////////////

{_x setSpeaker "NoVoice"} forEach playableUnits;

enableSentences false;

