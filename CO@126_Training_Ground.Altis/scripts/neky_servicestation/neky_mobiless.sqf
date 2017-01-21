//	null = [This, Radius, (is a Mobile Service Station), ["NearestObjects"]] execVM "Scripts\NEKY_ServiceStation\NEKY_MobileSS.sqf";
///////////////////////////////////////////
//	
//	1. Object or Vehicle name, the name of the Object or Vehicle that will be the Mobile Service Station.
//		a. Can be the actual name of the Object or Vehicle. Generally used when activating Service Stations later in to the mission.
// 		b. This, when entered in the init line of an object or Vehicle, adds an action to activate the Mobile Service Station.
//	2. OPTIONAL: Radius, range of service station.
//		a. Any number (meters) from center of object or vehicle chosen above.
//		b. Nil, will make it default to what is defined in NEKY_Settings.
//	3. OPTIONAL: If it is a Mobile Service Station. True/False.
//		a. Defaults to True, Always use True. If you want to use a stationary Service Station use the main script NEKY_ServiceStation.sqf.
//		b. False, when using NEKY_ServiceStation.sqf.
//	4. OPTIONAL: Objects to scan for, an array of strings that will scan for types of vehicles ( https://community.bistudio.com/wiki/nearestObjects ).
//		a. This decides what "TYPES" of vehicles the Service Station will look for/work with. ["CAR","AIR","PLANE","HELICOPTER","TANK"] are some examples.
//		b. Defaults to all land vehicles and all aerial vehicles.
//
//////////////
//	How To
//////////////
//	
//	1.
//	2. Place an object or vehicle that you want to be the Mobile Service Station (Vehicle Ammo Crate for slingloading or any truck for a vehicle).
//	3. Modify the code to your liking.
//	4. Place the code in the init line of the object or vehicle you want to be the Mobile Service Station.
//	
//	Note: If you want to make a stationary Service Station look in to NEKY_ServiceStation.sqf.
//	
///////////////
//	Examples:
///////////////
//	null = [This, nil, True, ["LandVehicle","AIR"]] ExecVM "Scripts\NEKY_ServiceStation\NEKY_MobileSS.sqf";
//	null = [RepairTruck, 15, True, ["LandVehicle"]] ExecVM "Scripts\NEKY_ServiceStation\NEKY_MobileSS.sqf";
//	null = [This, nil] ExecVM "Scripts\NEKY_ServiceStation\NEKY_MobileSS.sqf";
//	null = [This] ExecVM "Scripts\NEKY_ServiceStation\NEKY_MobileSS.sqf";
///////////////
///////////////
//	Made by NeKo-ArroW with help from GuzzenVonLidl
//	Thanks to Raptor for helping me out testing this on dedicated server
//	Version 2.0
///////////////

Private ["_this","_Object","_x","_Params","_MRadius","_Condition","_IsMSS"];

#include "NEKY_Settings.sqf"

_Object = [_This, 0, ObjNull, [ObjNull]] call BIS_FNC_Param;
_Mradius = [_This, 1, _MRadius, [0]] call BIS_FNC_Param;
_IsMSS = [_This, 2, true, [true]] call BIS_FNC_Param;
_Find = [_This, 3, ["LandVehicle","AIR"], [[]]] call BIS_FNC_Param;

_Object addAction ["<t color='#00FF00'>Activate Service Station</t>",
{
	_Params = [_This, 3] call BIS_fnc_Param;
	_Object = [_Params, 0] call BIS_fnc_ParamIn;
	_MRadius = [_Params, 1] call BIS_fnc_ParamIn;
	_IsMSS = [_Params, 2] call BIS_fnc_ParamIn;
	_Find = [_Params, 3] call BIS_FNC_ParamIn;
	
	Hint "Service Station Activated.";
	[[[_Object,_MRadius,_IsMSS,_Find], {_This ExecVM "Scripts\NEKY_ServiceStation\NEKY_ServiceStation.sqf"}], "BIS_FNC_SPAWN", false] call BIS_FNC_MP;
	
	[[[_Object,_MRadius,_IsMSS,_Find],
	{	
		_Object = (_This select 0);
		_MRadius = (_This select 1);
		_IsMSS = (_This select 2);
		_Find = (_This select 3);
		
		removeAllActions _Object; 		
		sleep 10;
		
		_Object addAction ["<t color='#FF0000'>Deactivate Service Station</t>",
		{
			_Params = [_This, 3] call BIS_fnc_Param;
			_Object = [_Params, 0] call BIS_fnc_ParamIn;
			_MRadius = [_Params, 1] call BIS_FNC_ParamIn;
			_IsMSS = [_Params, 2] call BIS_fnc_ParamIn;
			_Find = [_Params, 3] call BIS_FNC_ParamIn;
		
			Hint "Service Station Deactivated.";
			[[[_Object],{removeAllActions (_This select 0)}], "BIS_Fnc_Spawn", True] Call BIS_fnc_MP;
			[[[_Object],{NEKY_ServiceStations deleteAt (NEKY_ServiceStations find (_This select 0)); PublicVariable "NEKY_ServiceStations"}], "BIS_FNC_SPAWN", false] call BIS_FNC_MP;
			
			[[[_Object,_MRadius,_IsMSS,_Find],{sleep 10; _This execVM "Scripts\NEKY_ServiceStation\NEKY_MobileSS.sqf"}], "BIS_Fnc_Spawn", True] Call BIS_fnc_MP;
		},[_Object,_MRadius,_IsMSS,_Find],11,false,true];
	}], "BIS_Fnc_Spawn", True] call BIS_fnc_MP;	
},[_Object,_MRadius,_IsMSS,_Find],4,false,true];

