//	null = [This, Radius, (is a Mobile Service Station), ["NearestObjects"]] ExecVM "Scripts\NEKY_ServiceStation\NEKY_ServiceStation.sqf";
///////////////////////////////////////////
//	
//	1. Object name, the name of the object.
//		a. Can be the actual name of the Object. Generally used when activating Service Stations later in to the mission.
// 		b. This, when entered in the init line of an object, activates the Service Station instantly.
//	2. OPTIONAL: Radius, range of service station.
//		a. Any number (meters) from center of object chosen above.
//		b. Nil, will make it default to what is defined in NEKY_Settings.
//	3. OPTIONAL: If it is a Mobile Service Station. True/False.
//		a. Defaults to false, Always use false. If you want to use a Mobile Service Station use the extension NEKY_MobileSS.sqf.
//		b. True, when this script is being executed via NEKY_MobileSS.sqf.
//	4. OPTIONAL: Objects to scan for, an array of strings that will scan for types of vehicles ( https://community.bistudio.com/wiki/nearestObjects ).
//		a. This decides what "TYPES" of vehicles the Service Station will look for/work with. ["CAR","AIR","PLANE","HELICOPTER","TANK"] are some examples.
//		b. Defaults to all land vehicles and all aerial vehicles.
//
//////////////
//	How To
//////////////
//	
//	1. Place this file accompanied by NEKY_MobileSS.sqf and NEKY_Settings.sqf in: yourmissionfolder\Scripts\NEKY_ServiceStation\
//	2. Place an object or vehicle that you want to be the Mobile Service Station (Vehicle Ammo Crate for slingloading or any truck for a vehicle).
//	3. Modify the code to your liking.
//	4. Place the code in the init line of the object or vehicle you want to be the Mobile Service Station.
//	
//	Note: If you want to make a stationary Service Station look in to NEKY_ServiceStation.sqf.
//	
///////////////
//	Examples:
///////////////
//	null = [This, nil, false, ["LandVehicle","AIR"]] ExecVM "Scripts\NEKY_ServiceStation\NEKY_ServiceStation.sqf";
//	null = [Helipad, 15, false, ["LandVehicle"]] ExecVM "Scripts\NEKY_ServiceStation\NEKY_ServiceStation.sqf";
//	null = [This, nil] ExecVM "Scripts\NEKY_ServiceStation\NEKY_ServiceStation.sqf";
//	null = [This] ExecVM "Scripts\NEKY_ServiceStation\NEKY_ServiceStation.sqf";
///////////////
///////////////
//	Made by NeKo-ArroW with help from GuzzenVonLidl
//  Thanks to MacGregor and Parker for helping me out testing this on dedicated server
//	version 2.0
///////////////

Private ["_Find","_IsMSS","_Radius","_SS","_Variables","_FullService","_Radius","_InspectionSpeed","_RepairingSpeed","_RepairingTrackSpeed","_RepairingSpeedPlane","_Refueling","_RemoveWheelSpeed","_MountWheelSpeed","_RearmSleep","_RearmSleepPlane","_MRadius"];

// Define Global Array
if (isNil "_ServiceStationActive") then {NEKY_ServiceStationActive = []};
	
NEKY_ServiceStationBusy = {Hint "Service Station is busy, please wait for current service to be finished."};
NEKY_ServiceStationAvailable = { NEKY_ServiceStationActive DeleteAt (NEKY_ServiceStationActive find (_This select 0)); PublicVariable "NEKY_ServiceStationActive"; if (_This select 1) then {Hint "You have left the Service station, service ending."} };
NEKY_ServiceStationHints = { if (((Player distance (_This select 1)) <= 15) or (driver (_This select 1) == player)) then {Hint (_This select 0)}; if !(driver (_This select 1) isEqualTo ObjNull) then {[[[(_This select 0)],{Hint (_This select 0)}], "BIS_FNC_SPAWN", (_This select 1)] call BIS_FNC_MP} };

