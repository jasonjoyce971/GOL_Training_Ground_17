NEKY_ATGActions = 
{
	Private ["_Laptop","_this"];
	_Laptop = _this select 0;
	
	_Laptop addaction ["<t color='#00FF00'>Lock Flight Practice Actions</t>","removeAllActions player",[],10];
	_Laptop addaction ["<t color='#F7FE2E'>Unlock Emergency Practice Actions (HELICOPTER)</t>",
	{
		Player addaction ["<t color='#CCCC00'>Damage Tail Rotor within 2min</t>",{(Sleep (30 + random 90)); vehicle player setHitPointDamage  ["HitVRotor", 0.6],[],1}];
		Player addaction ["<t color='#CC0000'>Destroy Tail Rotor within 2min</t>",{(Sleep (30 + random 90)); vehicle player setHitPointDamage  ["HitVRotor", 1],[],1}];
		player addaction ["<t color='#CC0000'>Destroy Engine within 2min</t>",{(Sleep (30 + random 90)); vehicle player setHitPointDamage ["HitEngine", 1],[],1}];
		player addaction ["<t color='#33CC33'>Repair Helicopter</t>",{vehicle player SetDamage 0},[],0.5];
		player addaction ["<t color='#33CC33'>Refuel Helicopter</t>",{vehicle player SetFuel 1},[],0.5];
	},[],10];
	_Laptop addaction ["<t color='#F7FE2E'>Unlock Flight Practice Actions</t>",
	{
		player addaction ["<t color='#33CC33'>Repair Vehicle</t>",{vehicle player SetDamage 0},[],0.5,false,true];
		player addaction ["<t color='#33CC33'>Refuel Vehicle</t>",{vehicle player SetFuel 1},[],0.5,false,true];
		player addaction ["<t color='#33CC33'>Rearm Vehicle</t>",{vehicle player SetVehicleAmmo 1},[],0.5,false,true];
		[Player,"- Spawn MRAP at AA Zone",4] call NEKY_fnc_HandleVRv2;
		[Player,"- Spawn LAV at AA Zone",5] call NEKY_fnc_HandleVRv2;
		[Player,"- Spawn AA-Tank at AA Zone",6] call NEKY_fnc_HandleVRv2;
		[Player,"- Spawn plane at AA Zone",3] call NEKY_fnc_HandleVRv2;
	},[],10,false,true];
};

NEKY_DoorCloser =
{
	Private ["_This","_Location","_Radius","_State"];
	_Location = _This select 0;
	_Radius = _This select 1;
	_State = _This select 2;
	if (_State == "close") then {_State = 0} else {_State = 1};
	[getpos _Location,_Radius,_State] spawn { sleep 1;  {  private "_b";  _b = _x;  for "_i" from 0 to 10 do {  _b animate ["door_" + str _i + "_rot",(_this select 2)]  };  } foreach ((_this select 0) nearobjects (_this select 1))  }; 
};

NEKY_SetVariables =
{
	Private ["_This","_Variables","_Boolean"];
	_Variables = _This select 0;
	_Boolean = _This select 1;
	
	{call compile format ["%1 = %2;",_x,_Boolean]} forEach _Variables;
	sleep 1;
	{PublicVariable _x} forEach _Variables;
};

