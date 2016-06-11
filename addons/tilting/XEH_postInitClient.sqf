#include "script_component.hpp"

// Cancel placement on right mouse button
["MouseButtonDown", {
    params ["", "_key"];

    if (_key != 1 || {!GVAR(pfhRunning)} || {ACE_player getVariable [QGVAR(tiltingStage), 0] != 0}) exitWith {};

    [ACE_player] call FUNC(cancelConnect);
}] call CBA_fnc_addDisplayHandler;