NEKY_ServiceStationLights = 
{
	#include "NEKY_Settings.sqf"
	
	_SS = _This select 0;
	
	While {_SS In NEKY_ServiceStationActive && _Lights} do
	{
		_Index = 0;
		_45 = 45;
		_10 = 10;
		_Pos = GetPos _SS;
		_Spheres = [];
		for "_y" from 1 to 4 do
		{
			for "_i" from 1 to 4 do
			{
				_Light = CreateVehicle ["Sign_Sphere100cm_F", ([_Pos, _10, ((Direction _SS) + ((0) + _45))] call BIS_FNC_RelPos), [], 0, "CAN_COLLIDE"];
				_Light setVectorUp surfaceNormal position _Light;
				_Spheres pushBack _Light;
				_Index = _Index +1;
				_45 = _45 + 90;
			};
			_10 = _10 - 2;
			sleep 0.5;
		};
		if !(_SS In NEKY_ServiceStationActive) exitWith { {deleteVehicle _x} forEach _Spheres };
		_Index = 0;
		for "_i" from 1 to ((count _Spheres) / 4) do
		{
			for "_y" from 1 to 4 do
			{
				deleteVehicle (_Spheres select _Index);
				_Index = _Index +1;
			};			
			sleep 0.5;
		};
	};
};

NEKY_FullService =
{	
	Private ["_Veh","_SS"];
	
	_Veh = _This select 0;
	_SS = _This select 1;
	
	NEKY_ServiceStationActive PushBack _SS;
	PublicVariable "NEKY_ServiceStationActive";
	
	["Full service selected", _Veh] spawn NEKY_ServiceStationHints;
	sleep 2;
	[_Veh,_SS,true] call NEKY_Repair;
};

