// ["FACTION","Vehicle",Skill] execVM "Scripts\ATGTargetPractice.sqf";
//

Private ["_Faction","_Vehicle","_Skill","_UnitClass","_VehicleType","_Group","_Commander","_Gunner"];

_Faction = [_this, 0, "", [""]] call BIS_fnc_Param;
_Vehicle = [_this, 1, "", [""]] call BIS_fnc_Param;
_Skill = [_this, 2, 0.5, [0]] call BIS_fnc_Param;

Switch (_Faction) do
{
	Private ["_Faction","_UnitClass"];
	
	case "NATO":
	{
		_Faction = WEST;
		_UnitClass = "B_Soldier_F";
	};
	case "CSAT":
	{
		_Faction = EAST;
		_UnitClass = "O_Soldier_F";
	};
	case "AAF":
	{
		_Faction = INDEPENDENT;
		_UnitClass = "I_Soldier_F";
	};
};
	
Switch (_Vehicle) do
{
	Private ["_Vehicle","_VehicleType"];
	
	case "AA":
	{
		_Vehicle = ["O_APC_Tracked_02_AA_F", "B_APC_Tracked_01_AA_F"] call BIS_fnc_SelectRandom;
		_VehicleType = "APC, Tank, AA";
	};
	case "MRAP":
	{
		_Vehicle = ["O_MRAP_02_hmg_F","B_MRAP_01_hmg_F","I_MRAP_03_hmg_F"] call BIS_fnc_SelectRandom;
		_VehicleType = "MRAP";
	};
	case "LAV":
	{
		_vehicle = ["O_APC_Wheeled_02_rcws_F","B_APC_Wheeled_01_cannon_F","I_APC_Wheeled_03_cannon_F"] call BIS_fnc_SelectRandom;
		_VehicleType = "LAV";
	};
};

_Group = Creategroup _Faction;
_Markers = ["mrkSpawn1", "mrkspawn2", "mrkspawn3", "mrkspawn4", "mrkspawn5", "mrkspawn6", "mrkspawn7", "mrkspawn8", "mrkspawn9", "mrkspawn10", "mrkspawn11", "mrkspawn12"];
_Marker = _Markers call BIS_fnc_SelectRandom;

// Spawn Sequence
_veh = createVehicle [_Vehicle, getmarkerpos _marker, [], 0, "NONE"];

if (_Vehicle == "MRAP") then {} else 
{
	_commander = _Group createUnit [_UnitClass, getmarkerpos _marker, [], 0, "NONE"];
	_commander setRank "SERGEANT";
	_commander assignAsCommander _veh;
	[_commander] orderGetIn true;
	_commander moveinCommander _veh;
	_commander setSkill _Skill;
};

_gunner = _Group createUnit [_UnitClass, getMarkerPos "vspawn1", [], 0, "NONE"];
_gunner setRank "PRIVATE";
_gunner assignAsGunner _veh;
[_gunner] orderGetIn true;
_gunner MoveInGunner _veh;
_gunner setSkill _Skill;

_Group SetBehaviour "COMBAT";
_Group setCombatMode "RED";

SystemChat format ["%1 Spawned - Skill %2",_VehicleType,_Skill];

