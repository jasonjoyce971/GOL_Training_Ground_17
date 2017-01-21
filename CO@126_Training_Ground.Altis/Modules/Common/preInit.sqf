#include "scriptComponent.hpp"

PREP(addToCurators);
PREP(buildingPop);
PREP(createGroup);
PREP(createUnits);
PREP(findAverage);
PREP(getGroupType);
PREP(GetPosASL);
PREP(GetPosATL);
PREP(isNight);
PREP(setAttributes);
PREP(spawnGroup);
PREP(spawnObjects);

if (isServer) then {
	["AllVehicles", "init", {
		[{
			_this call FUNC(addToCurators);
//			_this call FUNC(autoLock);
		}, _this, 0.5] call CBA_fnc_waitAndExecute;
	}] call CBA_fnc_addClassEventHandler;
};

[
	QGVAR(Faction), "LIST",
	["AI Spawn Side", "Side for units to spawn on"],
	QUOTE(ADDON),
	[
		[
			"west",
			"east",
			"independent"
		],
		[
			"West",
			"East",
			"Independent"
		],
		0
	],
	false
] call FUNCMAIN(settingsInit);

[
	QGVAR(AutoLock), "LIST",
	["Auto Lock Vehicles", "Note: Only effects vehicles with units in and spawned though the framework"],
	QUOTE(ADDON), [[true,false], ["Enabled","Disabled"], 1], false
] call FUNCMAIN(settingsInit);
