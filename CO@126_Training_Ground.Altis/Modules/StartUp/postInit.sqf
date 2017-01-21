#include "scriptComponent.hpp"

[QGVARMAIN(missionStarted), {
	if (isServer) then {
		if !(GVAR(TimeLimit) isEqualTo -1) then {
			for "_i" from 0 to GVAR(TimeLimit) do {
				[{
					params ["_value"];
					[QGVAR(Time), [_value]] call CBA_fnc_globalEvent;
					if (_value isEqualTo 0) then {
						[QGVAR(Enabled), false] call CBA_fnc_globalEvent;
					};
					GVAR(TimeLimit) = _value;
					publicVariable QGVAR(TimeLimit);
				}, [(GVAR(TimeLimit) - _i)], (60 * _i)] call CBA_fnc_waitAndExecute;
			};
		};
	};
	if (hasInterface) then {
		[{
			[QGVAR(Enabled), !(GVAR(TimeLimit) isEqualTo -1)] call CBA_fnc_localEvent;
			if !(GVAR(DistanceLimit) isEqualTo -1) then {
				[{(player distance (getMarkerPos format ["respawn_%1", GETSIDESTRING(player)]) > GVAR(DistanceLimit))},{
					[QGVAR(Enabled), false] call CBA_fnc_localEvent;
				}, []] call CBA_fnc_waitUntilAndExecute;
			};
		}, [], 0.5] call CBA_fnc_waitAndExecute;
	};
}] call CBA_fnc_addEventHandler;

if (hasInterface) then {
	private ["_nearbyLocations","_town","_time","_month"];
	_town = "Unknown";
	_nearbyLocations = nearestLocations [position player, ["NameCityCapital","NameCity","NameMarine","NameVillage","NameLocal","Hill"], 1000];
	if (count _nearbyLocations > 0) then {_town = text (_nearbyLocations select 0)};
	_time = [((date select 3) * 3600) + ((date select 4) * 60), "H:MM:SS"] call CBA_fnc_formatElapsedTime;

	#include "postInitPlayer.sqf"
};