NEKY_Repair = 
{
	Private ["_Veh","_SS","_FullService","_Radius","_InspectionSpeed","_RepairingSpeed","_RepairingTrackSpeed","_RepairingSpeedPlane","_Refueling","_RemoveWheelSpeed","_MountWheelSpeed","_RearmSleep","_RearmSleepPlane","_MRadius","_FuelHP","_EngineHP","_HullHP","_TurretHP","_GunHP","_MainRotorHP","_atrqHP","_InstrumentsHP","_CarHullHP","_LeftTrackHP","_RightTrackHP","_Parts","_Parts","_PartNames","_PartsHP"];
	#include "NEKY_Settings.sqf"
	
	_Veh = _This select 0;
	_SS = _This select 1;
	_FullService = _This select 2;
	if !(_FullService) then {NEKY_ServiceStationActive PushBack _SS; PublicVariable "NEKY_ServiceStationActive"};
	
	_Index = 0;
	_Veh engineOn False;	
	
	// Vehicle Hit Points
	// General
	_FuelHP = _veh getHitPointDamage "HitFuel";
	_EngineHP = _Veh getHitPointDamage "hitEngine";
	_HullHP = _veh getHitPointDamage "HitHull";
	_TurretHP = _veh gethitpointdamage "HitTurret";
	_GunHP = _veh gethitpointdamage "HitGun";

	// Helicopter
	_MainRotorHP = _veh getHitPointDamage "HitHRotor";
	_atrqHP = _veh getHitPointDamage "HitVRotor";
	_InstrumentsHP = _veh getHitPointDamage "HitAvionics";

	// Vehicles with wheels
	_CarHullHP = _veh gethit "Karoserie";
	_CarHullHP = _Veh GetHitPointDamage "HitBody";
	
	// Tanks
	_LeftTrackHP = _veh gethitpointdamage "HitLTrack";
	_RightTrackHP = _veh gethitpointdamage "HitRTrack";
	
	_Parts = []; // Backup for modded vehicles which cannot be defined?
	
	Switch (true) do
	{		
		case (_Veh isKindOf "TANK"):
		{
			_Parts = ["HitEngine","HitHull","HitTurret","HitGun","HitLTrack","HitRTrack"];
			_PartNames = ["Engine","Hull","Turret","Gun","Left Tracks","Right Tracks"];
			_PartsHP = [_EngineHP,_HullHP,_TurretHP,_GunHP,_LeftTrackHP,_RightTrackHP];
		};	
	
		case (_Veh isKindOf "CAR"):
		{			
			_Parts = ["HitFuel","hitEngine","Karoserie"];
			_PartNames = ["Fuel System","Engine","Hull"];
			_PartsHP = [_FuelHP,_EngineHP,_CarHullHP];
		};
		
		case (_Veh isKindOf "HELICOPTER"):
		{
			_Parts = ["HitEngine","HitHull","HitAvionics","HitVRotor","HitHRotor"];
			_PartNames = ["Engine","Hull","Instruments","ATRQ","MRotor"];
			_PartsHP = [_EngineHP,_HullHP,_InstrumentsHP,_atrqHP,_MainRotorHP];
		};
		
		case (_Veh isKindOf "PLANE"):
		{
			_Parts = ["HitHull"];
			_PartNames = ["Hull"];
			_PartsHP = [_HullHP];
			_RepairingSpeed = _RepairingSpeedPlane;
		};
	};	
	
	// Repairing
	for "_i" from 1 to (count _Parts) do
	{
		if (!(_Veh in NEKY_ServiceStationArray)) exitWith {[_SS,true] call NEKY_ServiceStationAvailable};
		_Part = (_Parts select _Index);
		_PartName = (_PartNames select _Index);
		_PartHP = (_PartsHP select _Index);
		
		_InspectionSpeed = (_InspectionSpeed / 3);
		[(format ["Inspecting %1.",_Partname]), _Veh] spawn NEKY_ServiceStationHints;
		Sleep _InspectionSpeed;
		[(format ["Inspecting %1..",_Partname]), _Veh] spawn NEKY_ServiceStationHints;
		Sleep _InspectionSpeed;
		[(format ["Inspecting %1...",_Partname]), _Veh] spawn NEKY_ServiceStationHints;
		Sleep _InspectionSpeed;
		
		if (_PartHP >= 0.01) then
		{
			While {_PartHP > 0.01 && (_Veh in NEKY_ServiceStationArray)} do
			{
				if (_Veh isKindOf "TANK" and _Index >= 4) then {_RepairingSpeed = _RepairingTrackSpeed;};
				if (!(_Veh in NEKY_ServiceStationArray)) exitWith {[_SS,true] call NEKY_ServiceStationAvailable};
				[(format ["Repairing %1.",_PartName]), _Veh] spawn NEKY_ServiceStationHints;
				if (_Part == "Karoserie") then {_Veh setHit [_Part, (_PartHP - _RepairingSpeed)];} else {_Veh setHitPointDamage [_Part, (_PartHP - _RepairingSpeed)];};
				if (_Part == "Karoserie") then {_PartHP = _Veh gethit _Part} else {_PartHP = _Veh gethitpointdamage _Part};
				sleep 0.33;
				[(format ["Repairing %1..",_PartName]), _Veh] spawn NEKY_ServiceStationHints;
				_Veh setHitPointDamage [_Part, (_PartHP - _RepairingSpeed)];
				if (_Part == "Karoserie") then {_PartHP = _Veh gethit _Part} else {_PartHP = _Veh gethitpointdamage _Part};
				sleep 0.33;
				[(format ["Repairing %1...",_PartName]), _Veh] spawn NEKY_ServiceStationHints;
				_Veh setHitPointDamage [_Part, (_PartHP - _RepairingSpeed)];
				if (_Part == "Karoserie") then {_PartHP = _Veh gethit _Part} else {_PartHP = _Veh gethitpointdamage _Part};
				sleep 0.33;
			};
			[(format ["%1 is now repaired.",_PartName]), _Veh] spawn NEKY_ServiceStationHints;
			sleep 2;
		} else {
			[(format ["%1 is not in need of repairs.",_PartName]), _Veh] spawn NEKY_ServiceStationHints;
			sleep 2;
		};
		_Index = _Index +1;
	};
	
	//	Fixing Wheels
	if (_Veh isKindOf "CAR") then 
	{
		if !(_Veh in NEKY_ServiceStationArray) exitWith {[_SS,true] call NEKY_ServiceStationAvailable};
		_Wheels = 2;
		_Index = 1;
		if (_veh getHit "wheel_1_3_steering" >= 0) then {_Wheels = 3};
		if (_veh getHit "wheel_1_4_steering" >= 0) then {_Wheels = 4};
		
		for [{_y=1},{_y<=2},{_y=_y+1}] do
		{
			for [{_i=1},{_i<=(_Wheels)},{_i=_i+1}] do 
			{
				if !(_Veh in NEKY_ServiceStationArray) exitWith {[_SS,true] call NEKY_ServiceStationAvailable};
				Private "_State";
			
				["Inspecting Wheel.", _Veh] spawn NEKY_ServiceStationHints;
				sleep _InspectionSpeed;
				["Inspecting Wheel..", _Veh] spawn NEKY_ServiceStationHints;
				sleep _InspectionSpeed;
				["Inspecting Wheel...", _Veh] spawn NEKY_ServiceStationHints;
				sleep _InspectionSpeed;
		
				_State = call compile format ["_veh getHit 'wheel_%2_%1_steering'",_i,_Index];
				if (_State > 0.1) then 
				{
					if !(_Veh in NEKY_ServiceStationArray) exitWith {[_SS,true] call NEKY_ServiceStationAvailable};
					["Removing damaged wheel.", _Veh] spawn NEKY_ServiceStationHints;
					Sleep _RemoveWheelSpeed;
					call compile format ["_veh setHit ['wheel_%2_%1_steering',1]",_i,_Index];
					["Mounting new wheel.", _Veh] spawn NEKY_ServiceStationHints;
					Sleep _MountWheelSpeed;
					call compile format ["_veh setHit ['wheel_%2_%1_steering',0]",_i,_Index];
					if (_index == 2 && _i == _Wheels) then {["New wheel mounted, all wheels have been inspected and repaired.", _Veh] spawn NEKY_ServiceStationHints} else {["New wheel mounted, inspecting next wheel", _Veh] spawn NEKY_ServiceStationHints};
				} else {
					if (_Index == 2 && _i == _Wheels) then {["Last wheel inspected, all wheels are good", _Veh] spawn NEKY_ServiceStationHints} else {["Wheel is fine, inspecting next wheel", _Veh] spawn NEKY_ServiceStationHints};
				};
				sleep 2;
				if !(_Veh in NEKY_ServiceStationArray) exitWith {[_SS,true] call NEKY_ServiceStationAvailable};
			};
			_Index = _Index +1;
		};
	};
	
	if (!(_Veh in NEKY_ServiceStationArray)) exitWith {[_SS,true] call NEKY_ServiceStationAvailable};
	["Applying finishing Touches", _Veh] spawn NEKY_ServiceStationHints;
	sleep 5;
	_Veh setdamage 0;
	["Repairs Complete!", _Veh] spawn NEKY_ServiceStationHints;
	sleep 2;
	
	if (((driver _Veh) in _Veh) && (!_FullService)) then {_Veh engineOn True};
	if !(_FullService) then {[_SS,false] call NEKY_ServiceStationAvailable} else {[_Veh,_SS,True] call NEKY_Refuel};
};