// ========================================
// F.O.B Windstorm
// ========================================
Pole1 addAction ["<t color='#58D3F7'>Fast Travel to Planes</t>","player setposATL (getpos pole2)"]; 
Pole1 addAction ["<t color='#58D3F7'>Fast Travel to F.O.B Almyra</t>","player setposATL (getpos pole10)"];
Pole1 addAction ["<t color='#58D3F7'>Fast Travel to F.O.B Ocelot</t>","player setposATL (getpos pole3)"]; 
Pole1 addAction ["<t color='#58D3F7'>Fast Travel to F.O.B Cluster</t>","player setposATL (getpos pole5)"]; 
Pole1 addAction ["<t color='#58D3F7'>Fast Travel to Outpost Dusty (Old Airfield)</t>","player setposATL (getpos pole9)"];
Pole1 addAction ["<t color='#58D3F7'>Fast Travel to Staging Point Predator</t>","player setposATL (getpos pole4)"]; 
Pole1 addAction ["<t color='#58D3F7'>Fast Travel to Staging Point Penumbra</t>","player setposATL (getpos pole6)"]; 
Pole1 addAction ["<t color='#58D3F7'>Fast Travel to Staging Point Woody</t>","player setposATL (getpos pole8)"]; 
Pole1 addAction ["<t color='#58D3F7'>Fast Travel to Staging Point Eternity</t>","player setposATL (getpos pole11)"];
Pole1 addAction ["<t color='#58D3F7'>Fast Travel to Staging Point Kalithea</t>","player setposATL (getpos pole12)"];
Pole1 addAction ["<t color='#58D3F7'>Fast Travel to Jaeger Range</t>","player setposATL (getpos poleJ1)"]; // Addition 1
Pole1 addAction ["<t color='#00FF00'>Fast Travel to Mobile HQ#1</t>","Player moveincargo MobileHQ1"]; 
Pole1 addAction ["<t color='#00FF00'>Fast Travel to Mobile HQ#2</t>","Player moveincargo MobileHQ2"]; 
Pole1 addAction ["<t color='#00FF00'>Fast Travel to Mobile HQ#3</t>","Player moveincargo MobileHQ3"]; 
Pole1 addAction ["<t color='#00FF00'>Fast Travel to Mobile HQ#4</t>","Player moveincargo MobileHQ4"]; 

[Laptop14] call NEKY_ATGActions;

["F.O.B Windstorm Military Vehicles",Laptop1,"1100","1149","","MWindstorm"] Call NEKY_fnc_HandleVehicles;
["F.O.B Windstorm Miscellaneous Vehicles",Laptop1,"40100","40149","Civilian","CWindstorm"] call NEKY_fnc_HandleVehicles;
[Laptop1, "Windstorm", "F.O.B Windstorm Objects", ["Windstorm"], "OWindstorm"] call NEKY_fnc_AddObjectAction;
["Planes",Laptop5,"1450","1499","","MPlanes"] call NEKY_fnc_HandleVehicles;

[Laptop10] call NEKY_fnc_HandleWeather;

[Laptop32,True,["spawn1200","Spawn1201","Spawn1202","Spawn1203","Spawn1204","Spawn1205","Spawn1206","Spawn1207","Spawn1208","Spawn1209","Spawn1210","Spawn1211","Spawn1212","Spawn1213","Spawn1214","Spawn1215","Spawn1216","Spawn1217","Spawn1218","Spawn1219","Spawn1220","Spawn1221","Spawn1222","Spawn1223","Spawn1224","Spawn1225","Spawn1226"],[""],1,1,"Urban Combat",1,0.05,false,0.2] call NEKY_fnc_HandleVR;
[Laptop32,True,["spawn1228","spawn1229","spawn1230","spawn1231","spawn1232","spawn1233","spawn1234"],[""],1,1,"Urban Combat Buildings",1,0.05,false,4] call NEKY_fnc_HandleVR;

Laptop4 addAction ["Raise Targets",{{ _x animate["terc", 0]} forEach (nearestObjects [BasicRange1, ['TargetBase'], 15])}]; 

// ========================================
// Planes
// ========================================
Pole2 addAction ["<t color='#58D3F7'>Fast Travel to F.O.B Windstorm</t>","Player setposATL (getpos pole1)"];

