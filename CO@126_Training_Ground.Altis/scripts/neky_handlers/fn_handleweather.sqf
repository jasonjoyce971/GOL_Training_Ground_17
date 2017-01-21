//	[Laptop] call NEKY_fnc_HandleWeather;	
//	
//	Made by NeKo-ArroW

Private ["_Laptop","_Index","_Params","_Types","_Type","_Params","_Index","_Values","_NEKY"];

_Laptop = _This select 0;

_Laptop AddAction ["<t color='#00FF00'>Initialize Weather Station</t>",
{
	_Params = [_this, 3] call BIS_fnc_param;
	_Laptop = [_Params, 0] call BIS_fnc_ParamIn;
	[[[_Laptop],
	{
		SystemChat "Preparing Weather Station";
		_Laptop = _this select 0;
		RemoveallActions _Laptop;
		_Laptop addAction ["<t color='#00FF00'>Change time +3 hours</t>",{[[[],{SkipTime 3}], "BIS_fnc_Spawn", false, false, false] call BIS_fnc_MP}];
		_Laptop addAction ["<t color='#00FF00'>Change time +6 hours</t>",{[[[],{SkipTime 6}], "BIS_fnc_Spawn", false, false, false] call BIS_fnc_MP}];
		_Laptop addAction ["<t color='#00FF00'>Change time +9 hours</t>",{[[[],{SkipTime 9}], "BIS_fnc_Spawn", false, false, false] call BIS_fnc_MP}];
		_Index = 0;
		for "_i" from 1 to 4 do
		{
			_Types = ["Overcast","Rain","Fog","Lightning"];
			_Type = (_Types select _Index);
			_Laptop AddAction [Format ["<t color='#00FF00'>%1</t>",_Type],
			{
				_Params = [_this, 3] call BIS_fnc_Param;
				_Laptop = [_Params, 0] call BIS_fnc_ParamIn;
				_Type = [_Params, 1] call BIS_fnc_paramIn;
				_Index = 0;
				_NEKYS = [];
				_Values = [0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1];
				for "_y" from 1 to (count _Values) do
				{
			_NEKY =	_Laptop AddAction [Format ["<t color='#F7FE2E'>%1</t>",(_Values select _Index)],
					{
						_Params = [_This, 3] call BIS_fnc_param;
						_Type = [_Params, 0] call BIS_fnc_ParamIn;
						_Index = [_Params, 1] call BIS_fnc_ParamIn;
						_Values = [_Params, 2] call BIS_fnc_ParamIn;
						_NEKYS = [_Params, 3] call BIS_Fnc_ParamIn;
						_Laptop = [_Params, 4] Call BIS_fnc_ParamIn;
						
						[_Type,(_Values select _Index)] ExecVM "Scripts\NEKY_SetWeather.sqf";
						{_Laptop RemoveAction _x} forEach _NEKYS;
					},[_Type,_Index,_Values,_NEKYS,_Laptop],1.5,false,true];
					_NEKYS pushBack _NEKY;
					_Index = _Index +1;
				};
			},[_Laptop,_Type],1.5,false,false];
			_Index = _Index +1;
		};
	}], "BIS_fnc_Spawn", true, false, false] call BIS_fnc_MP;
},[_Laptop],1.5,false,True];
