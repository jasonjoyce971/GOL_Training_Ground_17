//	["Difficulty", LogicName] execVM "Scripts\Popup Targets\ReflexCourse.sqf";
//

Private ["_Difficulty","_LogicName","_Size","_inc","_count","_TargetOld","_Targets","_Sleep"];

_Difficulty = [_this, 0, "", [""]] call BIS_fnc_Param;
_LogicName = [_this, 1, ObjNull, [ObjNull]] call BIS_fnc_Param;
_Targets = [];

// Select Difficulty
Switch (_Difficulty) do
{
	Private ["_Sleep"];
	
	case "EASY":
	{
		_Sleep = 3;
	};
	case "MEDIUM":
	{
		_Sleep = 2;
	};
	case "HARD":
	{
		_Sleep = 1.4;
	};
	case "VERY HARD":
	{
		_Sleep = 1;
	};
};

Call Compile format ["{_Targets pushBack _x} ForEach (nearestObjects [%1, ['TargetBase'], %2]);",_LogicName ,60];

// Popup Sequence
_inc     = 0;
_count   = 0;
_TargetOld = _Targets call BIS_fnc_selectRandom;

nopop=true;
{_x  animate["terc",1]} forEach _Targets;

systemChat format ["Setting up the Range - %1 Mode",_Difficulty];
sleep 6;
SystemChat "Ready";
sleep 2;
systemChat "Challenge Starting";

while {_inc<40} do 
{
	_Target = _Targets call BIS_fnc_selectRandom;
	
	While {_Target == _TargetOld} do
	{
		_Target = _Targets call BIS_fnc_selectRandom;
	};
	
	_TargetOld = _Target;
	
	_Target animate["terc", 0];
	_SoundPos = "Land_HelipadEmpty_F" createVehicle (getpos _Target); 
	_SoundPos say3D "GhostFire";
	sleep 1;
	Deletevehicle _SoundPos;
	sleep _Sleep;
	if (_Target animationPhase "terc" > 0.1) then
	{
			_count = _count+1;
				};
		hint format ["Targets :%1 Hit :%2",_inc+1,_count];
	_Target animate["terc", 1];
	_inc = _inc + 1;
};

systemChat format ["Challenge Ending - %1 Mode",_Difficulty];
sleep 0.5;
SystemChat Format ["Targets Raised: %1. Targets hit: %2.",_Inc,_Count];