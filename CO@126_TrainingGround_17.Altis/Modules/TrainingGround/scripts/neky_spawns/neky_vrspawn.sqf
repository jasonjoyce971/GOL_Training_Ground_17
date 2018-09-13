//	Spawning Units and using them for training purposes.
//	
//	[<Engage player>, <Faction>, <number of units>, <delay between enemies>, <spawn markers>, <waypoints in the form of markers. Make sure to have them in the correct order>, <random waypoint position radius>, <Accuracy settings>,<movement true/false>, <Height>, <Random amount of units on the markers>]
//
//	[False,"CSAT",1,1,["SpawnMarker"],["Waypoints"],50,0.5,true,1,0] ExecVM "Scripts\NEKY_Spawns\NEKY_VRSpawn.sqf";
//	Null = [False,"CSAT",1,1,["SpawnMarker"],["Waypoints"],50,0.5,true,1,0] ExecVM "Scripts\NEKY_Spawns\NEKY_VRSpawn.sqf";
//	
//
// 	Made by NeKo-ArroW with the assist of GuzzenVonLidl

Private ["_Index3","_Dir","_Uniform","_Vest","_Helmet","_Goggles","_Weapon","_Ammo","_Side","_FireMode","_Radius","_Engage","_Delay","_SpawnMarker","_Waypoints","_UnitClass","_Index","_Index2","_Grp","_Unit","_Marker"];

if (!isServer) exitwith {};

_Engage = [_this, 0, false, [true]] call BIS_fnc_Param;
_Faction = [_this, 1, "CSAT",[""]] call BIS_fnc_Param;
_NumberOfEnemies = [_this, 2, 1,[0]] call BIS_fnc_Param;
_Delay = [_this, 3, 10,[0]] call BIS_fnc_Param;
_SpawnMarker = [_this, 4, [""],[[""]]] call BIS_fnc_Param;
_Waypoints = [_this, 5, [""],[[""]]] call BIS_fnc_Param;
_Radius = [_this, 6, 10, [0]] call BIS_fnc_Param;
_Skill = [_this, 7, 0.1, [0]] call BIS_fnc_Param;
_Movement = [_this, 8, true, [true]] call BIS_fnc_Param;
_Height = [_this, 9, 0.5, [0]] call BIS_fnc_Param;
_Random = [_this, 10, 0, [0]] call BIS_fnc_param;

// Unit and gear selection
switch (_Faction) do
{
	case "NATO":
	{
		_UnitClass = "B_Soldier_F";
		_Side = WEST;
		_Uniform = "U_B_CombatUniform_mcam";
		_Vest = "V_PlateCarrier1_rgr";
		_Helmet = "H_HelmetSpecB_paint2";
		_Goggles = "";
		_Weapon = "arifle_MX_F";
		_Ammo = "30Rnd_65x39_caseless_mag";
	};
	
	case "CSAT":
	{
		_UnitClass = "O_Soldier_F";
		_Side = EAST;
		_Uniform = "U_O_CombatUniform_ocamo";
		_Vest = "V_HarnessOSpec_brn";
		_Helmet = "H_HelmetLeaderO_ocamo";
		_Goggles = "G_Balaclava_combat";
		_Weapon = "arifle_Katiba_F";
		_Ammo = "30Rnd_65x39_caseless_green";
	};
	
	case "AAF":
	{
		_UnitClass = "I_Soldier_F";
		_Side = INDEPENDENT;
		_Uniform = "U_I_CombatUniform";
		_Vest = "V_BandollierB_oli";
		_Helmet = "H_HelmetIA";
		_Goggles = "G_Balaclava_oli";
		_Weapon = "arifle_Mk20_F";
		_Ammo = "30Rnd_556x45_Stanag";
	};
};

if (_Random > 0) then 
{
	_NewSpawnMarker = [];
	for "_i" from 1 to (_random) do
	{
		_Marker = _SpawnMarker call BIS_fnc_SelectRandom;
		if !(_Marker in _NewSpawnMarker) then 
		{
			_NewSpawnMarker pushback _Marker;
		};	
	};
	_SpawnMarker = _NewSpawnMarker;
};
_Index3 = 0;

