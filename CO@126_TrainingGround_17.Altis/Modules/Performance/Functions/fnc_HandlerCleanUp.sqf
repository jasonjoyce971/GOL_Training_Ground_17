/*
	Author: GuzzenVonLidl
	A performance handler that removes dead bodies, weaponholders and vehicles after some time

	Usage:
	[] call GW_Performance_Fnc_HandlerCleanUp;

	Arguments: NO

	Return Value: NO

	Public: NO
*/
//#define DEBUG_MODE_FULL
#include "..\scriptComponent.hpp"

{
	private ["_object","_timer","_distance"];
	_object = _x;

	if (isNil {_object getVariable QGVAR(ObjectRemovalTimer)}) then {
		if (_object isKindOf "AllVehicles") then {
			if (_object isKindOf "CAManBase") then {
				_timer = 10;	// Man
			} else {
				_timer = 20;	// Vehicle
			};
		} else {
			_timer = 5;			// Other(Ruins, WeaponDrops, etc)
		};
		_object setVariable [QGVAR(ObjectRemovalTimer), _timer];
	};

	private _getTime = (_object getVariable QGVAR(ObjectRemovalTimer));
	if (_getTime isEqualTo 0) then {
		TRACE_1("Deleting", _object);
		deleteVehicle _object;
	} else {
		TRACE_1("Removal of Object in", _getTime);
		_object setVariable [QGVAR(ObjectRemovalTimer), _getTime - 1];
	};

} count (allDead + (allMissionObjects "WeaponHolder") + (allMissionObjects "GroundWeaponHoder") + (allMissionObjects "WeaponHolderSimulated") + (allMissionObjects "Ruins"));

{
	if (count (units _x) isEqualTo 0) then {
		TRACE_1("Deleting group", _x);
		[QGVAR(removeGroup), _x] call CBA_fnc_GlobalEvent;
	};
} forEach allGroups;

/*
{
	if (( _x distance [0,0,0]) isEqualTo 0) then {
		TRACE_1("Deleting Trigger", _x);
		deleteVehicle _x;
	};
} forEach allMissionObjects "EmptyDetector";
*/
