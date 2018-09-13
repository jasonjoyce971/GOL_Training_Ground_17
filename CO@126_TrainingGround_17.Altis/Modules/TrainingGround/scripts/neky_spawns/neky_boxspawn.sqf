//      Use the script by entering:
//		[(OPTIONAL)"FirstMarker",(OPTIONAL)"LastMarker",Laptop,Name,"<FACTION>","GlobalVariable"] ExecVM "Scripts\NEKY_Spawns\NEKY_BoxSpawn.sqf";
//
//		Examples:
//		["WEST"] ExecVM "Scripts\NEKY_Spawns\NEKY_BoxSpawn.sqf";
//		null = ["WEST","1010","1025"] execVM "Scripts\NEKY_Spawns\NEKY_BoxSpawn.sqf";
//
//		1. Faction, "WEST","EAST","INDEP"
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

/*

Big Box															= 980000 - 980999
Attachments Box													= 981000 - 981999
Misc Box														= 982000 - 982999
Medical Box														= 983000 - 983999
Small Box	(ammo)												= 984000 - 984999
Demo Box														= 985000 - 985999
Grenade															= 986000 - 986999
AT Box															= 987000 - 987999
Small Arms Box													= 988000 - 988999
203 Box															= 989000 - 989999

[980300, 980349,Laptop24,F.O.B Cluster Munitions,BLUFOR,BCluster],"Scripts\NEKY_Spawns\NEKY_BoxSpawn.sqf"]

*/

Private ["_Global","_Name","_Side","_box","_NEKY","_Array","_Actions","_LastMarkerNumber","_IndexMax","_LastMarker","_FirstMarker","_Marker","_faction","_Index","_Boxes","_NumberOfBoxes","_dir","_MarkerIndex","_TypeIndex","_StopCounting","_Box1","_Box2","_Box3","_Box4","_Box5","_Box6","_Box7","_Box8","_Box9","_Box10","_Box11","_Box12","_Box13","_Box14","_Box15","_Box16","_Box17","_Box18","_Box19","_Box20","_Box21","_Box22","_Box23","_Box24","_Box25","_Box26","_Box27","_Box28","_Box29"];

NEKY_BoxSpawn = False;
PublicVariable "NEKY_BoxSpawn";

_FirstMarker = [_this, 0, "998000",[""]] call BIS_fnc_Param;
_LastMarker = [_this, 1, "998099",[""]] call BIS_fnc_Param;
_Laptop = [_this, 2, ObjNull,[ObjNull]] call BIS_fnc_Param;
_Name = [_this, 3, "",[""]] call BIS_fnc_Param;
_Side = [_this, 4, "east",[""]] call BIS_fnc_Param;
_Global = [_This, 5, "", [""]] call BIS_fnc_Param;
_Array = [];

if !(isServer) exitWith {};

NEKY_CLEANGROUND = 
{
	Private "_Box";
	_Box = _This select 0;
	[[[_Box], 
	{
		_Box = _This select 0;
		_Box addAction ["<t color='#FF8000'>Clean ground around box</t>",
		{
			_Box = _This select 3 select 0;
			[[[_Box],
			{
				_Box = _This select 0;
				{ deleteVehicle _x; } forEach nearestObjects [getpos _Box,["WeaponHolder","GroundWeaponHolder"],5];
			}], "BIS_FNC_SPAWN", false] call BIS_FNC_MP;
			SystemChat "Cleaning up your mess...";
		}, [_Box], 0.9, false, true, "", "((_target distance _this) < 5)"];
	}], "BIS_FNC_SPAWN", true] call BIS_FNC_MP;
};

///////////////////////////////
//	You can edit stuff below //
///////////////////////////////

// Make sure to use "_Box" instead of "this" in the code.
NEKY_Box1Init = {[_box,"gear_box",[true,true]] call GOL_Fnc_GearHandler; [_Box] call NEKY_CLEANGROUND;};
NEKY_Box2Init = {[_box,"a_Box",[true,true]] call GOL_Fnc_GearHandler; [_Box] call NEKY_CLEANGROUND;};
NEKY_Box3Init = {[_box,"Misc_Box",[true,true]] call GOL_Fnc_GearHandler; [_Box] call NEKY_CLEANGROUND;};
NEKY_Box4Init = {[_box,"Med_Box",[true,true]] call GOL_Fnc_GearHandler; [_Box] call NEKY_CLEANGROUND;};
NEKY_Box5Init = {[_box,["small_box",_Side],[true,true]] call GOL_Fnc_GearHandler; [_Box] call NEKY_CLEANGROUND;};
NEKY_Box6Init = {[_box,"demo_box",[true,true]] call GOL_Fnc_GearHandler; [_Box] call NEKY_CLEANGROUND;};
NEKY_Box7Init = {[_box,"grenade_box",[true,true]] call GOL_Fnc_GearHandler; [_Box] call NEKY_CLEANGROUND;};
NEKY_Box8Init = {[_box,"at_box",[true,true]] call GOL_Fnc_GearHandler; [_Box] call NEKY_CLEANGROUND;};
NEKY_Box9Init = {[_box,"smallarms_box",[true,true]] call GOL_Fnc_GearHandler; [_Box] call NEKY_CLEANGROUND;};
// NEKY_Box10Init = {[_box] execVM "Scripts\StaticMunitions.sqf"; [_Box] call NEKY_CLEANGROUND;};