// ========================================
// F.O.B Ocelot
// ========================================
Pole3 addAction ["<t color='#58D3F7'>Fast Travel to F.O.B Windstorm</t>","Player setposATL (getpos pole1)"];
Laptop18 addAction ["<t color ='#F7FE2E'>Training, Ground (Edge of the wall, South)</t>",{ExecVM "Scripts\Popup Targets\AGARCourseGround.sqf"}];
Laptop18 addAction ["<t color ='#F7FE2E'>Training, Tower (Watch tower, East)</t>",{ExecVM "Scripts\Popup Targets\AGARCourseTower.sqf"}];
Laptop18 addAction ["<t color ='#FF8000'>Audio off/on</t>",{if (AGARAudio) then {AGARAudio = False; hint "Audio Turned off"} else {AGARAudio = True; hint "Audio turned on"};}];
Laptop18 addAction ["<t color ='#FF8000'>Hints off/on</t>",{if (AGARHints) then {AGARHints = False; hint "Hints turned off"} else {AGARHints = True; hint "Hints turned on"};}];
Laptop18 addAction ["<t color ='#FF0000'>End Training</t>",{AGARCourse = false;}];

["F.O.B Ocelot Military Vehicles",Laptop23,"1000","1049","","MOcelot"] Call NEKY_fnc_HandleVehicles;
[Laptop23, "Ocelot", "F.O.B Ocelot Objects", ["Ocelot1","Ocelot2","Ocelot3"], "OOcelot"] call NEKY_fnc_AddObjectAction;
["F.O.B Ocelot Munitions",Laptop23,"980250","980299","BOcelot"] call NEKY_fnc_HandleBoxes;

[Laptop2,false,["SpawnMarker"],["wp1","wp2"],50,nil,"50units from the North-West",50,nil,true] call NEKY_fnc_HandleVR;

// ======================================================
// Mine Course
// ======================================================
Laptop16 addaction ["<t color='#FF8000'>Unlock Mine Course Controls</t>",
{
	Player addaction ["<t color='#FF8000'>APERS Mine</t>",{["lane1"] execVM "Scripts\MineCourse\UnitDemonstrations.sqf"}]; 
	Player addaction ["<t color='#FF8000'>APERS Bounding Mine</t>",{["lane2"] execVM "Scripts\MineCourse\UnitDemonstrations.sqf"}];  
	Player addaction ["<t color='#FF8000'>APERS Tripwire Mine</t>",{["lane3"] execVM "Scripts\MineCourse\UnitDemonstrations.sqf"}];  
	Player addaction ["<t color='#FF8000'>Slam Mine</t>",{["lane4"] execVM "Scripts\MineCourse\VehicleDemonstrations.sqf"}];  
	Player addaction ["<t color='#FF8000'>AT Mine</t>",{["lane5"] execVM "Scripts\MineCourse\VehicleDemonstrations.sqf"}]; 
	Player addaction ["<t color='#F7FE2E'>Prepare Course A</t>",{ExecVM "Scripts\MineCourse\MineCourseA.sqf"}];
	Player addaction ["<t color='#F7FE2E'>Prepare Course B</t>",{ExecVM "Scripts\MineCourse\MineCourseB.sqf"}];	
}];
Laptop16 addaction ["<t color='#00FF00'>Lock Mine Course Controls</t>","removeAllActions player"];
Laptop16 addaction ["<t color='#FF0000'>Allow Damage True</t>",{Player allowdamage true; Hint "Vulnerable"}];
Laptop16 addaction ["<t color='#00FF00'>Allow Damage False</t>",{Player allowdamage false; Hint "Invulnerable"}];

// ========================================
// F.O.B Cluster
// ========================================
Pole5 addAction ["<t color='#58D3F7'>Fast Travel to F.O.B Windstorm</t>","Player setposATL (getpos pole1)"];

["F.O.B Cluster Military Vehicles",Laptop24,"1150","1199","","MCluster"] Call NEKY_fnc_HandleVehicles;
[Laptop24, "Cluster", "F.O.B Cluster Objects", ["Cluster1","Cluster2","Cluster3","Cluster4","Cluster5","Cluster6","Cluster7"], "OCluster"] call NEKY_fnc_AddObjectAction;
["F.O.B Cluster Munitions",Laptop24,"980300","980349","BCluster"] Call NEKY_fnc_HandleBoxes;

Laptop3 addAction ["<t color='#F7FE2E'>Make targets pop back up</t>",{nopop = false; publicVariable "nopop";}];

