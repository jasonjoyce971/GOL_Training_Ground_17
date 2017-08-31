// 	[Laptop, LogicName, ScriptLoc] call NEKY_fnc_HandleRange;
//  [Laptop6,OcelotFiringRange,"Scripts\Popup Targets\Firing Ranges.sqf"] Call NEKY_fnc_HandleRange;
//

_Laptop = [_this, 0, objNull, [ObjNull]] call BIS_fnc_Param;
_LogicName = [_This, 1, ObjNull, [ObjNull]] call BIS_fnc_Param;
_ScriptLoc = [_This, 2, "", [""]] call BIS_fnc_param;

_Difficulty = ["EASY","MEDIUM","HARD","VERY HARD"];
_Colors = ["#00FF00","#F7FE2E","#FF8000","#FF0000"];
_Index = 0;

for "_i" from 1 to (count _Difficulty) do
{
	_NEKY = _Laptop addAction [format ["<t color='%1'>%2</t>",(_Colors select _Index),(_Difficulty select _Index)],
	{
		_Params = [_this, 3] call BIS_fnc_param;
		_Difficulty = [_params, 0] call BIS_fnc_ParamIn;
		_LogicName = [_Params, 1] call BIS_fnc_ParamIn;
		_Index = [_Params, 2] call BIS_fnc_ParamIn;
		_ScriptLoc = [_Params, 3] call BIS_fnc_ParamIn;
		_Laptop = [_Params, 5] call BIS_fnc_ParamIn;
	
		[[[(_Difficulty select _Index),_LogicName],_ScriptLoc], "BIS_fnc_ExecVM", player, false, false] call BIS_Fnc_MP;
	},[_Difficulty,_LogicName,_Index,_ScriptLoc,_Laptop],5,false,true];
	_Index = _Index +1;
};