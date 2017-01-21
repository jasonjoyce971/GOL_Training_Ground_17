//      Use the script by entering:
//		["<FACTION>",(OPTIONAL)"FirstMarker",(OPTIONAL)"LastMarker",Laptop,Name,"GlobalVariable"] ExecVM "Scripts\NEKY_Spawns\NEKY_VehicleSpawn.sqf";
//
//		Examples:
//		["NATO"] ExecVM "Scripts\NEKY_Spawns\NEKY_VehicleSpawn.sqf";
//		null = ["NATO","1010","1025"] execVM "Scripts\NEKY_Spawns\NEKY_VehicleSpawn.sqf";
//
//		1. Faction, "NATO","CSAT","AAF"
//		2. (OPTIONAL) FirstMarker, The marker it's gonna start counting from.
//		3. (OPTIONAL) LastMarker, The marker it's gonna stop counting at.
//		4. Laptop name for an addaction for deleting the units.
//
//		When entering First and Last marker, make sure to enter "1###" even if you only mean to spawn a vehicle at marker number "2234".
//		The script will be counting from 1000 and up until it reaches a number which has no marker.
//		If you enter First and Last marker. Entering "1020" in first marker will make it count from "1020" and up to last marker.
//		If FirstMarker is specified but not LastMarker, it will count from FirstMarker up to 1999 which is the maximum number it will count.
//
//		If there's a gap in between markers, the script will stop counting.
//		Example: 1000, 1001, 1002,1004,1005,1006,1007,1009,1010.  The script will not count anything after 1002 because it is not defined.
//		If you enter "FirstMarker" and "LastMarker". then you can start counting from 1004 and it will count up to the next gap. in this case, 1007.	
//
//		Script Made by NeKo-ArroW with the assistance of GuzzenVonLidl

Private ["_Name","_Global","_Array","_Actions","_LastMarkerNumber","_IndexMax","_LastMarker","_FirstMarker","_Marker","_faction","_Index","_Vehicles","_NumberOfVehicles","_dir","_MarkerIndex","_TypeIndex","_StopCounting","_Veh1","_Veh2","_Veh3","_Veh4","_Veh5","_Veh6","_Veh7","_Veh8","_Veh9","_Veh10","_Veh11","_Veh12","_Veh13","_Veh14","_Veh15","_Veh16","_Veh17","_Veh18","_Veh19","_Veh20","_Veh21","_Veh22","_Veh23","_Veh24","_Veh25","_Veh26","_Veh27","_Veh28","_Veh29"];

NEKY_VehicleSpawn = False;
PublicVariable "NEKY_VehicleSpawn";

_Faction = [_this, 0, "", [""]] call BIS_fnc_Param;
_FirstMarker = [_this, 1, "1000",[""]] call BIS_fnc_Param;
_LastMarker = [_this, 2, "1999",[""]] call BIS_fnc_Param;
_Laptop = [_this, 3, ObjNull,[ObjNull]] call BIS_fnc_Param;
_Name = [_this, 4, "",[""]] call BIS_fnc_Param;
_Global = (_This select 5);
_Array = [];

if !(isServer) exitWith {};

///////////////////////////////
//	You can edit stuff below //
///////////////////////////////

// Make sure to use "_veh" instead of "this" in the code.

NEKY_SelectInit = 0;		// Select whether the "overall" init line will be used or the vehicle specified will be used. 0 = Overall init, 1 = Specified Init.

NEKY_VehOverallInit = {clearmagazinecargoglobal _veh; clearitemcargoglobal _veh; clearweaponcargoglobal _veh;};

NEKY_Veh1Init = {clearitemcargoglobal _veh};
NEKY_Veh2Init = {clearweaponcargoglobal _veh};
NEKY_Veh3Init = {};
NEKY_Veh4Init = {};
NEKY_Veh5Init = {};
NEKY_Veh6Init = {};
NEKY_Veh7Init = {};
NEKY_Veh8Init = {};
NEKY_Veh9Init = {};
NEKY_Veh10Init = {};
NEKY_Veh11Init = {};
NEKY_Veh12Init = {};
NEKY_Veh13Init = {};
NEKY_Veh14Init = {};
NEKY_Veh15Init = {};
NEKY_Veh16Init = {};
NEKY_Veh17Init = {};
NEKY_Veh18Init = {};
NEKY_Veh19Init = {};
NEKY_Veh20Init = {};
NEKY_Veh21Init = {};
NEKY_Veh22Init = {};
NEKY_Veh23Init = {};
NEKY_Veh24Init = {};
NEKY_Veh25Init = {};
NEKY_Veh26Init = {};
NEKY_Veh27Init = {};
NEKY_Veh28Init = {};
NEKY_Veh29Init = {};