[Laptop6,OcelotFiringRange,"Scripts\Popup Targets\Firing Ranges.sqf"] Call NEKY_fnc_HandleRange;
Laptop6 AddAction ["<t color='#58D3F7'>Qualification</t>",{["Qualification",OcelotFiringRange,MarksmanQualification] execVM "Scripts\Popup Targets\Firing Ranges.sqf"},nil,5,false,true];
Laptop6 AddAction ["<t color='#FF8000'>Cancel current challenge</t>",{FiringRangeCANCEL = True;},nil,5];
[Laptop13,PistolDraw] call NEKY_fnc_HandlePistolDraw;
Laptop31 AddAction ["<t color='#F7FE2E'>LEFT DRILL: Training Mode</t>",{[(nearestObjects [(getpos BurstsFiringDrillWallsLEFT), ["Land_CncWall4_F"], 10]), "Steel_Plate_L_F", 3, "Training", "75m",BurstsDrillLeft] execVM "Scripts\Popup Targets\BurstFiringDrill.sqf"},nil,5,false,true];
Laptop31 AddAction ["<t color='#58D3F7'>LEFT DRILL: Qualification Mode</t>",{[(nearestObjects [(getpos BurstsFiringDrillWallsLEFT), ["Land_CncWall4_F"], 10]), "Steel_Plate_L_F", 3, "Qualification", "75m",BurstsDrillLeft] execVM "Scripts\Popup Targets\BurstFiringDrill.sqf"},nil,5,false,true];
Laptop31 AddAction ["<t color='#F7FE2E'>RIGHT DRILL: Training Mode</t>",{[(nearestObjects [(getpos BurstsFiringDrillWallsRIGHT), ["Land_CncWall4_F"], 10]), "Steel_Plate_L_F", 3, "Training", "50m",BurstsDrillRight] execVM "Scripts\Popup Targets\BurstFiringDrill.sqf"},nil,5,false,true];
Laptop31 AddAction ["<t color='#58D3F7'>RIGHT DRILL: Qualification Mode</t>",{[(nearestObjects [(getpos BurstsFiringDrillWallsRIGHT), ["Land_CncWall4_F"], 10]), "Steel_Plate_L_F", 3, "Qualification", "50m",BurstsDrillRight] execVM "Scripts\Popup Targets\BurstFiringDrill.sqf"},nil,5,false,true];

Laptop8 addAction ["<t color='#58D3F7'>Raise all targets",{{_x setDamage 0; _x animate["terc", 0]} forEach laneTargets14;}];  
Laptop8 addAction ["<t color='#58D3F7'>Lower all targets",{{_x setDamage 0; _x animate["terc", 1]} forEach laneTargets14;}];  
Laptop8 addAction ["<t color='#F7FE2E'>Challenge - Medium</t>",{ExecVM "scripts\popup targets\Challenge3Medium.sqf"}]; 
Laptop8 addAction ["<t color='#FF8000'>Challenge - Hard</t>",{ExecVM "scripts\popup targets\Challenge3Hard.sqf"}];

// ======================================================
// Staging Point Penumbra
// ======================================================
Pole6 addAction ["<t color='#58D3F7'>Fast Travel to F.O.B Windstorm</t>","Player setposATL (getpos pole1)"];
Pole6 addAction ["<t color='#58D3F7'>Fast Travel to Course End</t>","Player SetposATL (getpos pole7)"]; 

["Staging Point Penumbra Military Vehicles",Laptop9,"1250","1299","","MPenumbra"] Call NEKY_fnc_HandleVehicles;
[Laptop9, "Penumbra", "Staging Point Penumbra Objects", ["Penumbra"], "OPenumbra"] call NEKY_fnc_AddObjectAction;
["Staging Point Penumbra Munitions",Laptop9,"980350","980399","BPenumbra"] Call NEKY_fnc_HandleBoxes;

