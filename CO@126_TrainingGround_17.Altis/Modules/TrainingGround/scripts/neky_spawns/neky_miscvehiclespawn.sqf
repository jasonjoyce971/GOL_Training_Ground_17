//      Use the script by entering:
//		[(OPTIONAL)"FirstMarker",(OPTIONAL)"LastMarker",Laptop,"Name","GlobalVariable"] ExecVM "Scripts\NEKY_Spawns\NEKY_MiscVehicleSpawn.sqf";
//
//		Examples:
//		[] ExecVM "Scripts\NEKY_Spawns\NEKY_MiscVehicleSpawn.sqf";
//		null = ["40010","40025"] execVM "Scripts\NEKY_Spawns\NEKY_MiscVehicleSpawn.sqf";
//
//		1. (OPTIONAL) FirstMarker, The marker it's gonna start counting from.
//		2. (OPTIONAL) LastMarker, The marker it's gonna stop counting at.
//
//		When entering First and Last marker, make sure to enter "40###" even if you only mean to spawn a vehicle at marker number "42234".
//		The script will be counting from 40000 and up until it reaches a number which has no marker.
//		If you enter First and Last marker. Entering "40020" in first marker will make it count from "1020" and up to last marker.
//		If FirstMarker is specified but not LastMarker, it will count from FirstMarker up to 1999 which is the maximum number it will count.
//
//		If there's a gap in between markers, the script will stop counting.
//		Example: 40000, 40001, 40002,40004,40005,40006,40007,40009,40010.  The script will not count anything after 40002 because it is not defined.
//		If you enter "FirstMarker" and "LastMarker". then you can start counting from 40004 and it will count up to the next gap. in this case, 1007.	
//		["FirstMarker","LastMarker"] execVM "Scripts\NEKY_Spawns\NEKY_MiscVehicleSpawn.sqf";
//
//		Script Made by NeKo-ArroW with the assistance of GuzzenVonLidl

/*
Vehicles marker numbers:

Hatchback 											= 40000 - 40999
Hatchback (Sport)									= 41000 - 41999
SUV													= 42000 - 42999
Offroad (Civilian)									= 43000 - 43999
Offroad (Armed, FIA)								= 44000 - 44999
Truck (Truck / Boxer)								= 45000 - 45999
									= 46000 - 46999
									= 47000 - 47999
									= 48000 - 48999
									= 49000 - 49999
													= 50000 - 50999
													= 51000 - 51999
													= 52000 - 52999
													= 53000 - 53999
													= 54000 - 54999
													= 55000 - 55999
													= 56000 - 56999
													= 57000 - 57999
													= 58000 - 58999
													
*/

Private ["_LastMarkerNumber","_Global","_IndexMax","_LastMarker","_FirstMarker","_veh","_Marker","_faction","_Index","_Vehicles","_NumberOfVehicles","_dir","_MarkerIndex","_TypeIndex","_StopCounting","_veh1","_veh2","_veh3","_veh4","_veh5","_veh6","_veh7","_veh8","_veh9","_veh10","_veh11","_veh12","_veh13","_veh14","_veh15"];

NEKY_MiscVehicleSpawn = False;
PublicVariable "NEKY_MiscVehicleSpawn";

if !(isServer) exitwith {};

_FirstMarker = [_this, 0, "40000",[""]] call BIS_fnc_Param;
_LastMarker = [_this, 1, "40999",[""]] call BIS_fnc_Param;
_Laptop = [_this, 2, ObjNull,[ObjNull]] call BIS_fnc_Param;
_Name = [_this, 3, "",[""]] call BIS_fnc_Param;
_Global = [_This, 4, "", [""]] call BIS_fnc_Param;
_Vehicles = [];
_Array = [];

// Vehicle Definitions
_veh1 = ["C_Hatchback_01_F"];
_veh2 = ["C_Hatchback_01_sport_F"];
_veh3 = ["C_SUV_01_F"];
_veh4 = ["C_Offroad_01_F"];
_veh5 = ["B_G_Offroad_01_armed_F"];
_veh6 = ["C_Van_01_transport_F","C_Van_01_box_F"];
_veh7 = [""];
_veh8 = [""];
_veh9 = [""];
_veh10 = [""];
_veh11 = [""];
_veh12 = [""];
_veh13 = [""];
_veh14 = [""];
_veh15 = [""];
_veh16 = [""];
_veh17 = [""];
_veh18 = [""];
_veh19 = [""];
_veh20 = [""];
_veh21 = [""];
_veh22 = [""];
_veh23 = [""];

for [{_i=1},{_i<=23},{_i=_i+1}] do 
{
	Call Compile format ["_Vehicles pushBack _Veh%1;", _i];
};

// Variables for counting
_NumberOfVehicles = [];
_Index = 0;

