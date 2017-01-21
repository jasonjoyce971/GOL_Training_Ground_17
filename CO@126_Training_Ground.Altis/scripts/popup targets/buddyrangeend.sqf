//	
//	
//	

if !(IsServer) exitWith {False};

_TargetClass = "TargetP_Inf_F";

_StartNumber = [_This, 0, 0, [0]] call BIS_FNC_Param;
_StopNumber = [_This, 1, 1, [1]] call BIS_FNC_Param;

_Index = _StartNumber;
for "_i" from _StartNumber to _StopNumber do
{
	_Pos = Format ["%1",_Index];
	_Dir = (MarkerDir _Pos);
	_Pos = GetMarkerPos _Pos;
	_Target = CreateVehicle [_TargetClass, _Pos, [], 0, "CAN_COLLIDE"];
	_Target SetDir _Dir;
	_Index = _Index +1;
};