Laptop9 addAction ["<t color='#00FF00'>Prepare Courses</t>",
{
	Hint "Preparing Course";
	[doorcloser5,1700,"close"] call NEKY_DoorCloser;
	[["TConvoyA1","TConvoyA2","TConvoyA3","TConvoyA4","TConvoyA5","TConvoyA6","TConvoyA7","TConvoyA8"],True] call NEKY_SetVariables;
	
	// Car Bombs & Mine
	[[[],{
		{if (_x in allMines) then {deleteVehicle _x}} forEach (NearestObjects [(getMarkerPos "MrkCharge1Spawn"),[], 15]);
		[] Spawn {_Positions = [[6239.35,11918.6,0.00141525],[6021.96,12666.8,0.00137329],[7448.42,11616.5,0.00148201],[4953.6,12980.9,0.001297]]; Sleep 20; {[(NearestObjects [_x, ["Car"], 15] call BIS_FNC_SelectRandom), "large"] execVM "Scripts\NEKY_CarBomb\NEKY_CarBomb.sqf"} forEach _Positions};
		sleep 0.5;	
		
		_Mine = CreateVehicle ["Sign_Arrow_Large_F", (getmarkerPos "MrkCharge1Spawn"), [], 0, "CAN_COLLIDE"];
		sleep 0.5;
		[_Mine, "medium"] execVM "Scripts\NEKY_Mines\NEKY_Mines.sqf";
	}], "BIS_FNC_SPAWN", False] call BIS_FNC_MP;
	
	sleep 2;
	Hint "Course Prepared";
}]; 

// ======================================================
// Staging Point Penumbra (Course End)
// ======================================================
Pole7 addAction ["<t color='#58D3F7'>Fast Travel to Staging Point Penumbra</t>","player setposATL (getpos pole6)"]; 

// ======================================================
// Staging Point Woody
// ======================================================
Pole8 addAction ["<t color='#58D3F7'>Fast Travel to F.O.B Windstorm</t>","Player setposATL (getpos pole1)"];

["Staging Point Woody Military Vehicles",Laptop12,"1300","1349","","MWoody"] Call NEKY_fnc_HandleVehicles;
[Laptop12, "Woody", "Staging Point Woody Objects", ["Woody"], "OWoody"] call NEKY_fnc_AddObjectAction;
["Staging Point Woody Munitions",Laptop12,"980050","980099","BWoody"] call NEKY_fnc_HandleBoxes;

Laptop12 addAction ["<t color='#00FF00'>Prepare Course (</t><t color='#58D3F7'>Northern</t><t color='#00FF00'>)</t>",
{
	Hint "Preparing Course";
	[["PopupArea1","PopupArea2","PopupArea3","PopupArea4","PopupArea9","PopupArea10","PopupArea11","PopupArea12","PopupArea13","PopupArea14"],True] call NEKY_SetVariables;
	sleep 5;
	Hint "Course Prepared";
}]; 
Laptop12 addAction ["<t color='#00FF00'>Prepare Course (Eastern)",
{
	Hint "Preparing Course";
	[["PopupArea15","PopupArea16","PopupArea17","PopupArea18","PopupArea19","PopupArea20"],True] call NEKY_SetVariables;
	sleep 5;
	Hint "Course Prepared";
}]; 
Laptop12 addAction ["<t color='#00FF00'>Prepare Course (</t><t color='#FF0000'>Southern</t><t color='#00FF00'>)</t>",
{
	Hint "Preparing Course";
	[["PopupArea1","PopupArea2","PopupArea3","PopupArea4","PopupArea5","PopupArea6","PopupArea7","PopupArea8"],True] call NEKY_SetVariables;
	sleep 5;
	Hint "Course Prepared";
}]; 

// ======================================================
// Outpost Dusty
// ======================================================
Pole9 addAction ["<t color='#58D3F7'>Fast Travel to F.O.B Windstorm</t>","Player setposATL (getpos pole1)"];

[Laptop15] call NEKY_ATGActions;