if (isNil "_FirstMarker") then {_MarkerIndex = 40000; _IndexMax = 1000; _Marker = "40000";} else {_MarkerIndex = ParseNumber _FirstMarker; _Marker = Format ["%1",_MarkerIndex]};
if (isNil "_LastMarker") then {_StopCounting = 50000} else {_StopCounting = 50000; _LastMarkerNumber = ParseNumber _LastMarker; _IndexMax = _LastMarkerNumber + 1 - _MarkerIndex};

// Count Markers (Number of all vehicles to spawn)
While {_MarkerIndex < _StopCounting} do
{
	_TypeIndex = 0;
	
	if ((getMarkerType _Marker == "") or (_Index == _IndexMax)) then 
	{
		_NumberOfVehicles pushBack _Index;
		_MarkerIndex = _MarkerIndex - _Index;
		_MarkerIndex = _MarkerIndex + 1000;
		_Marker = Format ["%1",_MarkerIndex];
		_TypeIndex = _TypeIndex +1;
		_Index = 0;
		} else {
		_MarkerIndex = _MarkerIndex +1;
		_Marker = Format ["%1",_MarkerIndex];
		_Index = _Index +1;		
	};
};

// Reset Index
if (_IndexMax == 1000) then {_MarkerIndex = 40000; _Marker = "40000"} else {_MarkerIndex = ParseNumber _FirstMarker; _Marker = Format ["%1",_MarkerIndex]};
_TypeIndex = 0;


// Spawn Vehicle Code
for "_i" from 1 to (count _NumberOfVehicles) do
{
	for "_i" from 1 to (_NumberOfVehicles select _TypeIndex) do 
	{
		_veh = Createvehicle [((_Vehicles select _TypeIndex) call BIS_fnc_SelectRandom), [0,0,2000],[],0,"CAN_COLLIDE"];
		_dir = markerDir _Marker;
		_veh setDir _dir;
		_veh SetPosATL [getmarkerpos _Marker select 0, getmarkerpos _Marker Select 1, 0.1];
		
		// Removal of vehicle when destroyed or abandoned
		[_Veh,_Marker] spawn 
		{	
			Private ["_veh","_Marker"];
			_veh = _this select 0;
			_Marker = _this select 1;
		
			WaitUntil {sleep 60; ((!Alive _veh or (((_veh distance (getmarkerpos _Marker) > 150) && ({alive _x} count (crew _veh) <= 0)))) && ({(_veh distance _x) < 300} count allunits <= 0))};	
			DeleteVehicle _veh;
		};
		_Index = _Index +1;
		_MarkerIndex = _MarkerIndex +1;
		_Marker = Format ["%1",_MarkerIndex];
		sleep 0.5;
		
		_Array pushBack _Veh;
	};
	_MarkerIndex = _MarkerIndex - _Index;
	_MarkerIndex = _MarkerIndex + 1000;
	_Marker = Format ["%1",_MarkerIndex];
	_Index = 0;
	_TypeIndex = _TypeIndex +1;
};

// Action Handling
if (!IsNull _Laptop) then 
{
	_Actions = [];
	[[[_Laptop,_Name,_Array,_Firstmarker,_LastMarker,_Actions,_Global],
	{
		Private "_NEKY";
		_NEKY = (_this select 0) addAction [format ["<t color='#FF8000'>Remove %1</t>",(_this select 1)],
		{
			_Params = [_this, 3] call BIS_fnc_param;
			_Array = [_Params, 0] call BIS_fnc_ParamIn;
			_Laptop = [_Params, 1] call BIS_fnc_ParamIn;
			_Name = [_Params, 2] call BIS_fnc_ParamIn;
			_FirstMarker = [_Params, 3] call BIS_fnc_ParamIn;
			_LastMarker = [_Params, 4] call BIS_fnc_ParamIn;
			_Actions = [_Params, 5] call BIS_fnc_ParamIn;
			_Global = [_Params, 6] call BIS_fnc_ParamIn;
		
			[_Array] execVM "Modules\TrainingGround\scripts\NEKY_Spawns\NEKY_DeleteSpawn.sqf";
			[[[_Laptop,_Global],{ call compile format ["%1 removeAction %2;",(_this select 0),(_this select 1)];}], "BIS_fnc_Spawn", true,false] call BIS_fnc_MP;
			[[[_Name,_Laptop,_FirstMarker,_LastMarker,"CIVILIAN",_Global],{ [(_This select 0), (_This select 1), (_This select 2), (_This select 3), (_This select 4), (_This select 5)] Call GW_TrainingGround_fnc_HandleVehicles; }], "BIS_FNC_SPAWN", True] Call BIS_Fnc_MP;
		},[(_this select 2), (_this select 0),(_this select 1),(_This select 3),(_this select 4),(_this select 5),(_This select 6)]]; 
		Call Compile Format ["%1 = %2;",(_This select 6),_NEKY];
	}], "BIS_fnc_Spawn",true,false] call BIS_fnc_MP;
};

NEKY_MiscVehicleSpawn = True;
PublicVariable "NEKY_MiscVehicleSpawn";