//////////////////////////////
// You can edit stuff above //
//////////////////////////////

NEKY_AdaptableBoxesINITS = [];

for [{_i=1},{_i<=9},{_i=_i+1}] do {
Call Compile format ["NEKY_AdaptableBoxesINITS pushBack NEKY_Box%1Init;", _i];
};

_Box1 = ["B_supplyCrate_F"];
_Box2 = ["Box_NATO_WpsSpecial_F"];
_Box3 = ["Box_NATO_Support_F"];
_Box4 = ["Box_NATO_Support_F"];
_Box5 = ["Box_NATO_Ammo_F"];
_Box6 = ["Box_NATO_AmmoOrd_F"];
_Box7 = ["Box_NATO_Ammo_F"];
_Box8 = ["B_supplyCrate_F"];
_Box9 = ["Box_NATO_Wps_F"];
_Box10 = ["B_supplyCrate_F"];

_Boxes = [];
for [{_i=1},{_i<=10},{_i=_i+1}] do 
{
	Call Compile format ["_Boxes pushBack _Box%1;", _i];
};

// Variables for counting
_NumberOfBoxes = [];
_Index = 0;

if (isNil "_FirstMarker") then {_MarkerIndex = 980000; _IndexMax = 1000; _Marker = "980999";} else {_MarkerIndex = ParseNumber _FirstMarker; _Marker = Format ["%1",_MarkerIndex]};
if (isNil "_LastMarker") then {_StopCounting = 1000000} else {_StopCounting = 1000000; _LastMarkerNumber = ParseNumber _LastMarker; _IndexMax = _LastMarkerNumber + 1 - _MarkerIndex};

// Count Markers (Number of all vehicles to spawn)
While {_MarkerIndex < _StopCounting} do
{
	_TypeIndex = 0;
	
	if ((getMarkerType _Marker == "") or (_Index == _IndexMax)) then 
	{
		_NumberOfBoxes pushBack _Index;
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
if (_IndexMax == 1000) then {_MarkerIndex = 980000; _Marker = "980000"} else {_MarkerIndex = ParseNumber _FirstMarker; _Marker = Format ["%1",_MarkerIndex]};
_TypeIndex = 0;

// Spawn Vehicle Code
for "_i" from 1 to (count _NumberOfBoxes) do
{
	for "_i" from 1 to (_NumberOfBoxes select _TypeIndex) do 
	{
		_Box = Createvehicle [((_Boxes select _TypeIndex) call BIS_fnc_SelectRandom), [0,0,1000],[],0,"CAN_COLLIDE"];
		_dir = markerDir _Marker;
		_Box setDir _dir;
		_Box setposATL [getmarkerpos _Marker select 0, getmarkerpos _Marker Select 1, 0.1];
		_Box setVectorUp surfaceNormal position _Box;
		
		call (NEKY_AdaptableBoxesINITS select _TypeIndex);
		
		// Removal of vehicle when destroyed or abandoned
		[_Box,_Marker] spawn 
		{	
			Private ["_Box","_Marker"];
			_Box = _this select 0;
			_Marker = _this select 1;
		
			WaitUntil {sleep 60; ((!Alive _Box or (((_Box distance (getmarkerpos _Marker) > 150) && ({alive _x} count (crew _Box) <= 0)))) && ({(_Box distance _x) < 300} count allunits <= 0))};	
			DeleteVehicle _Box;
		};
		_Index = _Index +1;
		_MarkerIndex = _MarkerIndex +1;
		_Marker = Format ["%1",_MarkerIndex];
		sleep 0.5;
		
		_Array pushBack _Box;
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
			[[[_Name,_Laptop,_FirstMarker,_LastMarker,_Global], {[(_this select 0),(_this select 1),(_this select 2),(_this select 3),(_This select 4)] Call NEKY_fnc_HandleBoxes;}], "BIS_fnc_Spawn",true,false] call BIS_fnc_MP;
			[[[_Laptop,_Global],{ call compile format ["%1 removeAction %2;",(_this select 0),(_this select 1)];}], "BIS_fnc_Spawn", true,false] call BIS_fnc_MP;
		},[(_this select 2), (_this select 0),(_this select 1),(_This select 3),(_this select 4),_Actions,(_this select 5)]]; 
		Call Compile Format ["%1 = %2;",(_This select 5),_NEKY];
	}], "BIS_fnc_Spawn",true,false] call BIS_fnc_MP;
};

NEKY_BoxSpawn = True;
PublicVariable "NEKY_BoxSpawn";