["Outpost Dusty Military Vehicles",Laptop15,"1350","1399","","MDusty"] Call NEKY_fnc_HandleVehicles;
["Outpost Dusty Miscellaneous Vehicles",Laptop15,"40350","40399","CIVILIAN","CDusty"] Call NEKY_fnc_HandleVehicles;
[Laptop15, "Dusty", "Outpost Dusty Objects", ["Dusty"], "ODusty"] call NEKY_fnc_AddObjectAction;
["Outpost Dusty Munitions",Laptop15,"980100","980149","BDusty"] call NEKY_fnc_HandleBoxes;

// ======================================================
// F.O.B Almyra
// ======================================================
Pole10 addAction ["<t color='#58D3F7'>Fast Travel to F.O.B Windstorm</t>","Player setposATL (getpos pole1)"];

["F.O.B Almyra Military Vehicles",Laptop25,"1050","1069","","MAlmyra"] Call NEKY_fnc_HandleVehicles;
[Laptop25, "Almyra", "F.O.B Almyra Objects", ["Almyra1","Almyra2","Almyra3","Almyra4","Almyra5","Almyra6","Almyra7","Almyra8","Almyra9","Almyra10","Almyra11"], "OAlmyra"] call NEKY_fnc_AddObjectAction;
["F.O.B Almyra Munitions",Laptop25,"980200","980249","BAlmyra"] call NEKY_fnc_HandleBoxes;
[Laptop25] call NEKY_ATGActions;

["AT Course Vehicles",Laptop27,"1070","1099","","ATAlmyra"] Call NEKY_fnc_HandleVehicles;
Laptop27 addAction ["<t color='#00FF00'>Spawn Patrolling Vehicles</t>",{[[[],{["vehiclepatrolspawn1",["Vehiclepatrol1","VehiclePatrol2","VehiclePatrol3","VehiclePatrol4","VehiclePatrol5","VehiclePatrol6"]] execVM "Scripts\VehiclePatrol.sqf";}], "BIS_fnc_spawn", false] call BIS_fnc_MP; [[[],{["vehiclepatrolspawn1_1",["Vehiclepatrol1_1","VehiclePatrol2_1","VehiclePatrol3_1","VehiclePatrol4_1","VehiclePatrol5_1","VehiclePatrol6_1"]] execVM "Scripts\VehiclePatrol.sqf";}], "BIS_fnc_spawn", false] call BIS_fnc_MP;}];

[Laptop26,false,["spawn1090"],["wp1051"],25,1,"Static Weapons Targets",50,nil,true] call NEKY_fnc_HandleVR;

[Laptop17,ReflexCourseA1,"Scripts\Popup Targets\ReflexCourse.sqf"] call NEKY_Fnc_HandleRange;
[Laptop21,ReflexCourseB1,"Scripts\Popup Targets\ReflexCourse.sqf"] call NEKY_Fnc_HandleRange;

[Laptop29,"CQB Course 1",1] call NEKY_fnc_HandleVRv2;
Laptop29 addAction ["<t color='#F7FE2E'>Reset doors and static weapons</t>",{[CQB1,40,"close"] call NEKY_DoorCloser; {DeleteVehicle _x} forEach (NearestObjects [CQB1,["RHS_M2StaticMG_WD"],40]); hint "Course reset."}];
[Laptop30,"CQB Course 2",2] call NEKY_fnc_HandleVRv2;
Laptop30 addAction ["<t color='#F7FE2E'>Reset doors and static weapons</t>",{[CQB2,40,"close"] call NEKY_DoorCloser; {DeleteVehicle _x} forEach (NearestObjects [CQB2,["RHS_M2StaticMG_WD"],40]); hint "Course reset."}];

// ======================================================
// Staging Point Eternity
// ======================================================
Pole11 addAction ["<t color='#58D3F7'>Fast Travel to F.O.B Windstorm</t>","Player setposATL (getpos pole1)"];

