/*
	Author: GuzzenVonLidl
	From array spawns objects and vehicles and adds them to a array

	Usage:
	[] call GW_Common_fnc_spawnObjects;

	Arguments:
	#0:	ARRAY - objects location and dir

	Return Value: <ARRAY>
	Objects spawned

	Public: NO
*/
#include "..\scriptComponent.hpp"

GOL_Fnc_GetPos =
{
	private ["_type","_returnValue","_DebugName"];

	_type = _this select 0;

	switch (typeName _type) do {

		case "STRING": {
			if ((getMarkerPos _type) isEqualTo [0,0,0]) then {
				systemChat format ["Marker %1 does not exist, Returning [0,0,0] Instead", _type];
				_returnValue = getMarkerPos _type;
			} else {
				_returnValue = getMarkerPos _type;
			};
		};

		case "OBJECT": {
			_returnValue = getPosATL _type;
		};

		case "GROUP": {
			_returnValue = getPosATL (leader _type);
		};

		case "LOCATION": {
			_returnValue = position _type;
		};

		case "ARRAY": {
			_returnValue = _type;
		};

		default {
			_DebugName = "GOL_Fnc_GetPos";
			scriptName _DebugName;
			[["%1 was passed to this function, only accepts STRING, OBJECT, GROUP, LOCATION or ARRAY", (typeName _type)],[_DebugName,__FILE__,__LINE__],"log"] call GOL_Fnc_DebugLog;
		};

	};

	_returnValue
};

if (!isServer) exitWith {false};

_this spawn
{
	private ["_Array","_Objects","_Object","_direction","_location","_veh","_type","_pos"];
	
	if (isNil "Objectcounter") then
	{
		Objectcounter = 0;
	};
	
	_Array = [];
	_Objects = [];
	
	{
		if (!(typeName _x isEqualTo "STRING") && !(typeName _x isEqualTo "OBJECT")) then
		{
			_Objects pushBack _x;
		};
	} forEach _this;

	#define	isWater(Object,Pos) if (surfaceIsWater ([_location] call GOL_Fnc_GetPos)) then {Object setPosASL Pos;} else {Object setPosATL Pos;};
	
	{
		sleep 0.1;
		_Object = (_x select 0);
		_direction = (_x select 1);
		_location = (_x select 2);
		_veh = _Object createVehicle [0,0,0];
		_veh setDir _direction;
		_veh setVariable ["GOL_Caching", true, true];

		if (typeName (_this select 1) isEqualTo "OBJECT") then
		{
			_veh setPosATL ((_this select 1) modelToWorld _location);
		}
		else
		{
			if (_veh isKindOf "AllVehicles") then
			{
				_pos = [(_location select 0), (_location select 1), (_location select 2) + 1];
				isWater(_veh, _pos);
			}
			else
			{
				isWater(_veh, _location);
			};
		};

		_veh setVectorUp [0,0,1];

		if (typeName (_this select 0) isEqualTo "STRING") then
		{
			_name = format ["Object_Array_%1",Objectcounter];
			_veh setVehicleVarName _name;
			_Array pushBack _veh;
			Objectcounter = Objectcounter + 1;
		};
	} forEach _Objects;

	if (typeName (_this select 0) isEqualTo "STRING") then
	{
		//waitUntil {sleep 1; (count _Objects) isEqualTo (count _Array)};
		//missionNamespace setVariable [(_this select 0), _Array];
		{
			GW_TrainingGround_spawnedAssets pushBack _x;
		}foreach _Array;
	};
};

/*
private _objects = [];
{
	private "_object";
	_x params ["_class","_posATL","_vector","_specials","_simpleObject"];

	if (_simpleObject) then {
		_object = _class createVehicleLocal [0,0,0];
		_object setposATL _posATL;
		private _posASL = (getPosWorld _object);
		_model = ((getModelInfo _object) select 1);
		deleteVehicle _object;
		_object = createSimpleObject [_model, _posASL];
	} else {
		_object = createVehicle [_class, [0,0,0], [], 0, "NONE"];
		_object setPosATL _posATL;
	};
	
	_object = createVehicle [_class, [0,0,0], [], 0, "NONE"];
	_object setPosATL _posATL;
	
	_object setVectorDirAndUp _vector;
	[_object, _specials] call FUNC(setAttributes);
	_objects pushBack _object;
} forEach _this;

_objects
*/