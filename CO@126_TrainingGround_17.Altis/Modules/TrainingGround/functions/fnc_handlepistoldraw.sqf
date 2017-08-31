// [Laptop,LogicName] execVM "Scripts\Popup Targets\PistolDraw.sqf";
//

Private ["_Courses","_Color","_Index"];

_Laptop = [_this, 0, objNull, [objNull]] call BIS_fnc_Param;
_LogicName = [_this, 1, objNull, [objNull]] call BIS_FNC_Param;

// Add Actions
_Courses = ["Course A","Course B","Course C"];
_Color = "#00FF00";
_Index = 0;

for "_i" from 1 to (count _Courses) do
{
	[[[_Laptop,_Color,_Index,_Courses,_LogicName], 
	{	
		(_this select 0) addAction [format ["<t color='%1'>%2</t>",(_this select 1),((_this select 3) select (_this select 2))],
		{
			_Params = [_this, 3] call BIS_fnc_param;
			_Courses = [_params, 0] call BIS_fnc_ParamIn;
			_LogicName = [_Params, 1] call BIS_fnc_ParamIn;
			_Index = [_Params, 2] call BIS_fnc_ParamIn;
	
			[(_Courses select _Index),_LogicName] execVM "Modules\TrainingGround\scripts\Popup Targets\PistolDraw.sqf";
		},[(_this select 3),(_this select 4),(_this select 2)],5,false,true];
	}], "BIS_fnc_Spawn",true, false] call BIS_fnc_MP;				
	_Index = _Index +1;
};				
