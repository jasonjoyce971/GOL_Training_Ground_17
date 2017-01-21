
if (isMultiplayer && hasInterface) exitWith {false};		// Ensures only server or HC runs this script

switch (_this select 0) do {
	Private ["_Array","_SpawnArray","_Temp","_Index"];
	
	case 1: {	// FOB Almyra: CQB Course 1
	MissionNameSpace setVariable ["Spawning",True,true];
	
	_Array = // Positions randomly select
	[
		[[23343,18845.9,0.00143886],159.086,"UP"],[[23352.8,18846.1,0.00143886],247.85,"Middle"],[[23353.5,18839.2,0.00143886],272.889,"Middle"],[[23350.4,18831.1,0.00143886],346.684,"UP"],[[23352.4,18828,0.00143886],262.538,"Middle"],[[23348.1,18829.7,0.691439],303.483,"UP"],[[23351.9,18820.7,0.00143886],316.257,"UP"],[[23344.2,18821.9,0.00143886],3.02379,"UP"],[[23350.4,18816.7,0.00143886],273.801,"UP"],[[23349.8,18810.8,0.00143886],304.672,"UP"],[[23346.5,18812,0.00143886],337.985,"Middle"],[[23353.9,18852.3,0.00143886],165.341,"UP"],[[23344,18849.5,0.00143886],106.757,"UP"],[[23348.8,18856.2,0.00143886],168.075,"UP"],[[23344,18853.7,0.00143886],153.69,"UP"],[[23342,18857.3,0.00143886],159.792,"UP"],[[23350.3,18857.4,0.00143886],157.935,"Middle"],[[23358.3,18844.6,0.00143886],356.138,"UP"],[[23355.3,18847.3,0.00143886],11.527,"UP"],[[23360.4,18856.4,0.00143886],274.429,"Middle"],[[23361.1,18851.9,0.00143886],271.058,"Middle"],[[23364.4,18852.8,0.00143886],291.518,"Middle"],[[23366.3,18856.2,0.00143886],237.485,"Middle"],[[23366.5,18849.6,0.1672],148.983,"UP"],[[23365.8,18847.1,0.167201],68.5458,"Middle"],[[23368.3,18848.8,0.00143886],349.481,"UP"],[[23368.5,18844.1,0.00143886],278.894,"Middle"],[[23364.5,18847.6,0.00143886],230.968,"UP"],[[23355.9,18839.8,0.00143886],56.8543,"Middle"],[[23355.5,18836.1,0.00143886],68.3772,"Middle"],[[23374.1,18839.5,0.00143886],288.738,"Middle"],[[23368,18833.2,0.17978],7.10126,"UP"],[[23364.1,18833.4,0.17978],358.189,"UP"],[[23361.9,18833.6,0.17978],358.415,"UP"],[[23364.7,18829.2,0.17978],332.818,"UP"],[[23366,18829.4,0.17978],58.5023,"UP"],[[23368.3,18827.2,0.17978],79.1183,"UP"],[[23361.7,18826.7,0.179779],291.118,"UP"],[[23362,18824.7,0.00143886],293.547,"Middle"],[[23355.3,18816.5,0.00143886],52.0915,"Down"],[[23365.1,18813.1,0.00143886],352.842,"Middle"],[[23366.4,18816.3,0.00143886],293.229,"UP"],[[23373.3,18816.8,0.00143886],77.7124,"UP"],[[23371,18810.3,0.00143886],292.576,"UP"],[[23376.6,18816.6,0.00143886],198.511,"UP"],[[23388.8,18813.2,0.00143886],242.829,"UP"],[[23386.5,18817.3,0.00143886],184.924,"UP"],[[23395.9,18815.8,0.00143886],269.349,"Down"],[[23392.2,18810.5,0.00143886],350.525,"Middle"],[[23396.7,18812.2,0.00143886],296.067,"Middle"],[[23383.7,18822.5,0.00143886],221.864,"Middle"],[[23384.7,18832.2,0.00143886],216.551,"Middle"],[[23384.6,18835.3,0.00143886],212.658,"UP"],[[23382.4,18840.2,0.00143886],181.625,"Middle"],[[23387.6,18837.7,0.00143886],220.33,"Middle"],[[23389.8,18832.7,0.00143886],236.148,"UP"],[[23389.4,18827.3,0.00143886],249.588,"UP"],[[23389.1,18821.5,0.00143886],277.146,"UP"],[[23394.6,18829.5,0.00143886],179.874,"UP"],[[23397,18833,0.00143886],184.335,"UP"],[[23394.6,18837.4,0.00143886],176.009,"UP"],[[23395.3,18842.1,0.00143886],177.08,"Down"],[[23390.1,18846.4,0.00143886],153.128,"Middle"],[[23393.9,18851.9,0.00143886],177.117,"UP"],[[23396.4,18852.1,0.00143886],170.974,"UP"],[[23384.5,18846.3,0.00143886],128.256,"Middle"],[[23387.4,18856.5,0.00143886],157.327,"UP"],[[23393.6,18854.8,0.00143886],277.739,"UP"],[[23396.4,18853.7,0.00143886],331.037,"Middle"],[[23383.4,18856.2,0.00143886],173.211,"Middle"],[[23382.9,18847,0.00143886],358.802,"Down"],[[23380.1,18848.2,0.00143886],141.212,"UP"],[[23380.5,18856.9,0.00143886],212.587,"UP"],[[23376.1,18854.2,0.00143886],44.8335,"UP"],[[23378.9,18853.4,0.00143886],352.704,"UP"],[[23376.4,18851.7,0.00143886],96.2972,"UP"],[[23374.5,18854.3,0.00143886],181.516,"Middle"],[[23374,18857.1,0.00143886],208.113,"UP"],[[23371.3,18846.2,0.00143886],3.63284,"Middle"],[[23377.7,18844.5,0.00143886],274.415,"Down"],[[23378.1,18848.2,0.00143886],179.256,"UP"],[[23376,18846.3,0.00143886],24.6623,"Middle"],[[23378.6,18849.9,0.00143886],240.842,"UP"],
		
		// Static (It's just one but multiplied for higher chance of being present)
		[[23380.8,18840.4,0.00143886],183.454,"RHS_M2StaticMG_WD"],[[23380.8,18840.4,0.00143886],183.454,"RHS_M2StaticMG_WD"],[[23380.8,18840.4,0.00143886],183.454,"RHS_M2StaticMG_WD"],[[23380.8,18840.4,0.00143886],183.454,"RHS_M2StaticMG_WD"],[[23380.8,18840.4,0.00143886],183.454,"RHS_M2StaticMG_WD"],[[23380.8,18840.4,0.00143886],183.454,"RHS_M2StaticMG_WD"],[[23380.8,18840.4,0.00143886],183.454,"RHS_M2StaticMG_WD"],[[23380.8,18840.4,0.00143886],183.454,"RHS_M2StaticMG_WD"],[[23380.8,18840.4,0.00143886],183.454,"RHS_M2StaticMG_WD"],[[23380.8,18840.4,0.00143886],183.454,"RHS_M2StaticMG_WD"]
	];
	
	_SpawnArray = [];
	_Index = 0;
	While {35 >= _Index} do
	{
		_Temp = _Array call BIS_fnc_SelectRandom;
		if !(_Temp in _SpawnArray) then 
		{
			_SpawnArray pushback _Temp;
			_Index = _Index +1;
		};	
	};
	{[_x] call GOL_Fnc_CreateAIStatic} ForEach _SpawnArray;
	
	[[[],{SystemChat "F.O.B Almyra: CQB Course 1, AI spawned."}], "BIS_FNC_SPAWN", true] call BIS_FNC_MP;
	MissionNameSpace setVariable ["Spawning",False,true];
	};
	

	case 2: {	// FOB Almyra: CQB Course 2
	MissionNameSpace setVariable ["Spawning",True,true];
	
	_Array = // Positions randomly selected
	[
		[[23342.2,18781.9,0.00143886],87.9464,"Middle"],[[23347,18786,0.00143886],265.363,"UP"],[[23352.1,18791.3,0.00143886],273.922,"UP"],[[23345.8,18793.3,0.00143886],231.949,"UP"],[[23346.2,18768.2,0.00143886],187.974,"UP"],[[23345.3,18752.5,0.00143886],313.469,"Middle"],[[23342.3,18749.7,0.00143886],86.5138,"Middle"],[[23341.8,18747.5,0.00143886],87.1545,"UP"],[[23350.7,18750.7,0.00143886],19.4921,"UP"],[[23347.1,18771.4,0.00143886],120.17,"Middle"],[[23356,18775.8,0.00143886],216.295,"Middle"],[[23358.1,18769.2,0.00143886],147.117,"UP"],[[23364.6,18766.9,0.00143886],256.653,"UP"],[[23355.8,18760,0.00143886],35.064,"UP"],[[23354.6,18748.3,0.00143886],3.86926,"Down"],[[23364.1,18761.1,0.00143886],232.679,"Middle"],[[23371.2,18757.9,0.00143886],274.682,"Middle"],[[23372.9,18747.1,0.00143886],276.938,"UP"],[[23363.4,18756.1,0.23144],13.7558,"UP"],[[23363.4,18756.1,0.23144],13.7558,"UP"],[[23359.7,18749.7,0.00143886],0.748557,"Middle"],[[23378.4,18750.1,0.00143886],225.984,"UP"],[[23375.4,18755.7,0.00143886],5.45957,"Middle"],[[23367.3,18769.1,0.00143886],139.227,"Middle"],[[23367.2,18773.3,0.00143886],103.89,"Middle"],[[23373.6,18779.8,0.00143886],272.577,"UP"],[[23380.2,18769.7,0.00143886],309.183,"Down"],[[23387.9,18792.2,1.66743],281.101,"UP"],[[23369.8,18784,0.00143886],97.7781,"UP"],[[23373.4,18784.4,0.594252],24.2315,"UP"],[[23383.9,18787.4,0.684151],271.528,"UP"],[[23388.4,18788.9,0.603113],159.294,"UP"],[[23386.3,18780.8,0.723528],326.105,"UP"],[[23391.9,18788.8,0.603114],245.836,"UP"],[[23390.6,18782.2,3.20312],358.873,"UP"],[[23397.3,18783,0.00143886],223.448,"Middle"],[[23396.1,18777.9,0.00143886],280.527,"UP"],[[23392.1,18773.9,0.00143886],278.375,"Down"],[[23388.9,18760.2,0.00143886],5.96373,"UP"],[[23393.3,18769.6,0.00143886],239.037,"UP"],[[23394.6,18749.2,0.00143886],351.486,"UP"],[[23389,18749.2,0.00143886],40.6023,"UP"],[[23386.9,18754.8,0.00143886],99.051,"UP"],[[23361.8,18791.1,0.00143886],191.147,"Middle"],[[23354.5,18792.1,0.00143886],193.946,"Middle"],[[23359.4,18785.9,0.00143886],231.815,"Middle"],[[23349.9,18786.7,0.00143886],198.011,"Middle"], // Soldiers

		// Static (It's just one but multiplied for higher chance of being there)		
		[[23381.2,18752.6,0.00143886],347.905,"RHS_M2StaticMG_WD"],[[23381.2,18752.6,0.00143886],347.905,"RHS_M2StaticMG_WD"],[[23381.2,18752.6,0.00143886],347.905,"RHS_M2StaticMG_WD"],[[23381.2,18752.6,0.00143886],347.905,"RHS_M2StaticMG_WD"],[[23381.2,18752.6,0.00143886],347.905,"RHS_M2StaticMG_WD"]
	];

	_SpawnArray = [];
	_Index = 0;
	While {30 >= _Index} do
	{
		_Temp = _Array call BIS_fnc_SelectRandom;
		if !(_Temp in _SpawnArray) then 
		{
			_SpawnArray pushback _Temp;
			_Index = _Index +1;
		};	
	};
	{[_x] call GOL_Fnc_CreateAIStatic} ForEach _SpawnArray;
	
	[[[],{SystemChat "F.O.B Almyra: CQB Course 2, AI spawned."}], "BIS_FNC_SPAWN", true] call BIS_FNC_MP;
	MissionNameSpace setVariable ["Spawning",False,true];
	};

	
	case 3: {	// AA Zone planes
		MissionNameSpace setVariable ["Spawning",True,true];
		Private ["_PlaneType","_PilotType"];
		// Select Plane based on side
		switch (EnemySide) do
		{
			case West: {_PlaneType = "B_Plane_CAS_01_F"; _PilotType = "B_Pilot_F"};
			case East: {_PlaneType = "O_Plane_CAS_02_F"; _PilotType = "O_Pilot_F"};
			case Independent: {_PlaneType = "I_Plane_Fighter_03_AA_F"; _PilotType = "I_Pilot_F"};
			default {SystemChat "incorrect side, no plane type selected"};
		};
		sleep 0.5;

		// Create plan and Pilot
		_Veh = CreateVehicle [_PlaneType, (getMarkerPos "PlaneSAD"), [], 100, "FLY"];
		_Veh SetPosATL [getPos _Veh select 0, getPos _Veh select 1, ((getPos _Veh select 2) + 200)];
		_Veh SetDir (random 360);
		_Dir = Direction _Veh;
		_Speed = Velocity _Veh;
		_Veh setVelocity 
		[
			((_speed select 1) * sin _dir) - ((_speed select 0) * cos _dir),
			((_speed select 0) * sin _dir) + ((_speed select 1) * cos _dir),
			_speed select 2
		];
		
		_Grp = CreateGroup EnemySide;
		_Pilot = _Grp CreateUnit [_PilotType, [0,0,200], [], 0, "FLY"];
		_Pilot AssignAsDriver _Veh;
		[_Pilot] OrderGetIn True;
		_Pilot MoveInDriver _Veh;
		_Pilot SetSkill 0.5;
		RemoveBackpack _Pilot;

		// Create waypoint
		_Pos = [(getMarkerPos "PlaneSAD"), (100 + (random 150)), (random 360)] call BIS_fnc_relPos;

		_Grp addWaypoint [_Pos, 0, 1];
		[_Grp,1] SetWaypointType "SAD";
		[_Grp,1] setWaypointBehaviour "AWARE";
		[_Grp,1] setWaypointCombatMode "RED";
		[_Grp,1] setWaypointSpeed "AUTO";

		// Remove wreck and pilot after death
		[_Veh,_Pilot] Spawn
		{
			_Veh = _This select 0;
			_Pilot = _This select 1;
			
			_Time = Time + 900;
			WaitUntil {sleep 10; (!Alive _Veh) or (!Alive _Pilot) or (_Time < Time)};
			if (_Time < Time) then 
			{
				DeleteVehicle _Pilot; 
				DeleteVehicle _Veh;
			} else {
				DeleteVehicle _Pilot;
				Sleep 300;
				DeleteVehicle _Veh;
			};
		};
		sleep 1;
		
		[[[],{SystemChat "AI plane has been spawned at the AA Zone"}], "BIS_FNC_SPAWN", true] call BIS_FNC_MP;
		MissionNameSpace setVariable ["Spawning",False,true];
	};
	
	
	case 4: {   // MRAP for AA Zone
		MissionNameSpace setVariable ["Spawning",True,true];
		Private ["_VehType","_GunnerType"];

		// Select Vehicle
		switch (EnemySide) do
		{
			case West: {_VehType = "B_MRAP_01_hmg_F"; _GunnerType = "B_Soldier_F"};
			case East: {_VehType = "O_MRAP_02_hmg_F"; _GunnerType = "O_Soldier_F"};
			case Independent: {_VehType = "I_MRAP_03_hmg_F"; _GunnerType = "I_Soldier_F"};
			default {SystemChat "incorrect side, no vehicle type selected"};
		};

		_Group = Creategroup EnemySide;
		_Marker = (["mrkSpawn1", "mrkspawn2", "mrkspawn3", "mrkspawn4", "mrkspawn5", "mrkspawn6", "mrkspawn7", "mrkspawn8", "mrkspawn9", "mrkspawn10", "mrkspawn11", "mrkspawn12"] call BIS_FNC_SelectRandom);

		// Spawn Sequence
		_veh = createVehicle [_VehType, getmarkerpos _marker, [], 0, "NONE"];
		Sleep 1;

		_gunner = _Group createUnit [_GunnerType, [0,0,200], [], 0, "NONE"];
		_gunner setRank "PRIVATE";
		_gunner assignAsGunner _veh;
		[_gunner] orderGetIn true;
		_gunner MoveInGunner _veh;
		_gunner setSkill 0.5;

		_Group SetBehaviour "COMBAT";
		_Group setCombatMode "RED";
		sleep 1;
		
		[[[],{SystemChat "AI MRAP has been spawned at the AA Zone"}], "BIS_FNC_SPAWN", true] call BIS_FNC_MP;
		MissionNameSpace setVariable ["Spawning",False,true];
	};
	
	
	case 5: {   // LAV for AA Zone
		MissionNameSpace setVariable ["Spawning",True,true];
		Private ["_VehType","_GunnerType"];

		// Select Vehicle
		switch (EnemySide) do
		{
			case West: {_VehType = "B_APC_Wheeled_01_cannon_F"; _GunnerType = "B_Soldier_F"};
			case East: {_VehType = "O_APC_Wheeled_02_rcws_F"; _GunnerType = "O_Soldier_F"};
			case Independent: {_VehType = "I_APC_Wheeled_03_cannon_F"; _GunnerType = "I_Soldier_F"};
			default {SystemChat "incorrect side, no vehicle type selected"};
		};

		_Group = Creategroup EnemySide;
		_Marker = (["mrkSpawn1", "mrkspawn2", "mrkspawn3", "mrkspawn4", "mrkspawn5", "mrkspawn6", "mrkspawn7", "mrkspawn8", "mrkspawn9", "mrkspawn10", "mrkspawn11", "mrkspawn12"] call BIS_FNC_SelectRandom);

		// Spawn Sequence
		_veh = createVehicle [_VehType, getmarkerpos _marker, [], 0, "NONE"];
		Sleep 1;
		
		_commander = _Group createUnit [_GunnerType, getmarkerpos _marker, [], 0, "NONE"];
		_commander setRank "SERGEANT";
		_commander assignAsCommander _veh;
		[_commander] orderGetIn true;
		_commander moveinCommander _veh;
		_commander setSkill 0.5;
		Sleep 1;
		
		_gunner = _Group createUnit [_GunnerType, [0,0,200], [], 0, "NONE"];
		_gunner setRank "PRIVATE";
		_gunner assignAsGunner _veh;
		[_gunner] orderGetIn true;
		_gunner MoveInGunner _veh;
		_gunner setSkill 0.5;

		_Group SetBehaviour "COMBAT";
		_Group setCombatMode "RED";
		sleep 1;
		
		[[[],{SystemChat "AI LAV has been spawned at the AA Zone"}], "BIS_FNC_SPAWN", true] call BIS_FNC_MP;
		MissionNameSpace setVariable ["Spawning",False,true];
	};
	
	
	case 6: {   // AA for AA Zone
		MissionNameSpace setVariable ["Spawning",True,true];
		Private ["_VehType","_GunnerType"];

		// Select Vehicle
		switch (EnemySide) do
		{
			case West: {_VehType = "B_APC_Tracked_01_AA_F"; _GunnerType = "B_Soldier_F"};
			case East: {_VehType = "O_APC_Tracked_02_AA_F"; _GunnerType = "O_Soldier_F"};
			case Independent: {_VehType = "I_APC_Wheeled_03_cannon_F"; _GunnerType = "I_Soldier_F"};
			default {SystemChat "incorrect side, no vehicle type selected"};
		};

		_Group = Creategroup EnemySide;
		_Marker = (["mrkSpawn1", "mrkspawn2", "mrkspawn3", "mrkspawn4", "mrkspawn5", "mrkspawn6", "mrkspawn7", "mrkspawn8", "mrkspawn9", "mrkspawn10", "mrkspawn11", "mrkspawn12"] call BIS_FNC_SelectRandom);

		// Spawn Sequence
		_veh = createVehicle [_VehType, getmarkerpos _marker, [], 0, "NONE"];
		Sleep 1;
		
		_commander = _Group createUnit [_GunnerType, getmarkerpos _marker, [], 0, "NONE"];
		_commander setRank "SERGEANT";
		_commander assignAsCommander _veh;
		[_commander] orderGetIn true;
		_commander moveinCommander _veh;
		_commander setSkill 0.5;
		Sleep 1;
		
		_gunner = _Group createUnit [_GunnerType, [0,0,200], [], 0, "NONE"];
		_gunner setRank "PRIVATE";
		_gunner assignAsGunner _veh;
		[_gunner] orderGetIn true;
		_gunner MoveInGunner _veh;
		_gunner setSkill 0.5;

		_Group SetBehaviour "COMBAT";
		_Group setCombatMode "RED";
		sleep 1;
		
		[[[],{SystemChat "AI AA Tank has been spawned at the AA Zone"}], "BIS_FNC_SPAWN", true] call BIS_FNC_MP;
		MissionNameSpace setVariable ["Spawning",False,true];
	};
};
