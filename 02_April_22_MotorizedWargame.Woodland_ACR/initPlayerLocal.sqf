#include "script_component.hpp"
/*
 * Author: Theseus Incorporated
 * Initialization of scripts local to player
 * Executed locally when player joins mission (includes both mission start and JIP)
 * Executed after initServer and before initPlayerServer and init.
 *
 * Arguments:
 * 0: Player <OBJECT>
 * 1: Did JIP <BOOL>
 *
 * Return Value:
 * None
 *
 * Example:
 * None
 */


if (!isDedicated) then {waitUntil {!isNull player && isPlayer player};};

nul = [] execVM "EHL\EHL.sqf";

// Fixing warning spam from ambientLife. Also, if I hear "Look a bunny!" one more bloody time...
sleep 0.2;
enableEnvironment [false, true];

////////////////////////////////////////////////////////////////////////////////
// kill the rabbits 													//
////////////////////////////////////////////////////////////////////////////////

enableEnvironment [false, true];

////////////////////////////////////////////////////////////////////////////////
// Shut the hell up  - Mute Orders and Reports						 //
////////////////////////////////////////////////////////////////////////////////

{_x setSpeaker "NoVoice"} forEach playableUnits;

enableSentences false;
