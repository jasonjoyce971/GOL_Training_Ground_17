Private ["_Laptop","_SpawnMarkers","_Waypoints","_NumberOfAI","_Delay","_Name","_Radius","_Movement","_Factions","_Height","_Index","_Actions","_NEKY","_Params","_Colors","_NEKY2","_Index"];

// [Laptop,engage,["SpawnMarkers"],["Waypoints"],number of AI,delay,"Name",Radius,skill,Movement,Height] call NEKY_fnc_HandleVR;
//
// 

_Laptop = [_this, 0, objNull, [ObjNull]] call BIS_fnc_Param;
_Engage = [_this, 1, false, [true]] call BIS_fnc_param;
_SpawnMarkers = [_this, 2, [""],[[""]]] call BIS_fnc_Param;
_Waypoints = [_this, 3, [""],[[""]]] call BIS_fnc_Param;
_NumberOfAI = [_this, 4, 0, [0]] call BIS_fnc_Param;
_Delay = [_this, 5, 5, [0]] call BIS_fnc_Param;
_Name = [_this, 6, "", [""]] call BIS_fnc_Param;
_Radius = [_This, 7, 0, [0]] call BIS_fnc_Param;
_Skill = [_this, 8, 0.1, [0]] call BIS_fnc_Param;
_Movement = [_This, 9, true, [true]] call BIS_fnc_Param;
_Height = [_this, 10, 1.3, [0]] call BIS_fnc_Param;
_Random = [_this, 11, 0, [0]] call BIS_fnc_Param;
_Index = 0;
_Actions = [];

_NEKY =	_Laptop addAction [format ["<t color='#00FF00'>VR %1</t>",_Name],
	{
		_Laptop = [_this, 0] call BIS_fnc_Param;
		_params = [_this, 3] call BIS_fnc_Param;
		_SpawnMarkers = [_Params, 0] call BIS_fnc_paramIn;
		_Waypoints = [_Params, 1] call BIS_fnc_paramIn;
		_Index = [_Params, 2] call BIS_fnc_ParamIn;
		_Actions = [_Params, 3] call BIS_fnc_ParamIn;
		_NumberOfAI = [_Params, 4] call BIS_fnc_paramIn;
		_Delay = [_Params, 5] call BIS_fnc_ParamIn;
		_Radius = [_Params, 6] call BIS_fnc_paramIn;
		_Movement = [_Params, 7] call BIS_fnc_paramIn;
		_Height = [_Params, 8] call BIS_fnc_ParamIn;
		_Engage = [_Params, 9] call BIS_fnc_ParamIn;
		_Random = [_Params, 10] call BIS_fnc_paramIn;
		_Skill = [_params, 11] call BIS_fnc_ParamIn;
		
		_Factions = ["NATO","CSAT","AAF"];
		_Colors = ["#0040FF","#B40404","#01DF01"];
		
		for "_i" from 1 to count _Factions do 
		{
			_NEKY2 = _Laptop addAction [format ["<t color='%1'>%2</t>",_Colors select _Index,_Factions select _Index],
			{
				_Laptop = [_this, 0] call BIS_fnc_Param;
				_params = [_this, 3] call BIS_fnc_Param;
				_SpawnMarkers = [_Params, 0] call BIS_fnc_paramIn;
				_Waypoints = [_Params, 1] call BIS_fnc_paramIn;
				_Index = [_Params, 2] call BIS_fnc_ParamIn;
				_Actions = [_Params, 3] call BIS_fnc_ParamIn;
				_NumberOfAI = [_Params, 4] call BIS_fnc_paramIn;
				_Delay = [_Params, 5] call BIS_fnc_ParamIn;
				_Radius = [_Params, 6] call BIS_fnc_paramIn;
				_Movement = [_Params, 7] call BIS_fnc_paramIn;
				_Height = [_Params, 8] call BIS_fnc_ParamIn;
				_Engage = [_Params, 9] call BIS_fnc_paramIn;
				_Random = [_Params, 10] call BIS_fnc_ParamIn;
				_Skill = [_params, 11] call BIS_fnc_ParamIn;
				
				SystemChat "VR Units spawned";
				_Factions = ["NATO","CSAT","AAF"];
				[{_Laptop removeaction _x} forEach _Actions, "BIS_fnc_Spawn",false,false] call BIS_fnc_MP;
			
				[[[_Factions select _Index, _NumberOfAI,_Delay,_SpawnMarkers,_Waypoints,_Radius,_Movement,_Height,_Engage,_Random,_Skill],{[(_this select 8),(_this select 0),(_this select 1),(_this select 2),(_this select 3),(_this select 4),(_this select 5),(_this select 10),(_this select 6),(_this select 7),(_this select 9)] execVM "Scripts\NEKY_Spawns\NEKY_VRSpawn.sqf"}], "BIS_fnc_Spawn", false,false] call BIS_fnc_MP;
			},[_SpawnMarkers,_Waypoints,_Index,_Actions,_NumberOfAI,_Delay,_Radius,_Movement,_Height,_Engage,_Random,_Skill],5,false,true];
		_Index = _Index +1;
		_Actions PushBack _NEKY2;
		};
	},[_SpawnMarkers,_Waypoints,_Index,_Actions,_NumberOfAI,_Delay,_Radius,_Movement,_Height,_Engage,_Random,_Skill],6,false,false];