//////////////////////////////
// You can edit stuff above //
//////////////////////////////

NEKY_AdaptableVehiclesINITS = [];

for [{_i=1},{_i<=29},{_i=_i+1}] do {
Call Compile format ["NEKY_AdaptableVehiclesINITS pushBack NEKY_Veh%1Init;", _i];
};

[] call compile preprocessFileLineNumbers ("Scripts\NEKY_Spawns\NEKY_Factions\" + _Faction +".sqf");

_Vehicles = [];
for [{_i=1},{_i<=29},{_i=_i+1}] do 
{
	Call Compile format ["_Vehicles pushBack _Veh%1;", _i];
};

// Variables for counting
_NumberOfVehicles = [];
_Index = 0;

if (isNil "_FirstMarker") then {_MarkerIndex = 1000; _IndexMax = 1000; _Marker = "1000";} else {_MarkerIndex = ParseNumber _FirstMarker; _Marker = Format ["%1",_MarkerIndex]};
if (isNil "_LastMarker") then {_StopCounting = 30000} else {_StopCounting = 30000; _LastMarkerNumber = ParseNumber _LastMarker; _IndexMax = _LastMarkerNumber + 1 - _MarkerIndex};

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
if (_IndexMax == 1000) then {_MarkerIndex = 1000; _Marker = "1000"} else {_MarkerIndex = ParseNumber _FirstMarker; _Marker = Format ["%1",_MarkerIndex]};
_TypeIndex = 0;

// Spawn Vehicle Code
for "_i" from 1 to (count _NumberOfVehicles) do
{
	for "_i" from 1 to (_NumberOfVehicles select _TypeIndex) do 
	{
		_veh = Createvehicle [((_Vehicles select _TypeIndex) call BIS_fnc_SelectRandom), [0,0,1000],[],0,"CAN_COLLIDE"];
		_dir = markerDir _Marker;
		_veh setDir _dir;
		if (_veh isKindOf "Ship") then
		{
		_veh setposASL [getmarkerpos _Marker select 0, getmarkerpos _Marker Select 1, 0.1];
		} else
		{
		_veh setposATL [getmarkerpos _Marker select 0, getmarkerpos _Marker Select 1, 0.1];
		_veh setVectorUp surfaceNormal position _veh;
		};
		
		if (NEKY_SelectInit == 0) then {call NEKY_VehOverallInit} else {call (NEKY_AdaptableVehiclesINITS select _TypeIndex)};
		
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
	[[[_Laptop,_Name,_Array,_Firstmarker,_LastMarker,_Global],
	{		
		Private ["_NEKY","_Actions","_Global"];
		
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
		
			[_Array] execVM "Scripts\NEKY_Spawns\NEKY_DeleteSpawn.sqf";
			[[[_Name,_Laptop,_FirstMarker,_LastMarker,_Global], {[(_this select 0),(_this select 1),(_this select 2),(_this select 3),"",(_This select 4)] Call NEKY_fnc_HandleVehicles;}], "BIS_fnc_Spawn",true,false] call BIS_fnc_MP;
			[[[_Laptop,_Global],{ call compile format ["%1 removeAction %2;",(_this select 0),(_this select 1)];}], "BIS_fnc_Spawn", true,false] call BIS_fnc_MP;
		},[(_this select 2), (_this select 0),(_this select 1),(_This select 3),(_this select 4),_Actions,(_This select 5)]]; 
		Call Compile Format ["%1 = %2;",(_This select 5),_NEKY];
	}], "BIS_fnc_Spawn",true,false] call BIS_fnc_MP;
};

NEKY_VehicleSpawn = True;
PublicVariable "NEKY_VehicleSpawn";