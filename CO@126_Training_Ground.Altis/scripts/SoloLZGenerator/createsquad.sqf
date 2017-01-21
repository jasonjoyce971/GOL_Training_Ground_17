//diag_log format["createSquad called, _this: %1", _this];
private _spawnPos = _this select 0;
private _side = _this select 1;
private _groupTaxi = 0;

switch (_side)do
{
	case WEST:
	{
		// TODO: use some preconfigured fireteam setup
		_groupTaxi = createGroup west;
		"B_Soldier_F" createUnit [_spawnPos, _groupTaxi,"",0.6, "CORPORAL"];
		"B_soldier_AR_F" createUnit [_spawnPos, _groupTaxi,"",0.3, "PRIVATE"];
		"B_Soldier_F" createUnit [_spawnPos, _groupTaxi,"",0.5, "PRIVATE"];
		"B_Soldier_F" createUnit [_spawnPos, _groupTaxi,"",0.5, "PRIVATE"];
		"B_Soldier_F" createUnit [_spawnPos, _groupTaxi,"",0.5, "PRIVATE"];
	};
	case EAST:
	{
		// TODO: use some preconfigured fireteam setup
		_groupTaxi = createGroup east;
		"O_Soldier_F" createUnit [_spawnPos, _groupTaxi,"",0.6, "CORPORAL"];
		"O_soldier_AR_F" createUnit [_spawnPos, _groupTaxi,"",0.3, "PRIVATE"];
		"O_Soldier_F" createUnit [_spawnPos, _groupTaxi,"",0.5, "PRIVATE"];
		"O_Soldier_F" createUnit [_spawnPos, _groupTaxi,"",0.5, "PRIVATE"];
		"O_Soldier_F" createUnit [_spawnPos, _groupTaxi,"",0.5, "PRIVATE"];
	};
	default
	{
		hint "Code Break in createsquad.sqf side selection switch";
	};
};
	
_groupTaxi