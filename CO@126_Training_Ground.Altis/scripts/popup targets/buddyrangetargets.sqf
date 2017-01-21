//	[LogicName,Number,"Start/Stop",EndNumber] ExecVM "Scripts\Popup Targets\BuddyRangeTargets.sqf";
//	
//	This .sqf hides / unhides targets on NeKo's Buddy Range.

Private ["_LogicName","_Number","_Size","_StartStop","_EndNumber","_i"];

_LogicName = [_this, 0, objNull, [ObjNull]] call BIS_fnc_Param;
_Number = [_this, 1, 0, [0]] call BIS_fnc_Param;
_StartStop = [_This, 2, "", [""]] call BIS_fnc_Param;
_EndNumber = [_this, 3, 0, [0]] call BIS_fnc_Param;

_Size = 5;

Switch _StartStop do
{
	case "Start":
	{
		[[[_LogicName,_Number,_Size],{Call Compile format ["(nearestObjects [%1%2, ['TargetBase'],%3] select 0) HideObjectGlobal False;",(_this select 0),(_this select 1),(_this select 2)];}], "BIS_fnc_Spawn", true,false,false] call BIS_fnc_MP;
	};
	
	case "Stop":
	{
		[[[_LogicName,_Number,_Size],{Call Compile format ["(nearestObjects [%1%2, ['TargetBase'],%3] select 0) HideObjectGlobal True;",(_this select 0),(_this select 1),(_this select 2)];}], "BIS_fnc_Spawn", true,false,false] call BIS_fnc_MP;
	};
	
	case "Prepare":
	{
		for [{_i=_Number},{_i<=_EndNumber},{_i=_i+1}] do
		{
			[[[_LogicName,_i,_Size],{Call Compile format ["(nearestObjects [%1%2, ['TargetBase'],%3] select 0) HideObjectGlobal True;",(_this select 0),(_this select 1),(_this select 2)];}], "BIS_fnc_Spawn", true,false,false] call BIS_fnc_MP;
		};
	};
};

if !(_StartStop isEqualTo "") exitwith {};

[[[_LogicName,_Number,_Size],{Call Compile format ["(nearestObjects [%1%2, ['TargetBase'],%3] select 0) HideObjectGlobal True;",(_this select 0),(_this select 1),(_this select 2)];}], "BIS_fnc_Spawn", true,false,false] call BIS_fnc_MP;
_Number = _Number +1;
[[[_LogicName,_Number,_Size],{Call Compile format ["(nearestObjects [%1%2, ['TargetBase'],%3] select 0) HideObjectGlobal False;",(_this select 0),(_this select 1),(_this select 2)];}], "BIS_fnc_Spawn", true,false,false] call BIS_fnc_MP;