NEKY_Refuel = 
{
	Private ["_Veh","_SS","_FullService","_Radius","_InspectionSpeed","_RepairingSpeed","_RepairingTrackSpeed","_RepairingSpeedPlane","_Refueling","_RemoveWheelSpeed","_MountWheelSpeed","_RearmSleep","_RearmSleepPlane","_MRadius"];
	#include "NEKY_Settings.sqf"
	
	_Veh = _This select 0;
	_SS = _This select 1;
	_FullService = _This select 2;
	
	if !(_FullService) then {NEKY_ServiceStationActive PushBack _SS; PublicVariable "NEKY_ServiceStationActive"};
	_Fuel = fuel _veh;
	
	if (_fuel < 0.98) then
	{
		while {_fuel < 0.98} do
		{
			if (!(_Veh in NEKY_ServiceStationArray)) exitWith {[_SS,true] call NEKY_ServiceStationAvailable};
			["Refueling.", _Veh] spawn NEKY_ServiceStationHints;
			_veh setfuel (_fuel + _Refueling);
			sleep 0.33;
			_fuel = fuel _veh;
			["Refueling..", _Veh] spawn NEKY_ServiceStationHints;
			_veh setfuel (_fuel + _Refueling);
			sleep 0.33;
			_fuel = fuel _veh;
			["Refueling...", _Veh] spawn NEKY_ServiceStationHints;
			_veh setfuel (_fuel + _Refueling);
			sleep 0.33;
			_fuel = fuel _veh;
			["Refueling....", _Veh] spawn NEKY_ServiceStationHints;
		};
	} else { ["Refueling not needed", _Veh] spawn NEKY_ServiceStationHints; };
	sleep 2;
	if !(_FullService) then {[_SS,false] call NEKY_ServiceStationAvailable} else {[_Veh,_SS,true] call NEKY_Rearm};
};

