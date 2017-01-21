//diag_log format["createEnemySquad called, _this: %1", _this];
private _centrePos = _this select 0;
private _includeAA = _this select 1;
private _side = _this select 2;

// Some variance
private _centreCoords = getPos _centrePos;
_centreCoords set [0, ((_centreCoords select 0) + 100 + (floor random 300))];
_centreCoords set [1, ((_centreCoords select 1) + 100 + (floor random 300))];

private _enemyPosition = _centreCoords findEmptyPosition [0,100];

switch (_side)do
{
	case WEST:
	{
		// TODO: use some preconfigured fireteam setup
		private _groupEnemy = createGroup east;
		"O_Soldier_F" createUnit [_enemyPosition, _groupEnemy,"",0.6, "CORPORAL"];
		"O_Soldier_F" createUnit [_enemyPosition, _groupEnemy,"",0.1, "PRIVATE"];
		"O_soldier_M_F" createUnit [_enemyPosition, _groupEnemy,"",0.3, "PRIVATE"];
		"O_soldier_AR_F" createUnit [_enemyPosition, _groupEnemy,"",0.3, "PRIVATE"];
		"O_soldier_M_F" createUnit [_enemyPosition, _groupEnemy,"",0.3, "PRIVATE"];
		"O_soldier_AR_F" createUnit [_enemyPosition, _groupEnemy,"",0.3, "PRIVATE"];
		"O_soldier_M_F" createUnit [_enemyPosition, _groupEnemy,"",0.3, "PRIVATE"];
		"O_soldier_AR_F" createUnit [_enemyPosition, _groupEnemy,"",0.3, "PRIVATE"];
		"O_soldier_M_F" createUnit [_enemyPosition, _groupEnemy,"",0.3, "PRIVATE"];
		"O_soldier_AR_F" createUnit [_enemyPosition, _groupEnemy,"",0.3, "PRIVATE"];

		if (_includeAA) then
		{
			"O_soldier_AA_F" createUnit [_enemyPosition, _groupEnemy,"",0.75, "CORPORAL"];
		};
	};
	case EAST:
	{
		// TODO: use some preconfigured fireteam setup
		private _groupEnemy = createGroup west;
		"B_Soldier_F" createUnit [_enemyPosition, _groupEnemy,"",0.6, "CORPORAL"];
		"B_Soldier_F" createUnit [_enemyPosition, _groupEnemy,"",0.1, "PRIVATE"];
		"B_soldier_M_F" createUnit [_enemyPosition, _groupEnemy,"",0.3, "PRIVATE"];
		"B_soldier_AR_F" createUnit [_enemyPosition, _groupEnemy,"",0.3, "PRIVATE"];
		"B_soldier_M_F" createUnit [_enemyPosition, _groupEnemy,"",0.3, "PRIVATE"];
		"B_soldier_AR_F" createUnit [_enemyPosition, _groupEnemy,"",0.3, "PRIVATE"];
		"B_soldier_M_F" createUnit [_enemyPosition, _groupEnemy,"",0.3, "PRIVATE"];
		"B_soldier_AR_F" createUnit [_enemyPosition, _groupEnemy,"",0.3, "PRIVATE"];
		"B_soldier_M_F" createUnit [_enemyPosition, _groupEnemy,"",0.3, "PRIVATE"];
		"B_soldier_AR_F" createUnit [_enemyPosition, _groupEnemy,"",0.3, "PRIVATE"];

		if (_includeAA) then
		{
			"B_soldier_AA_F" createUnit [_enemyPosition, _groupEnemy,"",0.75, "CORPORAL"];
		};
	};
	default
	{
		hint "Code Break in createenemysquads.sqf side selection switch";
	};
};

//diag_log format["createEnemySquad %1 positioned to %2", _groupEnemy, _enemyPosition];

[_groupEnemy]