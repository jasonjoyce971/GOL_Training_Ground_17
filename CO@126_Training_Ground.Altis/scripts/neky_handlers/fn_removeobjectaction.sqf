//	[Laptop, "Base" (script name, without path and .sqf), "Name" (of the action), ["arrays to remove"], "Global"] call NEKY_fnc_RemoveObjectAction;];
//	
//	Made by NeKo-ArroW

Private ["_Laptop","_Base","_Name","_Arrays","_Global"];

_Laptop = [_This, 0, objNull, [ObjNull]] call BIS_Fnc_Param;
_Base = [_This, 1, "", [""]] call BIS_Fnc_Param;
_Name = [_This, 2, "", [""]] call BIS_Fnc_Param;
_Arrays = [_This, 3, [""], [[""]]] call BIS_Fnc_Param;
_Global = [_This, 4, "", [""]] call BIS_fnc_Param;
	
[[[_Laptop,_Base,_Name,_Arrays,_Global], 
{
	_Laptop = _This select 0;
	_Base = _This select 1;
	_Name = _This select 2;
	_Arrays = _This select 3;
	_Global = _This select 4;
	
	_NEKY = _Laptop addAction [(format ["<t color='#FF8000'>Remove %1</t>",_Name]), 
	{		
		_Params = [_This, 3] call BIS_Fnc_Param;
		_Laptop = [_Params, 0] call BIS_Fnc_ParamIn;
		_Base = [_Params, 1] call BIS_Fnc_ParamIn;
		_Name = [_Params, 2] call BIS_Fnc_ParamIn;
		_Arrays = [_Params, 3] call BIS_Fnc_ParamIn;
		_Global = [_Params, 4] call BIS_Fnc_ParamIn;
		
		[[[_Arrays], {
		{
			{deleteVehicle _x} forEach (missionNamespace getVariable _x); 
		} forEach (_This select 0);}], "BIS_FNC_SPAWN", true] Call BIS_FNC_MP;
		
//		[(_Laptop, _Base, _Name, _Arrays, _Global] call NEKY_fnc_AddObjectAction;
		[[[_Laptop,_Global],{ call compile format ["%1 removeAction %2;",(_this select 0),(_this select 1)];}], "BIS_fnc_Spawn", true,false] call BIS_fnc_MP;
		sleep 10;
		[[[_Laptop,_Base,_Name,_Arrays,_Global], {[(_this select 0),(_this select 1),(_this select 2),(_this select 3),(_This select 4)] Call NEKY_fnc_AddObjectAction;}], "BIS_fnc_Spawn",true,false] call BIS_fnc_MP;
	}, [_Laptop,_Base,_Name,_Arrays,_Global]]; 
	call compile format ["%1 = %2;",_Global,_NEKY];
}], "BIS_FNC_SPAWN", Player] Call BIS_FNC_MP;


