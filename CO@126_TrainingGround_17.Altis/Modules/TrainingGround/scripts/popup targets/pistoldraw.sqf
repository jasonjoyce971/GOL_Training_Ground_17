//	["Course",LogicName] execVM "Scripts\Popup Targets\PistolDraw.sqf";
//

Private ["_Course","_LogicName","_Size","_Index","_inc","_count","_incMax","_TargetOld","_Targets"];

_Course = [_this, 0, "", [""]] call BIS_fnc_Param;
_LogicName = [_this, 1, objNull, [objNull]] call BIS_fnc_Param;
_Targets = [];

// Course Selections
Switch (_Course) do
{
	Private ["_Size","_Index"];
	
	case "Course A":
	{
		_Size = 8;
		_Index = 1;
	};
	case "Course B":
	{
		_Size = 8;
		_Index = 2;
	};
	case "Course C":
	{
		_Size = 8;
		_Index = 3;
	};
};

Call Compile format ["{_Targets pushBack _x} ForEach (nearestObjects [%1%2, ['TargetBase'], %3]);",_LogicName ,_Index,_Size];

// Popup Sequence
_inc     = 0;
_count   = 0;
_incMax	 = 13 + random 7;
_TargetOld = _Targets call BIS_fnc_selectRandom;

nopop=true;
{_x  animate["terc",1]} forEach _Targets;

SystemChat "Setting up the range";
sleep 6;
SystemChat "Get Ready!";
sleep 2;
SystemChat "Challenge Starting!";

while {_inc<_incMax} do 
{
	_Target = _Targets call BIS_fnc_selectRandom;
	
	While {_Target == _TargetOld} do
	{
		_Target = _Targets call BIS_fnc_selectRandom;
	};
	
	_TargetOld = _Target;
	
	_Target animate["terc", 0];
	sleep 2.5;
	if (_Target animationPhase "terc" > 0.1) then
	{
			_count = _count+1;
				};
	hint format ["Targets :%1 Hit :%2",_inc+1,_count];
	_Target animate["terc", 1];
	_inc = _inc + 1;
};

// Pistol Draw Popup Sequence
player setammo [primaryWeapon player, 0];
for "_i" from 1 to 7 do
{
	_Target = _Targets call BIS_fnc_selectRandom;
	_Target animate["terc", 0];
};
sleep 5;
{_x  animate["terc",1]} forEach _Targets;

sleep 3;

SystemChat "Challenge Ending";