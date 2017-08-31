// [[Wall Object, Wall Object 2....], "Target Type", Hits, "Drill Type", "Drill Name", TriggerName] execVM "Scripts\Popup Targets\BurstFiringDrill.sqf";
// 
// [[Barrier], "", 3, "training", "50m", TriggerOne] execVM "Scripts\BurstFiringDrill.sqf";
// 
// Made by NeKo-ArroW with help from GuzzenVonLidl

Private ["_Temp","_DrillQuali","_Accuracy","_String","_Time","_Trigger","_Arrow","_DrillName","_EH","_DrillType","_ShotsFired","_MagOut","_HitCount","_Qualification","_Magazine","_Index","_Targets","_Hits","_Hit","_Target","_PosMin","_PosMax","_Wall","_Pos","_Walls","_Type","_This"];

_Walls = [_This, 0, [ObjNull], [[]]] call BIS_FNC_Param;
_Type = [_This, 1, "Steel_Plate_L_F", [""]] call BIS_FNC_Param;
_Hits = [_This, 2, 3, [0]] call BIS_FNC_Param;
_DrillType = toLower ([_This, 3, "Qualification", [""]] call BIS_FNC_Param);
_DrillName = [_This, 4, "Short Controlled Bursts", [""]] call BIS_FNC_Param;
_Trigger = _This select 5;

// Drill type
Switch (_DrillType) do
{
	Private ["_Qualification","_DrillQuali"];
	case "training": {_Qualification = False; _DrillQuali = "drill"};
	case "qualification": {_Qualification = True; _DrillQuali = "qualification"};
};	

// Wait for player to get to the firing position
SystemChat Format ["Setting up the range, %1 mode",_DrillType];
sleep 0.5;
_Arrow = CreateVehicle ["Sign_Arrow_Large_Green_F",[(GetPos _Trigger select 0),(GetPos _Trigger select 1),2], [], 0, "CAN_COLLIDE"];
SystemChat format ["Please step up to the shooting position and go crouched to start the %1.",_DrillQuali];

_Temp = 0;
While {!(Player in list _Trigger) && !(Stance Player == "CROUCH") && (_Temp <= 30)} do
{
	_Temp = _Temp +1;
	Sleep 1;
};

deleteVehicle _Arrow;
if (!(Player in list _Trigger) && (_Temp >= 30)) exitWith {SystemChat Format ["You have not reached the firing position in 30seconds, %1 ending.",_DrillQuali]};

While {True} do
{
	WaitUntil {Sleep 1; !(Player in list _Trigger) or (Stance Player == "CROUCH")};
	If !(Player in list _Trigger) exitWith {False; SystemChat format ["You have left the firing position, %1 ending",_DrillQuali]};
	SystemChat "Get Ready!";
	sleep 2;
	SystemChat "Challenge Starting!";

	// Check magazine ammo count, define number of targets, add EH
	_Magazine = (player Ammo (CurrentWeapon Player));
	_Targets = _Magazine / _Hits;
	_EH = Player AddEventHandler ["Fired", {(_This select 0) SetVariable ["FIRED", (((_This select 0) GetVariable ["FIRED",0]) +1)]}];
	
	// Safety reset of variables
	Player setVariable ["HITS",0];
	Player SetVariable ["FIRED",0];
	
	// Define Counters
	_MagOut = False;
	_Index = 0;
	_HitCount = 0;
	_Time = Time;
	
	For "_i" from 1 to _Targets do
	{
		if ((_Qualification) && (Stance Player == "PRONE")) exitWith {False; SystemChat Format ["You're breaking the rules, %1 ending.",_DrillQuali]};
		
		// Decide on a position for the target
		_Wall = (_Walls call BIS_FNC_SelectRandom);
		_Pos = boundingBoxReal _Wall;
		_PosMin = [(Random (((_Pos select 0) select 0) + 0.3)), ((_Pos select 0) select 1), (Random (((_Pos select 0) select 2) + 0.4))];
		_PosMax = [(Random (((_Pos select 1) select 0) - 0.3)), ((_Pos select 0) select 1), (Random (((_Pos select 1) select 2) - 0.4))];
		_Pos = [([(_PosMin select 0), (_PosMax select 0)] call BIS_FNC_SelectRandom), ([(_PosMin select 1), (_PosMax select 1)] call BIS_FNC_SelectRandom), ([(_PosMin select 2), (_PosMax select 2)] call BIS_FNC_SelectRandom)];
	
		// Create Target
		_Target = CreateVehicle [_Type, [0,0,100], [], 0, "NONE"]; 
		_Target AttachTo [_Wall,_Pos];
		_Target AddEventHandler ["Hit", {(_This select 1) SetVariable ["HITS",(((_This select 1) GetVariable ["HITS",0]) +1)]}];
		WaitUntil {((Player GetVariable "HITS") >= _Hits) or ((player ammo (CurrentWeapon Player)) == 0) or !(Player in list _Trigger)};
		if !(Player in list _Trigger) exitWith {False; SystemChat "You have left the shooting position. Qualification ending."; DeleteVehicle _Target;};
		if ((Player GetVariable "HITS") >= _Hits) then {_Index = _Index +1} else {sleep 1; _MagOut = True};
		_HitCount = _HitCount + (Player GetVariable "HITS");
		
		Player setVariable ["HITS",0];
		DeleteVehicle _Target;
		
		if (_MagOut) exitWith {False};
	};
	
	// Statistics
	_ShotsFired = (Player GetVariable "FIRED");
	if ((_HitCount == 0) or (IsNil "_ShotsFired") or (_ShotsFired == 0)) then {_Accuracy = "N/A"} else {_Accuracy = ( ((_HitCount) / (_ShotsFired)) * 100)};
	_Time = (Time - _Time);
	
	if (_Qualification) then 
	{
		_String = ParseText Format 
		["
			%1 Has finished Short Controlled Bursts Qualification with the scores:<br/><br/>
			Fire Drill: %2<br/>
			Hits: %3 / %4<br/>
			Accuracy: %5<br/>
			Time Taken: %6
		",(Name Player), _DrillName, _HitCount, _ShotsFired, _Accuracy, _Time];
		[_String] spawn {[[[(_This select 0)],{Hint (_This select 0); sleep 10; Hint "";}],"BIS_FNC_SPAWN",True] call BIS_FNC_MP};
	} else {
		_String = ParseText Format 
		["
			Hits: %1 / %2<br/>
			Accuracy: %3<br/>
			Time Taken: %4
		", _HitCount, _ShotsFired, _Accuracy, _Time];
		[_String] spawn {Hint (_This select 0); sleep 8; Hint ""};
	};

	// Remove EH and reset Variable
	Player RemoveEventHandler ["Fired",_EH];
	Player SetVariable ["FIRED", 0];

	If (Player in list _Trigger) then 
	{
		SystemChat "Reload a fresh magazine without leaving the shooting position to restart the drill.";
		sleep 3;
		WaitUntil {sleep 0.5; !(Player in list _Trigger) or ((player Ammo (CurrentWeapon Player)) > 0)};
	};
	
	if !(Player in list _Trigger) exitWith {False; SystemChat "Drill ending."};
};