["Staging Point Eternity Military Vehicles",Laptop20,"1500","1599","","MEternity"] Call NEKY_fnc_HandleVehicles;
[Laptop20, "Eternity", "F.O.B Eternity Objects", ["Eternity1","Eternity2","Eternity3","Eternity4","Eternity5","Eternity6"], "OEternity"] call NEKY_fnc_AddObjectAction;
["Staging Point Eternity Munitions",Laptop20,"980000","980049","Beternity"] call NEKY_fnc_HandleBoxes;

[Laptop33,false,["spawn1500","spawn1501","spawn1502","spawn1503","spawn1504","spawn1505","spawn1506","spawn1507","spawn1508","spawn1509","spawn1510","spawn1511","spawn1512","spawn1513","spawn1514","spawn1515","spawn1516","spawn1517","spawn1518","spawn1519","spawn1520","spawn1521","spawn1522","spawn1523","spawn1524"],[""],1,1,"Targets Vehicle Obstacle Course",1,1,false] call NEKY_fnc_HandleVR;
["Vehicle Obstacle Course Targets",Laptop33,"1548","1549","","VOEternity"] Call NEKY_fnc_HandleVehicles;

Laptop28 addAction["<t color='#F7FE2E'>Buddy Range A</t>",{[["BuddyRange0","BuddyRange1","BuddyRange2","BuddyRange3","BuddyRange4","BuddyRange5"],False] call NEKY_SetVariables; [[[],{[BuddyRangeLoc,0,"Prepare",4] ExecVM "Scripts\Popup Targets\BuddyRangeTargets.sqf";}], "BIS_fnc_Spawn", false,false,false] call BIS_fnc_MP; {deleteVehicle _x} forEach (nearestObjects [BuddyRangeAPopups,['TargetBase'],30]); hint "Course A Ready";}];
Laptop28 addAction["<t color='#F7FE2E'>Buddy Range B</t>",{[["BuddyRange6","BuddyRange7","BuddyRange8","BuddyRange9","BuddyRange10"],False] call NEKY_SetVariables; [[[],{[BuddyRangeLoc,5,"Prepare",8] ExecVM "Scripts\Popup Targets\BuddyRangeTargets.sqf";}], "BIS_fnc_Spawn", false,false,false] call BIS_fnc_MP; {deleteVehicle _x} forEach (nearestObjects [BuddyRangeBPopups,['TargetBase'],30]); hint "Course B Ready";}];
Laptop28 addAction["<t color='#F7FE2E'>Buddy Range C</t>",{[["BuddyRange11","BuddyRange12","BuddyRange13","BuddyRange14","BuddyRange15","BuddyRange16","BuddyRange17"],False] call NEKY_SetVariables; [[[],{[BuddyRangeLoc,9,"Prepare",14] ExecVM "Scripts\Popup Targets\BuddyRangeTargets.sqf";}], "BIS_fnc_Spawn", false,false,false] call BIS_fnc_MP; {deleteVehicle _x} forEach (nearestObjects [BuddyRangeCPopups,['TargetBase'],30]); hint "Course C Ready";}];
Laptop28 addAction["<t color='#F7FE2E'>Buddy Range D</t>",{[["BuddyRange18","BuddyRange19","BuddyRange20","BuddyRange21","BuddyRange22","BuddyRange23","BuddyRange24"],False] call NEKY_SetVariables; [[[],{[BuddyRangeLoc,15,"Prepare",20] ExecVM "Scripts\Popup Targets\BuddyRangeTargets.sqf";}], "BIS_fnc_Spawn", false,false,false] call BIS_fnc_MP; {deleteVehicle _x} forEach (nearestObjects [BuddyRangeDPopups,['TargetBase'],30]);[BuddyrangeLoc18,30,"close"] call NEKY_DoorCloser; hint "Course D Ready";}];
Laptop28 addAction["<t color='#F7FE2E'>Buddy Range E</t>",{[["BuddyRange25","BuddyRange26","BuddyRange27","BuddyRange28","BuddyRange29","BuddyRange30"],False] call NEKY_SetVariables; [[[],{[BuddyRangeLoc,21,"Prepare",25] ExecVM "Scripts\Popup Targets\BuddyRangeTargets.sqf";}], "BIS_fnc_Spawn", false,false,false] call BIS_fnc_MP; {deleteVehicle _x} forEach (nearestObjects [BuddyRangeEPopups,['TargetBase'],30]); hint "Course E Ready";}];

