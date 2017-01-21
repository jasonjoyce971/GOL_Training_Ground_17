// ["Name",Laptop,"FirstMarker","LastMarker","GlobalVariable"] Call NEKY_HandleBoxes;
// ["F.O.B Cluster Munitions",Laptop24,"980300","980349","BCluster"] Call NEKY_fnc_HandleBoxes;

Private ["_Name","_Laptop","_FirstMarker","_LastMarker","_Actions","_Params","_NEKY","_Index","_Factions","_Colors","_Global"];

_Name = [_this, 0, "", [""]] call BIS_fnc_Param;				//FOB Cluster
_Laptop = [_this, 1, ObjNull, [ObjNull]] call BIS_fnc_Param;	//Laptop24
_FirstMarker = [_this, 2, "", [""]] call BIS_fnc_Param;			//980300
_LastMarker = [_this, 3, "", [""]] call BIS_fnc_Param;			//980349
_Global = [_This, 4, "", [""]] call BIS_fnc_Param;				//BCluster

[[[_Name,_Laptop,_FirstMarker,_LastMarker,_Global], 
{
_Name = [_this, 0, "", [""]] call BIS_fnc_Param;
_Laptop = [_this, 1, ObjNull, [ObjNull]] call BIS_fnc_Param;
_FirstMarker = [_this, 2, "", [""]] call BIS_fnc_Param;
_LastMarker = [_this, 3, "", [""]] call BIS_fnc_Param;
_Global = [_This, 4, "", [""]] call BIS_fnc_Param;
_Actions = [];

_NEKY=	_Laptop addAction [format ["<t color='#00FF00'>Ready %1</t>",_Name], 
{
	_Laptop = [_this, 0] call BIS_fnc_Param;
	_Params = [_this, 3] call BIS_fnc_Param;
	_FirstMarker = [_Params,0] call BIS_Fnc_ParamIn;
	_LastMarker = [_Params,1] call BIS_Fnc_ParamIn;
	_Name = [_Params,2] call BIS_Fnc_ParamIn;
	_Actions = [_Params,3] call BIS_Fnc_ParamIn;
	_Global = [_Params,4] call BIS_fnc_ParamIn;

	_Factions = ["BLUFOR","OPFOR","INDEPENDENT"];
	_Colors = ["#0040FF","#B40404","#01DF01"];
	_Index = 0;
	
	for "_i" from 1 to (count _Factions) do
	{
		_NEKY2 = _Laptop addAction [format ["<t color='%1'>%2</t>",_Colors select _Index,_Factions select _Index],
		{		
			private ["_side","_Sides"];
			_Laptop = [_this, 0] call BIS_fnc_Param;
	
			_params = [_this, 3] call BIS_fnc_Param;
			_Name = [_Params, 0] call BIS_fnc_paramIn;
			_FirstMarker = [_params, 1] call BIS_fnc_paramIn;
			_LastMarker = [_params, 2] call BIS_fnc_paramIn;
			_Actions = [_Params, 3] call BIS_fnc_ParamIn;
			_Index = [_Params, 4] call BIS_Fnc_ParamIn;
			_Global = [_Params, 5] call BIS_fnc_ParamIn;
			
			_Sides = ["west","east","indep"];
			_Side = (_Sides select _Index);
				
			[format ["Preparing %1, please wait...",_Name],"SystemChat",nil,false,false] call BIS_fnc_MP;
			
			[[[_FirstMarker, _LastMarker,_Laptop,_Name,_Side,_Global],"Scripts\NEKY_Spawns\NEKY_BoxSpawn.sqf"], "BIS_fnc_ExecVM",false,false] call BIS_fnc_MP;
			NEKY_BoxSpawn = False;
			[[[_Actions,_Laptop],{{(_this select 1) removeAction _x} forEach (_this select 0)}], "BIS_fnc_Spawn" ,true, false] call BIS_fnc_MP;
			[[[_Laptop,_Global],{ Call Compile Format ["%1 removeAction %2%3",(_This select 0),(_This select 1),1] }], "BIS_FNC_SPAWN", True] Call BIS_Fnc_MP;
			waituntil {sleep 2; NEKY_BoxSpawn};
			[format ["Preparations for %1 are now complete.",_Name],"SystemChat",nil,false,false] call BIS_fnc_MP;
		},[_Name,_FirstMarker,_LastMarker,_Actions,_Index,_Global],5,false,true];
		_Actions PushBack _NEKY2;
		_Index = _Index +1;
	};
},[_FirstMarker,_LastMarker,_Name,_Actions,_Global],6,false,false];
call compile format ["%1%3 = %2;",_Global,_NEKY,1];
}], "BIS_FNC_SPAWN", player] call BIS_Fnc_MP;