NEKY_Rearm = 
{
	Private ["_Veh","_SS","_FullService","_Radius","_InspectionSpeed","_RepairingSpeed","_RepairingTrackSpeed","_RepairingSpeedPlane","_Refueling","_RemoveWheelSpeed","_MountWheelSpeed","_RearmSleep","_RearmSleepPlane","_MRadius","_Armed"];
	#include "NEKY_Settings.sqf"
	
	_Veh = _This select 0;
	_SS = _This select 1;
	_FullService = _This select 2;
	if !(_FullService) then {NEKY_ServiceStationActive PushBack _SS; PublicVariable "NEKY_ServiceStationActive"};
	
	if ((count magazinesDetail _veh) > 0) then 
	{
		_Armed = True
	} else {
		_Veh setVehicleAmmo 0.51;
		if ( ((count magazinesDetail _veh) > 0) or ((typeOf _veh == "I_Heli_light_03_F") or (typeOf _Veh == "I_Heli_light_03_unarmed_F")) ) then
		{
			_Armed = True
		} else {
		_Armed = False
		};
	};
	
	if (_Armed) then 
	{
		if (_Veh isKindOf "PLANE") then {_RearmSleep = _RearmSleepPlane};
		_Temp = 0;
		While {((_Veh in NEKY_ServiceStationArray) && (_Temp <= _RearmSleep))} do
		{
			["Rearming", _Veh] spawn NEKY_ServiceStationHints;
			sleep 1;
			["Rearming.", _Veh] spawn NEKY_ServiceStationHints;
			sleep 1;
			["Rearming..", _Veh] spawn NEKY_ServiceStationHints;
			sleep 1;
			_Temp = _Temp +3;
			if (!(_Veh in NEKY_ServiceStationArray)) exitWith {[_SS,true] call NEKY_ServiceStationAvailable};
		};
		if (_Veh in NEKY_ServiceStationArray) then {_Veh setvehicleammodef 1; ["Rearming Complete!", _Veh] spawn NEKY_ServiceStationHints};		
	} else {
		["Vehicle is unarmed, nothing to rearm.", _Veh] spawn NEKY_ServiceStationHints;
	};
	Sleep 2;
	if (_FullService) then {["Service complete!", _Veh] spawn NEKY_ServiceStationHints};
	if ((driver _Veh) in _Veh) then {_Veh engineOn True};
	[_SS,false] call NEKY_ServiceStationAvailable;
};

NEKY_ServiceStationActions = 
{
	_Veh = _This select 0;
	_SS = _This select 1;
	_Radius = _This select 2;
	
	_Action1 =	_veh addAction ["<t color='#FF8000'>NeKy's Service Station</t>", {}, [], 10, false, false];
	_Action2 =  _veh addaction ["<t color='#F7FE2E'>Repair</t>", {if ((_This select 3 select 1) in NEKY_ServiceStationActive) then {call NEKY_ServiceStationBusy} else {(_This select 3) spawn NEKY_Repair; [_This select 3 select 1] Spawn NEKY_ServiceStationLights}}, [_Veh,_SS,false], 10, false, true];
	_Action3 =	_veh addaction ["<t color='#F7FE2E'>Refuel</t>", {if ((_This select 3 select 1) in NEKY_ServiceStationActive) then {call NEKY_ServiceStationBusy} else {(_This select 3) spawn NEKY_Refuel; [_This select 3 select 1] Spawn NEKY_ServiceStationLights}}, [_Veh,_SS,false], 10, false, true];
	_Action4 =  _veh addaction ["<t color='#F7FE2E'>Rearm</t>", {if ((_This select 3 select 1) in NEKY_ServiceStationActive) then {call NEKY_ServiceStationBusy} else {(_This select 3) spawn NEKY_Rearm; [_This select 3 select 1] Spawn NEKY_ServiceStationLights}}, [_Veh,_SS,false], 10, false, true];
	_Action5 =  _veh addaction ["<t color='#F7FE2E'>Full Service</t>", {if ((_This select 3 select 1) in NEKY_ServiceStationActive) then {call NEKY_ServiceStationBusy} else {(_This select 3) spawn NEKY_FullService; [_This select 3 select 1] Spawn NEKY_ServiceStationLights}}, [_Veh,_SS], 10, false, true];
	_Action6 =	_veh addAction ["<t color='#FF8000'>NeKy's Service Station</t>", {}, [], 10, false, false];
	
	if (isServer) then 
	{
		_Actions = [_Action1,_Action2,_Action3,_Action4,_Action5,_Action6];
		{NEKY_Actions pushBack _x} forEach _Actions;

		// Remove Actions when leaving station.
		[_Veh, _SS, _Radius, _Actions] spawn
		{
			_Veh = _This select 0;
			_SS = _This select 1;
			_Radius = _This select 2;
			_Actions = _This select 3;
			
			WaitUntil {Sleep 0.5; ( ((_Veh Distance _SS) > _Radius) or !(_SS in NEKY_ServiceStations) or !(Alive _Veh))};
			NEKY_ServiceStationArray deleteAt (NEKY_ServiceStationArray find _Veh);
			if (_SS in NEKY_ServiceStationActive) then {[_SS,false] call NEKY_ServiceStationAvailable};
			PublicVariable "NEKY_ServiceStationArray";
			[[[_Veh,_Actions],{{(_This select 0) removeAction _x} forEach (_This select 1)}], "BIS_FNC_SPAWN", True] call BIS_FNC_MP;
			{NEKY_Actions deleteAt (NEKY_Actions find _x)} forEach _Actions;
		};
	};
};