//	======================================================
//	Staging Point Predator
//	======================================================
Pole4 addAction ["<t color='#58D3F7'>Fast Travel to F.O.B Windstorm</t>","Player setposATL (getpos pole1)"];

["Staging Point Predator Military Vehicles Set 1",Laptop22,"1200","1203","","MPredator1"] Call NEKY_fnc_HandleVehicles;
["Staging Point Predator Military Vehicles Set 2",Laptop22,"1204","1207","","MPredator2"] Call NEKY_fnc_HandleVehicles;
["Staging Point Predator Military Vehicles Set 3",Laptop22,"1208","1211","","MPredator3"] Call NEKY_fnc_HandleVehicles;
[Laptop22, "Predator", "Staging Point Predator Objects", ["Predator"], "OPredator"] call NEKY_fnc_AddObjectAction;
["Staging Point Predator Munitions",Laptop22,"980150","980199","BPredator"] call NEKY_fnc_HandleBoxes;

//	======================================================
//	Staging Point Kalithea
//	======================================================
Pole12 addAction ["<t color='#58D3F7'>Fast Travel to F.O.B Windstorm</t>","Player setposATL (getpos pole1)"];
Pole12 addAction ["<t color='#58D3F7'>Fast Travel to Beach</t>","Player setposATL (getpos pole13)"];
Pole13 addAction ["<t color='#58D3F7'>Fast Travel to F.O.B Windstorm</t>","Player setposATL (getpos pole1)"];
Pole13 addAction ["<t color='#58D3F7'>Fast Travel to Staging Point Kalithea</t>","Player setposATL (getpos pole12)"];

["Staging Point Kalithea Military Vehicles",Laptop11,"1400","1449","","MKalithea"] call NEKY_fnc_HandleVehicles;
[Laptop11,True,["Spawn1400","spawn1401","spawn1402","spawn1403","spawn1404","spawn1405","spawn1406","spawn1407","spawn1408","spawn1409","spawn1410","spawn1411","spawn1412","spawn1413","spawn1414","spawn1415","spawn1416","spawn1417","spawn1418","spawn1419"],[""],1,1,"Beach Assault",1,0.1,false] call NEKY_fnc_HandleVR;
["Beach Assault Vehicles",Laptop11,"1449","1449","","BAKalithea"] call NEKY_fnc_HandleVehicles;

// =======================================================
// Jaeger Range Jason Addition 1
// =======================================================
PoleJ1 addAction ["<t color='#58D3F7'>Fast Travel to F.O.B Windstorm</t>","Player setposATL (getpos pole1)"];
PoleJ1 addAction ["<t color='#FFFF00'>Travel to Red Range Butts</t>","Player setposATL (getpos PoleJ2)"];
PoleJ1 addAction ["<t color='#FFFF00'>Travel to Blue Range Butts</t>","Player setposATL (getpos PoleJ3)"];

PoleJ2 addAction ["<t color='#FFFF00'>Return to Firing Point</t>","Player setposATL (getpos PoleJ1)"];

PoleJ3 addAction ["<t color='#FFFF00'>Return to Firing Point</t>","Player setposATL (getpos PoleJ1)"];

/* 
Colors:
Mobile HQ's 					 -	 <t color='#00FF00'>
FOB's, Outposts, Staging Posts	 - 	 <t color='#58D3F7'>

Green 						 	 -	 <t color='#00FF00'>
Yellow 					 		 -	 <t color='#F7FE2E'>
Orange							 -	 <t color='#FF8000'>
Red								 -	 <t color='#FF0000'>

NATO							 -	 <t color='#0040FF'>
CSAT							 -	 <t color='#B40404'>
AAF								 -	 <t color='#01DF01'>

*/