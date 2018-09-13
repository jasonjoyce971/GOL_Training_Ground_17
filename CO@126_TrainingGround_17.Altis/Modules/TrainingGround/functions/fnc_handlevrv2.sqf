// [Laptop,"Name",Zone] call NEKY_fnc_HandleVRv2;
//
// 

Private ["_Laptop","_Zone","_Name","_Factions","_Index","_Actions","_NEKY","_Colors","_NEKY2"];

_Laptop = [_this, 0, objNull, [ObjNull]] call BIS_fnc_Param;
_Name = [_this, 1, "", [""]] call BIS_fnc_Param;
_Zone = [_This, 2, 0, [0]] call BIS_FNC_Param;
_Actions = [];

_NEKY =	_Laptop addAction [format ["<t color='#00FF00'>AI %1</t>",_Name],
	{
		_Laptop = _This select 3 select 0;
		_Zone = _This select 3 select 1;
		_Actions = _This select 3 select 2;
		
		_Index = 0;
		_Factions = ["NATO","CSAT","AAF"];
		_Colors = ["#0040FF","#B40404","#01DF01"];
		
		for "_i" from 1 to count _Factions do 
		{
			_NEKY2 = _Laptop addAction [format ["<t color='%1'>  %2</t>",_Colors select _Index,_Factions select _Index],
			{
				_Laptop = _This select 3 select 0;
				_Zone = _This select 3 select 1;
				_Actions = _This select 3 select 2;
				_Index = _This select 3 select 3;
				
				_Factions = ["NATO","CSAT","AAF"];
				[{_Laptop removeaction _x} forEach _Actions, "BIS_fnc_Spawn",false,false] call BIS_fnc_MP;
				SystemChat "Preparing to spawn AI";
				
				WaitUntil {sleep 2 + (random 5); !(MissionNameSpace GetVariable ["Spawning",false])};
				
				//REPLACE SPAWN CODE:
				[[[(_Factions select _Index)], {_This call GOL_Fnc_EnemyFactions}], "BIS_FNC_SPAWN", False] call BIS_FNC_MP;
				sleep 1;
				SystemChat "Spawning AI";
				[[[_Zone],{[[(_This select 0)],GOL_Enemies,"spawn"] call GOL_fnc_RemoteExecuterHC}], "BIS_FNC_SPAWN", false] call BIS_FNC_MP;
				//
				
			},[_Laptop,_Zone,_Actions,_Index],0,false,true];
		_Index = _Index +1;
		_Actions PushBack _NEKY2;
		};
	},[_Laptop,_Zone,_Actions],0,false,false];
