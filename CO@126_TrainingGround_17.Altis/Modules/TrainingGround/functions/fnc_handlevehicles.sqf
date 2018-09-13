// ["Name",Laptop,"FirstMarker","LastMarker","Type","GlobalVariable"] Call NEKY_HandleVehicleSpawn;

Private ["_Name","_Laptop","_FirstMarker","_LastMarker","_Index","_Actions","_NEKY","_NEKY2","_Global","_Params","_Colors","_Type"];

//	#Include "Scripts\NEKY_Spawns\NEKY_Factions\Factions.sqf"

	_Name = [_this, 0, "", [""]] call BIS_fnc_Param;
	_Laptop = [_this, 1, ObjNull, [ObjNull]] call BIS_fnc_Param;
	_FirstMarker = [_this, 2, "", [""]] call BIS_fnc_Param;
	_LastMarker = [_this, 3, "", [""]] call BIS_fnc_Param;
	_Type = [_this, 4, "", [""]] call BIS_fnc_Param;
	_Global = [_This, 5, "", [""]] call BIS_fnc_Param;
	
[[[_Name,_Laptop,_FirstMarker,_LastMarker,_Type,_Global],
{
	_Name = _This select 0;
	_Name = [_this, 0, "", [""]] call BIS_fnc_Param;
	_Laptop = [_this, 1, ObjNull, [ObjNull]] call BIS_fnc_Param;
	_FirstMarker = [_this, 2, "", [""]] call BIS_fnc_Param;
	_LastMarker = [_this, 3, "", [""]] call BIS_fnc_Param;
	_Type = [_this, 4, "", [""]] call BIS_fnc_Param;
	_Global = [_This, 5, "", [""]] call BIS_fnc_Param;
	_Index = 0;
	_Actions = [];

_NEKY=	_Laptop addAction [format ["<t color='#00FF00'>Ready %1</t>",_Name], {
		_Laptop = [_this, 0] call BIS_fnc_Param;
		
		_params = [_this, 3] call BIS_fnc_Param;
		_Name = [_Params, 0] call BIS_fnc_paramIn;
		_FirstMarker = [_params, 1] call BIS_fnc_paramIn;
		_LastMarker = [_params, 2] call BIS_fnc_paramIn;
		_Index = [_Params, 3] call BIS_fnc_paramIn;
		_Actions = [_Params, 4] call BIS_fnc_ParamIn;
		_Type = [_Params, 5] call BIS_fnc_ParamIn;
		_Global = [_Params, 6] call BIS_fnc_ParamIn;
		
		Private ["_Factions","_Colors"];
		if (_Type == "") then {[] call compile preprocessFileLineNumbers ("Modules\TrainingGround\scripts\neky_spawns\neky_factions\factions.sqf");};
		if (_Type == "Civilian") then {_Factions = ["Miscellaneous Vehicles"]; _Colors = ["#F7FE2E"]};
		
		for "_i" from 1 to count _Factions do {
_NEKY2 =	_Laptop addAction [format ["<t color='%1'>%2</t>",_Colors select _Index,_Factions select _Index], {
				_Laptop = [_this, 0] call BIS_fnc_Param;
				_params = [_this, 3] call BIS_fnc_Param;
				_Name = [_Params, 0] call BIS_fnc_paramIn;
				_FirstMarker = [_params, 1] call BIS_fnc_paramIn;
				_LastMarker = [_params, 2] call BIS_fnc_paramIn;
				_Index = [_Params, 3] call BIS_fnc_paramIn;
				_Actions = [_Params, 4] call BIS_fnc_ParamIn;
				_Type = [_Params, 5] call BIS_fnc_ParamIn;
				_Global = [_Params, 6] call BIS_fnc_ParamIn;
				
				Private "_Factions";
				if (_Type == "") then {[] call compile preprocessFileLineNumbers ("Modules\TrainingGround\scripts\neky_spawns\neky_factions\factions.sqf");};
				if (_Type == "Civilian") then {_Factions = ["Miscellaneous Vehicles"]};
				[format ["Preparing %1, please wait...",_Name],"SystemChat",nil,false,false] call BIS_fnc_MP;
				
				if (_Type == "") then {[[[_Factions select _Index, _FirstMarker, _LastMarker,_Laptop,_Name,_Global],"Modules\TrainingGround\scripts\neky_spawns\neky_vehiclespawn.sqf"], "BIS_fnc_ExecVM",false,false] call BIS_fnc_MP; NEKY_VehicleSpawn = False;};
				if (_Type == "Civilian") then {[[[_FirstMarker, _LastMarker,_Laptop,_Name,_Global],"Modules\TrainingGround\scripts\neky_spawns\neky_miscvehiclespawn.sqf"], "BIS_fnc_ExecVM",false,false] call BIS_fnc_MP; NEKY_MiscVehicleSpawn = False;};
				
				[[[_Actions,_Laptop],{ {(_This select 1) removeAction _x} forEach (_This select 0);}], "BIS_fnc_Spawn" ,true, false] call BIS_fnc_MP;	
				[[[_Laptop,_Global],{ Call Compile Format ["%1 removeAction %2%3",(_This select 0),(_This select 1),1] }], "BIS_FNC_SPAWN", True] Call BIS_Fnc_MP;
				
				if (_Type == "") then {waituntil {sleep 2; NEKY_VehicleSpawn}};
				if (_Type == "Civilian") then {waitUntil {sleep 2; NEKY_MiscVehicleSpawn}};
				[format ["%1 are now Operational.",_Name],"SystemChat",nil,false,false] call BIS_fnc_MP;
			},[_Name,_FirstMarker,_LastMarker,_Index,_Actions,_Type,_Global],5,false,true];
			_Index = _Index +1;
			_Actions PushBack _NEKY2;
		};
	},[_Name,_FirstMarker,_LastMarker,_Index,_Actions,_Type,_Global],6,false,false];
	call compile format ["%1%3 = %2;",_Global,_NEKY,1];
}], "BIS_FNC_SPAWN", player] Call BIS_FNC_MP;
	