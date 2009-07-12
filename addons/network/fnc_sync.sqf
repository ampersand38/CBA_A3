/*
Internal Function: CBA_network_fnc_sync
*/
#include "script_component.hpp"

// COMPATIBILITY Feature - Check Override variables before broadcasting the sync. 
if !(GVAR(weatherSync_Disabled)) then { [QUOTE(GVAR(weather)), [overCast, fog, rain]] call CBA_fnc_globalEvent };
if !(GVAR(timeSync_Disabled)) then { [QUOTE(GVAR(date)), date] call CBA_fnc_globalEvent };
