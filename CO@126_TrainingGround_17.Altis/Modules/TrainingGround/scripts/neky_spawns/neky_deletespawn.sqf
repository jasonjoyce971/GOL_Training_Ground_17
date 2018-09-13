//	[GlobalArray] execVM "Scripts\NEKY_Spawns\NEKY_DeleteSpawn.sqf";
//
//

Private ["_Array","_Index"];

_Array = [_this, 0, [], [[]]] call BIS_fnc_Param; 
_Index = 0;

{if ((count (crew _x)) == 0) then {deleteVehicle _x}} forEach _Array;