// Spawn Sequence
for "_i" from 1 to (count _SpawnMarker) do
{
	[(_SpawnMarker select _Index3),_Index3,_NumberOfEnemies,_Side,_Uniform,_Vest,_Helmet,_Goggles,_Ammo,_Weapon,_Movement,_Engage,_Radius,_Skill,_UnitClass,_Delay,_Faction,_Height,_Waypoints] spawn 
	{		
		Private ["_FireMode"];
		
		_SpawnMarker = [_this, 0] call BIS_fnc_Param;
		_Index3 = [_this, 1] call BIS_fnc_Param;
		_NumberOfEnemies = [_this, 2] call BIS_fnc_Param;
		_Side = [_this, 3] call BIS_fnc_Param;
		_Uniform = [_this, 4] call BIS_fnc_Param;
		_Vest = [_this, 5] call BIS_fnc_Param;
		_Helmet = [_this, 6] call BIS_fnc_Param;
		_Goggles = [_this, 7] call BIS_fnc_Param;
		_Ammo = [_this, 8] call BIS_fnc_Param;
		_Weapon = [_this, 9] call BIS_fnc_Param;
		_Movement = [_this, 10] call BIS_fnc_Param;
		_Engage = [_this, 11] call BIS_fnc_Param;
		_Radius = [_this, 12] call BIS_fnc_Param;
		_Skill = [_this, 13] call BIS_fnc_Param;
		_UnitClass = [_this, 14] call BIS_fnc_Param;
		_Delay = [_this, 15] call BIS_fnc_Param;
		_Faction = [_this, 16] call BIS_fnc_Param;
		_Height = [_this, 17] call BIS_fnc_Param;
		_Waypoints = [_this, 18] call BIS_fnc_Param;
		
		_Marker = _SpawnMarker;
		for "_i" from 1 to _NumberOfEnemies do 
		{	
			_Index = 1;
			_Index2 = 0;
			
			_Grp = creategroup _Side;
			_Unit = _Grp CreateUnit [_UnitClass, [((getmarkerPos _Marker) select 0),((getMarkerPos _Marker) select 1),_Height], [], _Radius, "CAN_COLLIDE"];
//			_Unit setSkill _Skill;
//			_Unit SetSkill ["AimingAccuracy", _Skill];
//			_Unit SetSkill ["AimingShake",_Skill];
//			_Unit SetSkill ["SpotDistance", _Skill];
//			_Unit SetSkill ["AimingSpeed", _Skill];
//			_Unit SetSkill ["SpotTime", _Skill];
			// AI Skill Setting
			NEKY_VRAISkill =
			{	
				Private ["_Temp","_Index","_This","_SkillVariables"];
				_Temp = _This select 0;
	
				_Skills = [0.2, 0.1, 0.2, 0.4, 0.5, 0.8, 0.4];
				_SkillVariables = ["aimingspeed","aimingaccuracy","aimingshake","spotdistance","spottime","commanding","general"];
				_Index = 0;
				for "_i" from 1 to (count _SkillVariables) do
				{
					_Temp setSkill [(_SkillVariables select _Index), (_Skills select _Index)];
					_Index = _Index +1;
				};
			};
			[_Unit] spawn NEKY_VRAISkill;
			
			_Unit setunitpos "UP";
			_Dir = markerDir _Marker;
			_Unit setdir _Dir;
			removeallweapons _Unit;
			removevest _unit;
			removeuniform _Unit;
			removeallassigneditems _Unit;
			removeHeadGear _Unit;
			removeGoggles _Unit;
			_Unit ForceAddUniform _Uniform;
			_Unit addvest _Vest;
			_Unit addHeadGear _Helmet;
			_Unit addGoggles _Goggles;
			for "_i" from 1 to 6 do {_Unit addItemToVest _Ammo;};
			_Unit addWeapon _Weapon;
			if ((Daytime <= 6) or (Daytime >= 18)) then 
			{
				_Unit addPrimaryWeaponItem "acc_flashlight";
				_grp enableGunLights "FORCEON";
				hint "nighttime";
			};
			if (_Engage) then {_Unit Setbehaviour "Aware"; _FireMode = "RED"} else {_Unit setbehaviour "CARELESS"; _FireMode = "BLUE"};			
			
			// Waypoint Sequence
			if (_Movement) then 
			{
				for "_i" from 1 to count _Waypoints do
				{
					_Grp addwaypoint [getmarkerpos (_Waypoints select _Index2), _Radius, _Index];
					[_Grp,_Index] setwaypointcombatmode _FireMode;
					[_Grp,_Index] setWaypointSpeed "NORMAL";
					[_Grp,_Index] setWaypointCompletionRadius 10;
					[_Grp,_Index] setWaypointType "MOVE";
					[_Grp,_Index] SetWaypointBehaviour "AWARE";
		
					_Index = _Index +1;
					_Index2 = _Index2 +1;
				};
			} 
			else 
			{
				_Unit ForceSpeed 0;
				_Grp setCombatMode _FireMode;
			};

			// Despawn Sequence
			_Index = Count _Waypoints;
			_Index = _Index +1;
		
			[_Unit,_Index,_Movement,_Engage,_Faction,_NumberOfEnemies,_Delay,_SpawnMarker,_Waypoints,_Radius,_Skill,_Height] spawn 
			{	
				_Unit = _this select 0;
				_Index = _this select 1;
				_Movement = [_this, 2, true, [true]] call BIS_fnc_Param;
				_Engage = [_this, 3, false, [true]] call BIS_fnc_Param;
				_Faction = [_this, 4, "CSAT",[""]] call BIS_fnc_Param;
				_NumberOfEnemies = [_this, 5, 1,[0]] call BIS_fnc_Param;
				_Delay = [_this, 6, 10,[0]] call BIS_fnc_Param;
				_SpawnMarker = [_this, 7, "",[""]] call BIS_fnc_Param;
				_Waypoints = [_this, 8, [""],[[""]]] call BIS_fnc_Param;
				_Radius = [_this, 9, 10, [0]] call BIS_fnc_Param;
				_Skill = [_this, 10, 0, [0]] call BIS_fnc_Param;
				_Height = [_this, 11, 0.5, [0]] call BIS_fnc_Param;
			
				if ((!_Movement) and (!_Engage)) then 
				{
					WaitUntil {sleep 20; (!Alive _Unit)};	
					if (!Alive _Unit) then 
					{
						sleep 10; 
						DeleteVehicle _Unit;
						[_Engage,_Faction,_NumberOfEnemies,_Delay,[_SpawnMarker],_Waypoints,_Radius,_Skill,_Movement,_Height] ExecVM "Scripts\NEKY_Spawns\NEKY_VRSpawn.sqf";
					};
				};
			
				if (_Movement) then 
				{
					WaitUntil {sleep 20; (_Index <= (CurrentWaypoint (group _Unit))) or (!Alive _Unit)};	
					if (!Alive _Unit) then {sleep 160; DeleteVehicle _Unit} else {DeleteVehicle _Unit};
				};	
			
				if (!_Movement && _Engage) then
				{
					WaitUntil {sleep 20; (!Alive _Unit)};	
					sleep 160; 
					DeleteVehicle _Unit;
				};
			};
			sleep _Delay;
		};
	};
	_Index3 = _Index3 +1;
	sleep _Delay;
};