if (isServer) then  // To avoid having all players loop the scanners
{
	#include "NEKY_Settings.sqf"

	_SS = [_This, 0, ObjNull, [ObjNull]] call BIS_FNC_Param;
	_Radius = [_This, 1, _Radius, [0]] call BIS_FNC_Param;
	_IsMSS = [_This, 2, False, [true]] call BIS_FNC_Param;
	_Find = [_This, 3, ["LANDVEHICLE","AIR"], [[]]] call BIS_FNC_Param;
	
	if (isNil "NEKY_ServiceStationArray") then
	{
		_Variables = ["NEKY_ServiceStationArray","NEKY_Actions","NEKY_ServiceStations"];
		{ call compile format ["if (isNil '%1') then {%1 = [];}", _x] } forEach _Variables;
	};
	sleep 1;
	
	_FullService = False;
	NEKY_ServiceStations PushBack _SS;
	[] Spawn {sleep 5; PublicVariable "NEKY_ServiceStations"};
	
	// MSS Deactivate if moved or destroyed
	if (_IsMSS) then
	{
		_This spawn 
		{
			_SS = _This select 0;
			
			While {True} do
			{	
				if ( !(Speed _SS == 0) or !(Alive _SS) or !(_SS in NEKY_ServiceStations) ) exitWith 
				{
					SystemChat "MSS Moving, died or deactivated.";
					[[[_SS],{removeAllActions (_This select 0)}], "BIS_Fnc_Spawn", True] Call BIS_fnc_MP;
					if (Alive _SS) then {[[[_This], {(_This select 0) execVM "Scripts\NEKY_ServiceStation\NEKY_MobileSS.sqf"}], "BIS_FNC_SPAWN", True] call BIS_FNC_MP};
					[_SS,false] call NEKY_ServiceStationAvailable;
					NEKY_ServiceStations deleteAt (NEKY_ServiceStations find _SS);
					PublicVariable "NEKY_ServiceStations";
				};	
				sleep 10;
			};
		};
	};

	// Scanner
	[_SS,_Radius,_Find] Spawn 
	{
		_SS = _This select 0;
		_Radius = _This select 1;
		_Find = _This select 2;

		While {_SS in NEKY_ServiceStations} do
		{
			if (( {(_x distance _SS) < (_Radius*2) && (_x isKindOf "AllVehicles")} count Vehicles) > 0) then
			{
				_Vehicles = NearestObjects [(getPos _SS), _Find, _Radius];
				{ if (!(_x in NEKY_ServiceStationArray) && (Alive _x)) then {NEKY_ServiceStationArray pushBack _x; PublicVariable "NEKY_ServiceStationArray"; [[[_x,_SS,_Radius],{_This Spawn NEKY_ServiceStationActions}], "BIS_FNC_SPAWN", True] call BIS_FNC_MP;} } forEach _Vehicles;
			};
			Sleep 4;
		};
	};
};