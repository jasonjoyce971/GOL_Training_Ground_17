// ["EASY",LogicName,TriggerName] execVM "Scripts\Popup Targets\Firing Ranges.sqf"
// 

Private ["_Arrow","_Trigger","_NumberOfTargets","_StartAll","_StopAll","_EXIT","_Size","_Difficulty","_LogicName","_Start","_Stop","_TargetsAll","_Target","_Sleep","_Targets","_i","_LogicName","_inc","_count","_TargetOld","_Qualification"];

_Difficulty = [_this, 0, "", [""]] call BIS_fnc_Param;
_LogicName = [_this, 1, ObjNull, [ObjNull]] call BIS_fnc_Param;
_Trigger = [_This, 2, ObjNull, [ObjNull]] call BIS_fnc_Param;

// Select Difficulty
Switch (_Difficulty) do
{
	Private ["_Sleep","_Start","_Stop","_Qualification","_NumberOfTargets"];
	
	case "EASY":
	{
		_Sleep = 3.5;
		_Start = 1;
		_Stop = 4;
		_NumberOfTargets = 30;
		_Qualification = False;
	};
	case "MEDIUM":
	{
		_Sleep = 3;
		_Start = 1;
		_Stop = 5;
		_NumberOfTargets = 30;
		_Qualification = False;
	};
	case "HARD":
	{
		_Sleep = 2.7;
		_Start = 2;
		_Stop = 6;
		_NumberOfTargets = 30;
		_Qualification = False;
	};
	case "VERY HARD":
	{
		_Sleep = 2.5;
		_Start = 3;
		_Stop = 6;
		_NumberOfTargets = 30;
		_Qualification = False;
	};
	
	case "Qualification":
	{
		_Sleep = 3.2;
		_Start = 1;
		_Stop = 6;
		_NumberOfTargets = 60;
		_Qualification = True;
	};
};

// Counting Sequence
_StartAll = 1;
_StopAll = 6;
_Size = 20;
_TargetsAll = []; 
_Targets = [];
GW_TrainingGround_FiringRangeCANCEL = False;

// Counting all Targets
for [{_i=_StartAll},{_i<=_StopAll},{_i=_i+1}] do 
{
	Call Compile format ["{_TargetsAll pushBack _x} ForEach (nearestObjects [%1%2, ['TargetBase'], %3]);",_LogicName ,_i,_Size];
};

// Counting Targets to be used
for [{_i=_Start},{_i<=_Stop},{_i=_i+1}] do 
{
	Call Compile format ["{_Targets pushBack _x} ForEach (nearestObjects [%1%2, ['TargetBase'], %3]);",_LogicName ,_i,_Size];
};

// Variables
_inc     = 0;
_count   = 0;
_TargetOld = _Targets call BIS_fnc_selectRandom;
GW_TrainingGround_nopop = true;
[[[_Targetsall],{ {_x  animate["terc",1];	if (_x animationPhase "terc" != 1) then {_x  animate["terc",0]; _x  animate["terc",1]; }; } forEach (_This select 0); }], "BIS_FNC_SPAWN", false] call BIS_FNC_MP;
// _x HideObjectGlobal True;


// Preparations
if !(_Qualification) then 
{
	SystemChat Format ["Setting up the range, %1 mode",_Difficulty];
	sleep 10;
} else {
	SystemChat Format ["Setting up the range, %1 mode",_Difficulty];
	sleep 0.5;
	_Arrow = CreateVehicle ["Sign_Arrow_Large_Green_F",[(GetPos _Trigger select 0),(GetPos _Trigger select 1),2], [], 0, "CAN_COLLIDE"];
	SystemChat "Please step up to the shooting position and go crouched to start the qualification.";
	
	WaitUntil {sleep 1; ((Player in list _Trigger) && (Stance Player == "CROUCH"))};
	deleteVehicle _Arrow;
};
SystemChat "Get Ready!";
sleep 2;
SystemChat "Challenge Starting!";

// Popup Cycle
for "_i" from 1 to (_NumberOfTargets) do 
{
	if ((_Qualification) && !(!(Stance Player == "PRONE") && (Player in list _Trigger))) exitWith {SystemChat "You're breaking the rules, qualification ending."};
	if (GW_TrainingGround_FiringRangeCANCEL) exitWith {SystemChat "Challenge has been cancelled"};
	_Target = _Targets call BIS_fnc_selectRandom;
	
	While {_Target == _TargetOld} do
	{
		_Target = _Targets call BIS_fnc_selectRandom;
	};
	
	_TargetOld = _Target;
	
//	_Target HideObjectGlobal false;
	[[[_Target],{_This select 0 animate["terc", 0];}], "BIS_FNC_SPAWN", false] call BIS_FNC_MP;
	sleep _Sleep;
	if (_Target animationPhase "terc" > 0.01) then
	{
		_count = _count+1;
	};
	[[[_Target],{_This select 0 animate["terc", 1];}], "BIS_FNC_SPAWN", false] call BIS_FNC_MP;
//	_Target HideObjectGlobal True;
	_inc = _inc + 1;
	if (_Qualification) then {_Sleep = _Sleep -0.02} else {hint format ["Targets :%1 Hit :%2",_inc,_count];};
};

SystemChat Format ["Challenge Ending - %1 Mode",_Difficulty];
sleep 0.5;
if (_Qualification) then { [[[(name player),_Inc,_Count],{SystemChat Format ["%1 Has finished Marksman Qualification with the score %2 / %3",(_This select 0),(_This select 2),(_This select 1)]}],"BIS_FNC_SPAWN",True] call BIS_FNC_MP;} else {SystemChat Format ["Targets Raised: %1. Targets hit: %2.",_Inc,_Count]};

