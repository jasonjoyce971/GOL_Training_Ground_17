/*
 * Script to link actions to fnc_MP calls for spawning
 *
 */
 
_IncomingAction = _this select 3 select 0;
 
 switch (_IncomingAction) do 
{
	case "solo":
	{	
		soloPlay = true;
		exerciseCallsign = "Raven";
		exerciseNumber = "0";
		publicVariable "exerciseCallsign";
		publicVariable "exerciseNumber";
		publicVariable "soloPlay";
		[[[side player], {_this execVM "Scripts\Spawn\rav1.sqf"}], "BIS_FNC_SPAWN", false] call BIS_FNC_MP;
	};
	case "rav1":
	{	
		exerciseCallsign = "Raven";
		exerciseNumber = "1";
		publicVariable "exerciseCallsign";
		publicVariable "exerciseNumber";
		[[[side player], {_this execVM "Scripts\Spawn\rav1.sqf"}], "BIS_FNC_SPAWN", false] call BIS_FNC_MP;
	};
	case "rav2":
	{	
		exerciseCallsign = "Raven";
		exerciseNumber = "2";
		publicVariable "exerciseCallsign";
		publicVariable "exerciseNumber";
		[[[side player], {_this execVM "Scripts\Spawn\rav1.sqf"}], "BIS_FNC_SPAWN", false] call BIS_FNC_MP;
	};
	case "rav3":
	{	
		exerciseCallsign = "Raven";
		exerciseNumber = "3";
		publicVariable "exerciseCallsign";
		publicVariable "exerciseNumber";
		[[[side player], {_this execVM "Scripts\Spawn\rav1.sqf"}], "BIS_FNC_SPAWN", false] call BIS_FNC_MP;
	};
	case "gia1":
	{	
		exerciseCallsign = "Giant";
		exerciseNumber = "1";
		publicVariable "exerciseCallsign";
		publicVariable "exerciseNumber";
		[[[side player], {_this execVM "Scripts\Spawn\rav1.sqf"}], "BIS_FNC_SPAWN", false] call BIS_FNC_MP;
	};
	case "gia2":
	{	
		exerciseCallsign = "Giant";
		exerciseNumber = "2";
		publicVariable "exerciseCallsign";
		publicVariable "exerciseNumber";
		[[[side player], {_this execVM "Scripts\Spawn\rav1.sqf"}], "BIS_FNC_SPAWN", false] call BIS_FNC_MP;
	};
	case "con1":
	{	
		exerciseCallsign = "Condor";
		exerciseNumber = "1";
		publicVariable "exerciseCallsign";
		publicVariable "exerciseNumber";
		[[[side player], {_this execVM "Scripts\Spawn\rav1.sqf"}], "BIS_FNC_SPAWN", false] call BIS_FNC_MP;
	};
	case "dragon":
	{	
		exerciseCallsign = "Dragon";
		publicVariable "exerciseCallsign";
		[[[side player], {_this execVM "Scripts\Spawn\rav1.sqf"}], "BIS_FNC_SPAWN", false] call BIS_FNC_MP;
	};
	default
	{
		hint "Code Break in fncMPInterface Main Switch/Case";
	};
};
