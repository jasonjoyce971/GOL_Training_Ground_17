/*
 * Module Script that confirms the exercise requested and spawns the relevant aircraft
 * 
 */
 
 #include "..\scriptComponent.hpp"
 
 // Store Incoming Data
 _caller = _this select 1;
 _callsign = _this select 3 select 0;
 _exerciseID = _this select 3 select 1;
 
 // Gather Relevant Variables
 _side = getNumber(configfile >> "CfgVehicles" >> (typeOf _caller) >> "side"); // 0 = OPFOR, 1 = BLUFOR, 2 = INDEP, 3 = CIV
 _blufor = GW_Gear_Blufor;
 _opfor = GW_Gear_Opfor;
 _indep = GW_Gear_Independent;
 _airTgts = GW_TrainingGround_airTargets;
 _vehTgts = GW_TrainingGround_vehTargets;
  _morTgts = GW_TrainingGround_morTargets;
 
 // Main Switch
 switch (_side) do
 {
	case 0: // OPFOR
	{
		switch (_opfor) do
		{
			case "CSAT-H":
			{
				switch (_callsign) do
				{
					case "Raven":
					{
						switch (_exerciseID) do
						{
							case 1: // Solo Practice
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["O_Heli_Light_02_F", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Raven"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							case 2: // Raven Normal Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking","parking_1","parking_2","parking_3","parking_4","parking_5","parking_6","parking_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["O_Heli_Light_02_F", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"normal",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 3: // Raven Urban Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking","parking_1","parking_2","parking_3","parking_4","parking_5","parking_6","parking_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["O_Heli_Light_02_F", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"urban",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 4: // Raven Special Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking","parking_1","parking_2","parking_3","parking_4","parking_5","parking_6","parking_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["O_Heli_Light_02_F", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"special",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 5: // Raven Assault Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking","parking_1","parking_2","parking_3","parking_4","parking_5","parking_6","parking_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["O_Heli_Light_02_F", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"assault",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Raven/Exercise Switch";
							};
						};
					};
					case "Giant":
					{
						switch (_exerciseID) do
						{
							case 1: // Solo Practice
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["O_Heli_Transport_04_bench_F", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Giant"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							case 2: // Giant Insertion Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["O_Heli_Transport_04_covered_F", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"Giant",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 3: // Giant Sling Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								_crateSlots = ["sling","sling_1","sling_2","sling_3","sling_4","sling_5","sling_6","sling_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["CargoNet_01_barrels_F", _position, [], 0, "CAN_COLLIDE"];
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _crateSlots;
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["O_Heli_Transport_04_F", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"urban",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Giant/Exercise Switch";
							};
						};
					};
					case "Condor":
					{
						switch (_exerciseID) do
						{
							case 1: // Solo Practice
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["O_T_VTOL_02_infantry_F", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Condor"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							case 2: // Condor HLS Ops
							{
								_group = group _caller;
								_parkingSlots = ["VTOLPark","VTOLPark_1","VTOLPark_2","VTOLPark_3","VTOLPark_4","VTOLPark_5","VTOLPark_6","VTOLPark_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["O_T_VTOL_02_infantry_F", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"CondorHLS",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 3: // Condor Airborne Ops
							{
								_group = group _caller;
								_parkingSlots = ["VTOLPark","VTOLPark_1","VTOLPark_2","VTOLPark_3","VTOLPark_4","VTOLPark_5","VTOLPark_6","VTOLPark_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["O_T_VTOL_02_infantry_F", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"CondorDZ",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Giant/Exercise Switch";
							};
						};
					};
					case "Range":
					{
						switch (_exerciseID) do
						{
							case 1: // Rocket/Gunnery
							{
								for "_i" from 1 to 10 do
								{
									_group = createGroup west;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["B_Truck_01_mover_F","B_Truck_01_ammo_F","B_Truck_01_box_F","B_Truck_01_fuel_F","B_Truck_01_medical_F",
												"B_Truck_01_Repair_F","B_Truck_01_transport_F","B_Truck_01_covered_F","B_MRAP_01_F","B_MRAP_01_gmg_F","B_MRAP_01_hmg_F",
												"B_LSV_01_armed_F","B_LSV_01_unarmed_F"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 2: // ATGM
							{
								for "_i" from 1 to 10 do
								{
									_group = createGroup west;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["B_APC_Wheeled_01_cannon_F","B_APC_Tracked_01_rcws_F","B_APC_Tracked_01_CRV_F",
												"B_MBT_01_mlrs_F","B_MBT_01_arty_F","CUP_B_Challenger2_NATO","B_MBT_01_TUSK_F",
												"B_MBT_01_cannon_F"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 3: // Bombs
							{
								for "_i" from 1 to 10 do
								{
									_group = createGroup west;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["Land_BagBunker_Large_F","Land_Cargo_House_V1_F","Land_Cargo_HQ_V1_F",
												"Land_Cargo_Patrol_V1_F","Land_Cargo_Tower_V1_F"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 4: // SEAD
							{
								for "_i" from 1 to 5 do
								{
									_group = createGroup west;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["CUP_B_ZSU23_CDF","CUP_B_ZU23_CDF","B_APC_Tracked_01_AA_F","CUP_B_HMMWV_Avenger_NATO_T",
												"CUP_B_M6LineBacker_NATO_T","CUP_B_M163_USA"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 5: // Mortar Range @ OP Dragon
							{
								null = [[monitor6],["spotter_21","spotter_22","spotter_23","spotter_24","spotter_25"]] execVM "LFC\feedInit.sqf";
								_mortars = ["mortarSpawn","mortarSpawn_1","mortarSpawn_2","mortarSpawn_3","mortarSpawn_4"];
								{
									_pos = getMarkerPos _x;
									_heli = createVehicle ["I_Mortar_01_F", _pos, [], 0, "CAN_COLLIDE"];
									GW_TrainingGround_spawnedAssets pushBack _heli;
								} foreach _mortars;
								for "_i" from 1 to 5 do
								{
									_group = createGroup west;
									_loc = selectRandom _morTgts;
									_locArray = [_loc];
									_morTgts = _morTgts - _locArray;
									_unitType = ["B_Truck_01_mover_F","B_Truck_01_ammo_F","B_Truck_01_box_F","B_Truck_01_fuel_F","B_Truck_01_medical_F",
											"B_Truck_01_Repair_F","B_Truck_01_transport_F","B_Truck_01_covered_F","B_MRAP_01_F","B_MRAP_01_gmg_F","B_MRAP_01_hmg_F",
											"B_LSV_01_armed_F","B_LSV_01_unarmed_F","B_APC_Wheeled_01_cannon_F","B_APC_Tracked_01_rcws_F"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									_markerstr = createMarker [_loc + "1", getMarkerPos _loc];
									_markerstr setMarkerShape "ICON";
									_markerstr setMarkerType "hd_destroy";
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Range/Exercise Switch";
							};
						};
					};
					case "ACM":
					{
						switch (_exerciseID) do
						{
							case 1: 
							{
								_group = createGroup west;
								_unitTypePool = ["CUP_B_L39_CAP_CZ","JS_JC_FA18E","CUP_B_F35B_AA_BAF","CUP_B_GR9_CAP_GB",
												"CUP_B_AV8B_CAP_USMC","CUP_B_F35B_AA_USMC","I_Plane_Fighter_03_AA_F"];
								_unit = selectRandom _unitTypePool;
								[getMarkerPos "ACM",0,_unit,_group] call BIS_fnc_spawnVehicle;
								{
									GW_TrainingGround_spawnedOPFOR pushBack _x;
								} foreach units _group;
								_group addWaypoint [getMarkerPos "ravenSolo", 0];
							};
						};
					};
					case "EP":
					{
						switch (_exerciseID) do
						{
							case 1: // Solo Practice
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["O_Heli_Light_02_F", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird] execFSM "Modules\TrainingGround\FSM\EPFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/EP/Exercise Switch";
							};
						};
					};
					case "Vehicle":
					{
						switch (_exerciseID) do
						{
							case 1: // Driving Course
							{
								removeAllActions Laptop_4;
								
								Laptop_4 addAction ["<t color='#FFFF00'>BACK</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["CSATH",0],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>BM-2T Stalker</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["CSATH",1],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Otokar ARMA</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["CSATH",2],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>KamAZ</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["CSATH",3],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Punisher</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["CSATH",4],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Qilin</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["CSATH",5],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Quad Bike</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["CSATH",6],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Typhoon</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["CSATH",7],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>T-100</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["CSATH",8],1,false,false,"",""];
							};
							case 2: // Range
							{
								removeAllActions Laptop_4;
								
								Laptop_4 addAction ["<t color='#FFFF00'>BACK</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["CSATH",0],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>BM-2T Stalker</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["CSATH",1],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Otokar ARMA</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["CSATH",2],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Punisher HMG</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["CSATH",3],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Punisher GMG</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["CSATH",4],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Qilin</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["CSATH",5],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>T-100</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["CSATH",6],1,false,false,"",""];
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Vehicle/Exercise Switch";
							};
						};
					};
					case "FOB":
					{
						switch (_exerciseID) do
						{
							case 1: // Cluster
							{
								removeAllActions Laptop_6;
								
								// spawn relevant objects to construct the ranges/assault course -> check nekos code for important stuff like target naming etc
								["O_Truck_03_transport_F","O_LSV_02_unarmed_F","O_LSV_02_unarmed_F","O_Truck_03_medical_F","O_MRAP_02_F","O_MRAP_02_F","O_MRAP_02_F","O_APC_Wheeled_02_rcws_F",
								"O_Truck_03_transport_F","O_Heli_Light_02_unarmed_F","O_Heli_Transport_04_covered_F","O_Heli_Light_02_unarmed_F","O_Truck_03_repair_F","O_Truck_03_fuel_F"] call GW_TrainingGround_fnc_fobcluster;
								
								// spawn relevant supplies -> initialise spawned boxes as supply crates which should in turn call the relevant framework handler
								_markers = ["986300","986303","981303","984312","981304"];
								{
									_pos = getMarkerPos _x;
									_box = createVehicle ["Box_NATO_Ammo_F", _pos, [], 0, "CAN_COLLIDE"];
									[_box, ["big_box","east"]] call GW_Gear_Fnc_Init;
								}foreach _markers;
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Vehicle/Exercise Switch";
							};
						};
					};
					default
					{
						hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Callsign Switch";
					};
				};
			};
			case "CSAT-W":
			{
				switch (_callsign) do
				{
					case "Raven":
					{
						switch (_exerciseID) do
						{
							case 1:
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["O_Heli_Light_02_v2_F", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							case 2: // Raven Normal Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking","parking_1","parking_2","parking_3","parking_4","parking_5","parking_6","parking_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["O_Heli_Light_02_v2_F", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"normal",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 3: // Raven Urban Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking","parking_1","parking_2","parking_3","parking_4","parking_5","parking_6","parking_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["O_Heli_Light_02_v2_F", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"urban",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 4: // Raven Special Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking","parking_1","parking_2","parking_3","parking_4","parking_5","parking_6","parking_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["O_Heli_Light_02_v2_F", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"special",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 5: // Raven Assault Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking","parking_1","parking_2","parking_3","parking_4","parking_5","parking_6","parking_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["O_Heli_Light_02_v2_F", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"assault",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Callsign/Exercise Switch";
							};
						};
					};
					case "Giant":
					{
						switch (_exerciseID) do
						{
							case 1: // Solo Practice
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["O_Heli_Transport_04_bench_F", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Giant"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							case 2: // Giant Insertion Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["O_Heli_Transport_04_covered_F", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"Giant",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 3: // Giant Sling Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								_crateSlots = ["sling","sling_1","sling_2","sling_3","sling_4","sling_5","sling_6","sling_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["CargoNet_01_barrels_F", _position, [], 0, "CAN_COLLIDE"];
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _crateSlots;
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["O_Heli_Transport_04_F", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"urban",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Giant/Exercise Switch";
							};
						};
					};
					case "Condor":
					{
						switch (_exerciseID) do
						{
							case 1: // Solo Practice
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["O_T_VTOL_02_infantry_F", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Condor"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							case 2: // Condor HLS Ops
							{
								_group = group _caller;
								_parkingSlots = ["VTOLPark","VTOLPark_1","VTOLPark_2","VTOLPark_3","VTOLPark_4","VTOLPark_5","VTOLPark_6","VTOLPark_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["O_T_VTOL_02_infantry_F", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"CondorHLS",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 3: // Giant Sling Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								_crateSlots = ["sling","sling_1","sling_2","sling_3","sling_4","sling_5","sling_6","sling_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["CargoNet_01_barrels_F", _position, [], 0, "CAN_COLLIDE"];
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _crateSlots;
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["O_Heli_Transport_04_F", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"urban",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Giant/Exercise Switch";
							};
						};
					};
					case "Range":
					{
						switch (_exerciseID) do
						{
							case 1: // Rocket/Gunnery
							{
								for "_i" from 1 to 10 do
								{
									_group = createGroup west;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["B_Truck_01_mover_F","B_Truck_01_ammo_F","B_Truck_01_box_F","B_Truck_01_fuel_F","B_Truck_01_medical_F",
												"B_Truck_01_Repair_F","B_Truck_01_transport_F","B_Truck_01_covered_F","B_MRAP_01_F","B_MRAP_01_gmg_F","B_MRAP_01_hmg_F",
												"B_LSV_01_armed_F","B_LSV_01_unarmed_F"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 2: // ATGM
							{
								for "_i" from 1 to 10 do
								{
									_group = createGroup west;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["B_APC_Wheeled_01_cannon_F","B_APC_Tracked_01_rcws_F","B_APC_Tracked_01_CRV_F",
												"B_MBT_01_mlrs_F","B_MBT_01_arty_F","CUP_B_Challenger2_NATO","B_MBT_01_TUSK_F",
												"B_MBT_01_cannon_F"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 3: // Bombs
							{
								for "_i" from 1 to 10 do
								{
									_group = createGroup west;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["Land_BagBunker_Large_F","Land_Cargo_House_V1_F","Land_Cargo_HQ_V1_F",
												"Land_Cargo_Patrol_V1_F","Land_Cargo_Tower_V1_F"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 4: // SEAD
							{
								for "_i" from 1 to 5 do
								{
									_group = createGroup west;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["CUP_B_ZSU23_CDF","CUP_B_ZU23_CDF","B_APC_Tracked_01_AA_F","CUP_B_HMMWV_Avenger_NATO_T",
												"CUP_B_M6LineBacker_NATO_T","CUP_B_M163_USA"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 5: // Mortar Range @ OP Dragon
							{
								null = [[monitor6],["spotter_21","spotter_22","spotter_23","spotter_24","spotter_25"]] execVM "LFC\feedInit.sqf";
								_mortars = ["mortarSpawn","mortarSpawn_1","mortarSpawn_2","mortarSpawn_3","mortarSpawn_4"];
								{
									_pos = getMarkerPos _x;
									_heli = createVehicle ["I_Mortar_01_F", _pos, [], 0, "CAN_COLLIDE"];
									GW_TrainingGround_spawnedAssets pushBack _heli;
								} foreach _mortars;
								for "_i" from 1 to 5 do
								{
									_group = createGroup west;
									_loc = selectRandom _morTgts;
									_locArray = [_loc];
									_morTgts = _morTgts - _locArray;
									_unitType = ["B_Truck_01_mover_F","B_Truck_01_ammo_F","B_Truck_01_box_F","B_Truck_01_fuel_F","B_Truck_01_medical_F",
											"B_Truck_01_Repair_F","B_Truck_01_transport_F","B_Truck_01_covered_F","B_MRAP_01_F","B_MRAP_01_gmg_F","B_MRAP_01_hmg_F",
											"B_LSV_01_armed_F","B_LSV_01_unarmed_F","B_APC_Wheeled_01_cannon_F","B_APC_Tracked_01_rcws_F"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									_markerstr = createMarker [_loc + "1", getMarkerPos _loc];
									_markerstr setMarkerShape "ICON";
									_markerstr setMarkerType "hd_destroy";
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Range/Exercise Switch";
							};
						};
					};
					case "ACM":
					{
						switch (_exerciseID) do
						{
							case 1: 
							{
								_group = createGroup west;
								_unitTypePool = ["CUP_B_L39_CAP_CZ","JS_JC_FA18E","CUP_B_F35B_AA_BAF","CUP_B_GR9_CAP_GB",
												"CUP_B_AV8B_CAP_USMC","CUP_B_F35B_AA_USMC","I_Plane_Fighter_03_AA_F"];
								_unit = selectRandom _unitTypePool;
								[getMarkerPos "ACM",0,_unit,_group] call BIS_fnc_spawnVehicle;
								{
									GW_TrainingGround_spawnedOPFOR pushBack _x;
								} foreach units _group;
								_group addWaypoint [getMarkerPos "ravenSolo", 0];
							};
						};
					};
					case "EP":
					{
						switch (_exerciseID) do
						{
							case 1: // Solo Practice
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["O_Heli_Light_02_F", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird] execFSM "Modules\TrainingGround\FSM\EPFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Raven/Exercise Switch";
							};
						};
					};
					case "Vehicle":
					{
						switch (_exerciseID) do
						{
							case 1: // Driving Course
							{
								removeAllActions Laptop_4;
								
								Laptop_4 addAction ["<t color='#FFFF00'>BACK</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["CSATW",0],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>BM-2T Stalker</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["CSATW",1],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Otokar ARMA</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["CSATW",2],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>KamAZ</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["CSATW",3],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Punisher</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["CSATW",4],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Qilin</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["CSATW",5],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Quad Bike</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["CSATW",6],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Typhoon</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["CSATW",7],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>T-100</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["CSATW",8],1,false,false,"",""];
							};
							case 2: // Range
							{
								removeAllActions Laptop_4;
								
								Laptop_4 addAction ["<t color='#FFFF00'>BACK</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["CSATW",0],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>BM-2T Stalker</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["CSATW",1],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Otokar ARMA</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["CSATW",2],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Punisher HMG</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["CSATW",3],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Punisher GMG</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["CSATW",4],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Qilin</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["CSATW",5],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>T-100</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["CSATW",6],1,false,false,"",""];
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Vehicle/Exercise Switch";
							};
						};
					};
					case "FOB":
					{
						switch (_exerciseID) do
						{
							case 1: // Cluster
							{
								removeAllActions Laptop_6;
								
								// spawn relevant objects to construct the ranges/assault course
								["O_T_Truck_03_transport_ghex_F","O_T_LSV_02_unarmed_F","O_T_LSV_02_unarmed_F","O_T_Truck_03_medical_ghex_F","O_T_MRAP_02_ghex_F","O_T_MRAP_02_ghex_F","O_T_MRAP_02_ghex_F","O_T_APC_Wheeled_02_rcws_ghex_F",
								"O_T_Truck_03_transport_ghex_F","O_Heli_Light_02_unarmed_F","O_Heli_Transport_04_covered_F","O_Heli_Light_02_unarmed_F","O_T_Truck_03_repair_ghex_F","O_T_Truck_03_fuel_ghex_F"] call GW_TrainingGround_fnc_fobcluster;
								
								// spawn relevant supplies -> initialise spawned boxes as supply crates which should in turn call the relevant framework handler
								_markers = ["986300","986303","981303","984312","981304"];
								{
									_pos = getMarkerPos _x;
									_box = createVehicle ["Box_NATO_Ammo_F", _pos, [], 0, "CAN_COLLIDE"];
									[_box, ["big_box","east"]] call GW_Gear_Fnc_Init;
								}foreach _markers;
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Vehicle/Exercise Switch";
							};
						};
					};
					default
					{
						hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Callsign Switch";
					};
				};
			};
			case "CSAT-U":
			{
				switch (_callsign) do
				{
					case "Raven":
					{
						switch (_exerciseID) do
						{
							case 1:
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["O_Heli_Light_02_v2_F", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							case 2: // Raven Normal Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking","parking_1","parking_2","parking_3","parking_4","parking_5","parking_6","parking_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["O_Heli_Light_02_v2_F", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"normal",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 3: // Raven Urban Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking","parking_1","parking_2","parking_3","parking_4","parking_5","parking_6","parking_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["O_Heli_Light_02_v2_F", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"urban",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 4: // Raven Special Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking","parking_1","parking_2","parking_3","parking_4","parking_5","parking_6","parking_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["O_Heli_Light_02_v2_F", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"special",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 5: // Raven Assault Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking","parking_1","parking_2","parking_3","parking_4","parking_5","parking_6","parking_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["O_Heli_Light_02_v2_F", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"assault",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Callsign/Exercise Switch";
							};
						};
					};
					case "Giant":
					{
						switch (_exerciseID) do
						{
							case 1: // Solo Practice
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["O_Heli_Transport_04_bench_F", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Giant"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							case 2: // Giant Insertion Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["O_Heli_Transport_04_covered_F", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"Giant",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 3: // Giant Sling Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								_crateSlots = ["sling","sling_1","sling_2","sling_3","sling_4","sling_5","sling_6","sling_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["CargoNet_01_barrels_F", _position, [], 0, "CAN_COLLIDE"];
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _crateSlots;
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["O_Heli_Transport_04_F", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"urban",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Giant/Exercise Switch";
							};
						};
					};
					case "Condor":
					{
						switch (_exerciseID) do
						{
							case 1: // Solo Practice
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["O_T_VTOL_02_infantry_F", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Condor"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							case 2: // Condor HLS Ops
							{
								_group = group _caller;
								_parkingSlots = ["VTOLPark","VTOLPark_1","VTOLPark_2","VTOLPark_3","VTOLPark_4","VTOLPark_5","VTOLPark_6","VTOLPark_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["O_T_VTOL_02_infantry_F", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"CondorHLS",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 3: // Giant Sling Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								_crateSlots = ["sling","sling_1","sling_2","sling_3","sling_4","sling_5","sling_6","sling_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["CargoNet_01_barrels_F", _position, [], 0, "CAN_COLLIDE"];
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _crateSlots;
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["O_Heli_Transport_04_F", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"urban",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Giant/Exercise Switch";
							};
						};
					};
					case "Range":
					{
						switch (_exerciseID) do
						{
							case 1: // Rocket/Gunnery
							{
								for "_i" from 1 to 10 do
								{
									_group = createGroup west;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["B_Truck_01_mover_F","B_Truck_01_ammo_F","B_Truck_01_box_F","B_Truck_01_fuel_F","B_Truck_01_medical_F",
												"B_Truck_01_Repair_F","B_Truck_01_transport_F","B_Truck_01_covered_F","B_MRAP_01_F","B_MRAP_01_gmg_F","B_MRAP_01_hmg_F",
												"B_LSV_01_armed_F","B_LSV_01_unarmed_F"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 2: // ATGM
							{
								for "_i" from 1 to 10 do
								{
									_group = createGroup west;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["B_APC_Wheeled_01_cannon_F","B_APC_Tracked_01_rcws_F","B_APC_Tracked_01_CRV_F",
												"B_MBT_01_mlrs_F","B_MBT_01_arty_F","CUP_B_Challenger2_NATO","B_MBT_01_TUSK_F",
												"B_MBT_01_cannon_F"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 3: // Bombs
							{
								for "_i" from 1 to 10 do
								{
									_group = createGroup west;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["Land_BagBunker_Large_F","Land_Cargo_House_V1_F","Land_Cargo_HQ_V1_F",
												"Land_Cargo_Patrol_V1_F","Land_Cargo_Tower_V1_F"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 4: // SEAD
							{
								for "_i" from 1 to 5 do
								{
									_group = createGroup west;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["CUP_B_ZSU23_CDF","CUP_B_ZU23_CDF","B_APC_Tracked_01_AA_F","CUP_B_HMMWV_Avenger_NATO_T",
												"CUP_B_M6LineBacker_NATO_T","CUP_B_M163_USA"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 5: // Mortar Range @ OP Dragon
							{
								null = [[monitor6],["spotter_21","spotter_22","spotter_23","spotter_24","spotter_25"]] execVM "LFC\feedInit.sqf";
								_mortars = ["mortarSpawn","mortarSpawn_1","mortarSpawn_2","mortarSpawn_3","mortarSpawn_4"];
								{
									_pos = getMarkerPos _x;
									_heli = createVehicle ["I_Mortar_01_F", _pos, [], 0, "CAN_COLLIDE"];
									GW_TrainingGround_spawnedAssets pushBack _heli;
								} foreach _mortars;
								for "_i" from 1 to 5 do
								{
									_group = createGroup west;
									_loc = selectRandom _morTgts;
									_locArray = [_loc];
									_morTgts = _morTgts - _locArray;
									_unitType = ["B_Truck_01_mover_F","B_Truck_01_ammo_F","B_Truck_01_box_F","B_Truck_01_fuel_F","B_Truck_01_medical_F",
											"B_Truck_01_Repair_F","B_Truck_01_transport_F","B_Truck_01_covered_F","B_MRAP_01_F","B_MRAP_01_gmg_F","B_MRAP_01_hmg_F",
											"B_LSV_01_armed_F","B_LSV_01_unarmed_F","B_APC_Wheeled_01_cannon_F","B_APC_Tracked_01_rcws_F"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									_markerstr = createMarker [_loc + "1", getMarkerPos _loc];
									_markerstr setMarkerShape "ICON";
									_markerstr setMarkerType "hd_destroy";
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Range/Exercise Switch";
							};
						};
					};
					case "ACM":
					{
						switch (_exerciseID) do
						{
							case 1: 
							{
								_group = createGroup west;
								_unitTypePool = ["CUP_B_L39_CAP_CZ","JS_JC_FA18E","CUP_B_F35B_AA_BAF","CUP_B_GR9_CAP_GB",
												"CUP_B_AV8B_CAP_USMC","CUP_B_F35B_AA_USMC","I_Plane_Fighter_03_AA_F"];
								_unit = selectRandom _unitTypePool;
								[getMarkerPos "ACM",0,_unit,_group] call BIS_fnc_spawnVehicle;
								{
									GW_TrainingGround_spawnedOPFOR pushBack _x;
								} foreach units _group;
								_group addWaypoint [getMarkerPos "ravenSolo", 0];
							};
						};
					};
					case "EP":
					{
						switch (_exerciseID) do
						{
							case 1: // Solo Practice
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["O_Heli_Light_02_F", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird] execFSM "Modules\TrainingGround\FSM\EPFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Raven/Exercise Switch";
							};
						};
					};
					case "Vehicle":
					{
						switch (_exerciseID) do
						{
							case 1: // Driving Course
							{
								removeAllActions Laptop_4;
								
								Laptop_4 addAction ["<t color='#FFFF00'>BACK</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["CSATU",0],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>BM-2T Stalker</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["CSATU",1],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Otokar ARMA</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["CSATU",2],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>KamAZ</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["CSATU",3],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Punisher</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["CSATU",4],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Qilin</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["CSATU",5],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Quad Bike</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["CSATU",6],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Typhoon</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["CSATU",7],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>T-100</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["CSATU",8],1,false,false,"",""];
							};
							case 2: // Range
							{
								removeAllActions Laptop_4;
								
								Laptop_4 addAction ["<t color='#FFFF00'>BACK</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["CSATU",0],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>BM-2T Stalker</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["CSATU",1],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Otokar ARMA</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["CSATU",2],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Punisher HMG</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["CSATU",3],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Punisher GMG</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["CSATU",4],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Qilin</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["CSATU",5],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>T-100</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["CSATU",6],1,false,false,"",""];
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Vehicle/Exercise Switch";
							};
						};
					};
					case "FOB":
					{
						switch (_exerciseID) do
						{
							case 1: // Cluster
							{
								removeAllActions Laptop_6;
								
								// spawn relevant objects to construct the ranges/assault course -> check nekos code for important stuff like target naming etc
								["O_Truck_03_transport_F","O_LSV_02_unarmed_F","O_LSV_02_unarmed_F","O_Truck_03_medical_F","O_MRAP_02_F","O_MRAP_02_F","O_MRAP_02_F","O_APC_Wheeled_02_rcws_F",
								"O_Truck_03_transport_F","O_Heli_Light_02_unarmed_F","O_Heli_Transport_04_covered_F","O_Heli_Light_02_unarmed_F","O_Truck_03_repair_F","O_Truck_03_fuel_F"] call GW_TrainingGround_fnc_fobcluster;
								
								// spawn relevant supplies -> initialise spawned boxes as supply crates which should in turn call the relevant framework handler
								_markers = ["986300","986303","981303","984312","981304"];
								{
									_pos = getMarkerPos _x;
									_box = createVehicle ["Box_NATO_Ammo_F", _pos, [], 0, "CAN_COLLIDE"];
									[_box, ["big_box","east"]] call GW_Gear_Fnc_Init;
								}foreach _markers;
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Vehicle/Exercise Switch";
							};
						};
					};
					default
					{
						hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Callsign Switch";
					};
				};
			};
			case "RUSSIAN-W":
			{
				switch (_callsign) do
				{
					case "Raven":
					{
						switch (_exerciseID) do
						{
							case 1:
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["JAS_CUP_O_Mi8_AAC", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							case 2: // Raven Normal Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_O_Mi8_AAC", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"normal",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 3: // Raven Urban Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_O_Mi8_AAC", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"urban",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 4: // Raven Special Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_O_Mi8_AAC", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"special",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 5: // Raven Assault Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_O_Mi8_AAC", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"assault",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Callsign/Exercise Switch";
							};
						};
					};
					case "Giant":
					{
						switch (_exerciseID) do
						{
							case 1: // Solo Practice
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["JAS_CUP_O_Mi8_RU", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Giant"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							case 2: // Giant Insertion Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_O_Mi8_RU", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"Giant",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 3: // Giant Sling Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								_crateSlots = ["sling","sling_1","sling_2","sling_3","sling_4","sling_5","sling_6","sling_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["CargoNet_01_barrels_F", _position, [], 0, "CAN_COLLIDE"];
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _crateSlots;
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_O_Mi8_RU", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"urban",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Giant/Exercise Switch";
							};
						};
					};
					case "Condor":
					{
						switch (_exerciseID) do
						{
							case 1: // Solo Practice
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["O_T_VTOL_02_infantry_F", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Condor"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							case 2: // Condor HLS Ops
							{
								_group = group _caller;
								_parkingSlots = ["VTOLPark","VTOLPark_1","VTOLPark_2","VTOLPark_3","VTOLPark_4","VTOLPark_5","VTOLPark_6","VTOLPark_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["O_T_VTOL_02_infantry_F", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"CondorHLS",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 3: // Giant Sling Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								_crateSlots = ["sling","sling_1","sling_2","sling_3","sling_4","sling_5","sling_6","sling_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["CargoNet_01_barrels_F", _position, [], 0, "CAN_COLLIDE"];
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _crateSlots;
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["O_Heli_Transport_04_F", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"urban",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Giant/Exercise Switch";
							};
						};
					};
					case "Range":
					{
						switch (_exerciseID) do
						{
							case 1: // Rocket/Gunnery
							{
								for "_i" from 1 to 10 do
								{
									_group = createGroup west;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["B_Truck_01_mover_F","B_Truck_01_ammo_F","B_Truck_01_box_F","B_Truck_01_fuel_F","B_Truck_01_medical_F",
												"B_Truck_01_Repair_F","B_Truck_01_transport_F","B_Truck_01_covered_F","B_MRAP_01_F","B_MRAP_01_gmg_F","B_MRAP_01_hmg_F",
												"B_LSV_01_armed_F","B_LSV_01_unarmed_F"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 2: // ATGM
							{
								for "_i" from 1 to 10 do
								{
									_group = createGroup west;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["B_APC_Wheeled_01_cannon_F","B_APC_Tracked_01_rcws_F","B_APC_Tracked_01_CRV_F",
												"B_MBT_01_mlrs_F","B_MBT_01_arty_F","CUP_B_Challenger2_NATO","B_MBT_01_TUSK_F",
												"B_MBT_01_cannon_F"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 3: // Bombs
							{
								for "_i" from 1 to 10 do
								{
									_group = createGroup west;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["Land_BagBunker_Large_F","Land_Cargo_House_V1_F","Land_Cargo_HQ_V1_F",
												"Land_Cargo_Patrol_V1_F","Land_Cargo_Tower_V1_F"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 4: // SEAD
							{
								for "_i" from 1 to 5 do
								{
									_group = createGroup west;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["CUP_B_ZSU23_CDF","CUP_B_ZU23_CDF","B_APC_Tracked_01_AA_F","CUP_B_HMMWV_Avenger_NATO_T",
												"CUP_B_M6LineBacker_NATO_T","CUP_B_M163_USA"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 5: // Mortar Range @ OP Dragon
							{
								null = [[monitor6],["spotter_21","spotter_22","spotter_23","spotter_24","spotter_25"]] execVM "LFC\feedInit.sqf";
								_mortars = ["mortarSpawn","mortarSpawn_1","mortarSpawn_2","mortarSpawn_3","mortarSpawn_4"];
								{
									_pos = getMarkerPos _x;
									_heli = createVehicle ["I_Mortar_01_F", _pos, [], 0, "CAN_COLLIDE"];
									GW_TrainingGround_spawnedAssets pushBack _heli;
								} foreach _mortars;
								for "_i" from 1 to 5 do
								{
									_group = createGroup west;
									_loc = selectRandom _morTgts;
									_locArray = [_loc];
									_morTgts = _morTgts - _locArray;
									_unitType = ["B_Truck_01_mover_F","B_Truck_01_ammo_F","B_Truck_01_box_F","B_Truck_01_fuel_F","B_Truck_01_medical_F",
											"B_Truck_01_Repair_F","B_Truck_01_transport_F","B_Truck_01_covered_F","B_MRAP_01_F","B_MRAP_01_gmg_F","B_MRAP_01_hmg_F",
											"B_LSV_01_armed_F","B_LSV_01_unarmed_F","B_APC_Wheeled_01_cannon_F","B_APC_Tracked_01_rcws_F"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									_markerstr = createMarker [_loc + "1", getMarkerPos _loc];
									_markerstr setMarkerShape "ICON";
									_markerstr setMarkerType "hd_destroy";
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Range/Exercise Switch";
							};
						};
					};
					case "ACM":
					{
						switch (_exerciseID) do
						{
							case 1: 
							{
								_group = createGroup west;
								_unitTypePool = ["CUP_B_L39_CAP_CZ","JS_JC_FA18E","CUP_B_F35B_AA_BAF","CUP_B_GR9_CAP_GB",
												"CUP_B_AV8B_CAP_USMC","CUP_B_F35B_AA_USMC","I_Plane_Fighter_03_AA_F"];
								_unit = selectRandom _unitTypePool;
								[getMarkerPos "ACM",0,_unit,_group] call BIS_fnc_spawnVehicle;
								{
									GW_TrainingGround_spawnedOPFOR pushBack _x;
								} foreach units _group;
								_group addWaypoint [getMarkerPos "ravenSolo", 0];
							};
						};
					};
					case "EP":
					{
						switch (_exerciseID) do
						{
							case 1: // Solo Practice
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["O_Heli_Light_02_F", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird] execFSM "Modules\TrainingGround\FSM\EPFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Raven/Exercise Switch";
							};
						};
					};
					case "Vehicle":
					{
						switch (_exerciseID) do
						{
							case 1: // Driving Course
							{
								removeAllActions Laptop_4;
								
								Laptop_4 addAction ["<t color='#FFFF00'>BACK</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["RUS",0],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>BMP-2</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["RUS",1],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>BMP-3</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["RUS",2],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>BRDM-2</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["RUS",3],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>BTR-90</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["RUS",4],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Vodnik</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["RUS",5],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>UAZ</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["RUS",6],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Ural</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["RUS",7],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>T-72</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["RUS",8],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>T-90</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["RUS",9],1,false,false,"",""];
							};
							case 2: // Range
							{
								removeAllActions Laptop_4;
								
								Laptop_4 addAction ["<t color='#FFFF00'>BACK</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["RUS",0],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>BMP-2</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["RUS",1],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>BMP-3</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["RUS",2],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>BRDM-2</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["RUS",3],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>BTR-90</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["RUS",4],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>T-72</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["RUS",5],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>T-90</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["RUS",6],1,false,false,"",""];
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Vehicle/Exercise Switch";
							};
						};
					};
					case "FOB":
					{
						switch (_exerciseID) do
						{
							case 1: // Cluster
							{
								removeAllActions Laptop_6;
								
								// spawn relevant objects to construct the ranges/assault course -> check nekos code for important stuff like target naming etc
								["CUP_O_Ural_Open_RU","CUP_O_UAZ_Open_RU","CUP_O_UAZ_Open_RU","CUP_O_Ural_RU","CUP_O_UAZ_Open_RU","CUP_O_UAZ_Open_RU","CUP_O_UAZ_Open_RU","CUP_O_BTR90_HQ_RU",
								"CUP_O_Ural_Open_RU","CUP_O_Ka60_Grey_RU","JAS_CUP_O_Mi8_RU","CUP_O_Ka60_Grey_RU","CUP_O_Ural_Repair_RU","CUP_O_Ural_Refuel_RU"] call GW_TrainingGround_fnc_fobcluster;
								
								// spawn relevant supplies -> initialise spawned boxes as supply crates which should in turn call the relevant framework handler
								_markers = ["986300","986303","981303","984312","981304"];
								{
									_pos = getMarkerPos _x;
									_box = createVehicle ["Box_NATO_Ammo_F", _pos, [], 0, "CAN_COLLIDE"];
									[_box, ["big_box","east"]] call GW_Gear_Fnc_Init;
								}foreach _markers;
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Vehicle/Exercise Switch";
							};
						};
					};
					default
					{
						hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Callsign Switch";
					};
				};
			};
			case "TAKIARMY-D":
			{
				switch (_callsign) do
				{
					case "Raven":
					{
						switch (_exerciseID) do
						{
							case 1:
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["JAS_CUP_O_Mi17_AAC", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							case 2: // Raven Normal Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_O_Mi17_AAC", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"normal",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 3: // Raven Urban Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_O_Mi17_AAC", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"urban",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 4: // Raven Special Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_O_Mi17_AAC", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"special",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 5: // Raven Assault Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_O_Mi17_AAC", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"assault",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Callsign/Exercise Switch";
							};
						};
					};
					case "Giant":
					{
						switch (_exerciseID) do
						{
							case 1: // Solo Practice
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["JAS_CUP_O_Mi17_TK", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Giant"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							case 2: // Giant Insertion Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_O_Mi17_TK", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"Giant",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 3: // Giant Sling Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								_crateSlots = ["sling","sling_1","sling_2","sling_3","sling_4","sling_5","sling_6","sling_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["CargoNet_01_barrels_F", _position, [], 0, "CAN_COLLIDE"];
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _crateSlots;
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_O_Mi17_TK", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"urban",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Giant/Exercise Switch";
							};
						};
					};
					case "Condor":
					{
						switch (_exerciseID) do
						{
							case 1: // Solo Practice
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["O_T_VTOL_02_infantry_F", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Condor"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							case 2: // Condor HLS Ops
							{
								_group = group _caller;
								_parkingSlots = ["VTOLPark","VTOLPark_1","VTOLPark_2","VTOLPark_3","VTOLPark_4","VTOLPark_5","VTOLPark_6","VTOLPark_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["O_T_VTOL_02_infantry_F", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"CondorHLS",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 3: // Giant Sling Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								_crateSlots = ["sling","sling_1","sling_2","sling_3","sling_4","sling_5","sling_6","sling_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["CargoNet_01_barrels_F", _position, [], 0, "CAN_COLLIDE"];
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _crateSlots;
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["O_Heli_Transport_04_F", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"urban",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Giant/Exercise Switch";
							};
						};
					};
					case "Range":
					{
						switch (_exerciseID) do
						{
							case 1: // Rocket/Gunnery
							{
								for "_i" from 1 to 10 do
								{
									_group = createGroup west;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["B_Truck_01_mover_F","B_Truck_01_ammo_F","B_Truck_01_box_F","B_Truck_01_fuel_F","B_Truck_01_medical_F",
												"B_Truck_01_Repair_F","B_Truck_01_transport_F","B_Truck_01_covered_F","B_MRAP_01_F","B_MRAP_01_gmg_F","B_MRAP_01_hmg_F",
												"B_LSV_01_armed_F","B_LSV_01_unarmed_F"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 2: // ATGM
							{
								for "_i" from 1 to 10 do
								{
									_group = createGroup west;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["B_APC_Wheeled_01_cannon_F","B_APC_Tracked_01_rcws_F","B_APC_Tracked_01_CRV_F",
												"B_MBT_01_mlrs_F","B_MBT_01_arty_F","CUP_B_Challenger2_NATO","B_MBT_01_TUSK_F",
												"B_MBT_01_cannon_F"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 3: // Bombs
							{
								for "_i" from 1 to 10 do
								{
									_group = createGroup west;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["Land_BagBunker_Large_F","Land_Cargo_House_V1_F","Land_Cargo_HQ_V1_F",
												"Land_Cargo_Patrol_V1_F","Land_Cargo_Tower_V1_F"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 4: // SEAD
							{
								for "_i" from 1 to 5 do
								{
									_group = createGroup west;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["CUP_B_ZSU23_CDF","CUP_B_ZU23_CDF","B_APC_Tracked_01_AA_F","CUP_B_HMMWV_Avenger_NATO_T",
												"CUP_B_M6LineBacker_NATO_T","CUP_B_M163_USA"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 5: // Mortar Range @ OP Dragon
							{
								null = [[monitor6],["spotter_21","spotter_22","spotter_23","spotter_24","spotter_25"]] execVM "LFC\feedInit.sqf";
								_mortars = ["mortarSpawn","mortarSpawn_1","mortarSpawn_2","mortarSpawn_3","mortarSpawn_4"];
								{
									_pos = getMarkerPos _x;
									_heli = createVehicle ["I_Mortar_01_F", _pos, [], 0, "CAN_COLLIDE"];
									GW_TrainingGround_spawnedAssets pushBack _heli;
								} foreach _mortars;
								for "_i" from 1 to 5 do
								{
									_group = createGroup west;
									_loc = selectRandom _morTgts;
									_locArray = [_loc];
									_morTgts = _morTgts - _locArray;
									_unitType = ["B_Truck_01_mover_F","B_Truck_01_ammo_F","B_Truck_01_box_F","B_Truck_01_fuel_F","B_Truck_01_medical_F",
											"B_Truck_01_Repair_F","B_Truck_01_transport_F","B_Truck_01_covered_F","B_MRAP_01_F","B_MRAP_01_gmg_F","B_MRAP_01_hmg_F",
											"B_LSV_01_armed_F","B_LSV_01_unarmed_F","B_APC_Wheeled_01_cannon_F","B_APC_Tracked_01_rcws_F"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									_markerstr = createMarker [_loc + "1", getMarkerPos _loc];
									_markerstr setMarkerShape "ICON";
									_markerstr setMarkerType "hd_destroy";
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Range/Exercise Switch";
							};
						};
					};
					case "ACM":
					{
						switch (_exerciseID) do
						{
							case 1: 
							{
								_group = createGroup west;
								_unitTypePool = ["CUP_B_L39_CAP_CZ","JS_JC_FA18E","CUP_B_F35B_AA_BAF","CUP_B_GR9_CAP_GB",
												"CUP_B_AV8B_CAP_USMC","CUP_B_F35B_AA_USMC","I_Plane_Fighter_03_AA_F"];
								_unit = selectRandom _unitTypePool;
								[getMarkerPos "ACM",0,_unit,_group] call BIS_fnc_spawnVehicle;
								{
									GW_TrainingGround_spawnedOPFOR pushBack _x;
								} foreach units _group;
								_group addWaypoint [getMarkerPos "ravenSolo", 0];
							};
						};
					};
					case "EP":
					{
						switch (_exerciseID) do
						{
							case 1: // Solo Practice
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["O_Heli_Light_02_F", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird] execFSM "Modules\TrainingGround\FSM\EPFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Raven/Exercise Switch";
							};
						};
					};
					case "Vehicle":
					{
						switch (_exerciseID) do
						{
							case 1: // Driving Course
							{
								removeAllActions Laptop_4;
								
								Laptop_4 addAction ["<t color='#FFFF00'>BACK</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["TKA",0],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>BMP-1</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["TKA",1],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>BMP-2</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["TKA",2],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>BRDM-2</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["TKA",3],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>BTR-40</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["TKA",4],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>BTR-60</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["TKA",5],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>M113</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["TKA",6],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Land Rover</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["TKA",7],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>V3S</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["TKA",8],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>SUV</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["TKA",9],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>UAZ</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["TKA",10],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Ural</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["TKA",11],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>T-34</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["TKA",12],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>T-55</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["TKA",13],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>T-72</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["TKA",14],1,false,false,"",""];
							};
							case 2: // Range
							{
								removeAllActions Laptop_4;
								
								Laptop_4 addAction ["<t color='#FFFF00'>BACK</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["TKA",0],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>BMP-1</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["TKA",1],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>BMP-2</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["TKA",2],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>BRDM-2</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["TKA",3],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>BTR-40</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["TKA",4],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>T-34</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["TKA",5],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>T-55</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["TKA",6],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>T-72</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["TKA",7],1,false,false,"",""];
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Vehicle/Exercise Switch";
							};
						};
					};
					case "FOB":
					{
						switch (_exerciseID) do
						{
							case 1: // Cluster
							{
								removeAllActions Laptop_6;
								
								// spawn relevant objects to construct the ranges/assault course -> check nekos code for important stuff like target naming etc
								["CUP_O_Ural_Open_TKA","CUP_O_UAZ_Unarmed_TKA","CUP_O_UAZ_Unarmed_TKA","CUP_O_LR_Ambulance_TKA","CUP_O_UAZ_Unarmed_TKA","CUP_O_UAZ_Unarmed_TKA","CUP_O_UAZ_Unarmed_TKA","CUP_O_BTR60_TK",
								"CUP_O_Ural_Open_TKA","JAS_CUP_O_Mi24_D_TK","CUP_O_Mi17_VIV_TK","JAS_CUP_O_Mi24_D_TK","CUP_O_Ural_Repair_TKA","CUP_O_Ural_Refuel_TKA"] call GW_TrainingGround_fnc_fobcluster;
								
								// spawn relevant supplies -> initialise spawned boxes as supply crates which should in turn call the relevant framework handler
								_markers = ["986300","986303","981303","984312","981304"];
								{
									_pos = getMarkerPos _x;
									_box = createVehicle ["Box_NATO_Ammo_F", _pos, [], 0, "CAN_COLLIDE"];
									[_box, ["big_box","east"]] call GW_Gear_Fnc_Init;
								}foreach _markers;
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Vehicle/Exercise Switch";
							};
						};
					};
					default
					{
						hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Callsign Switch";
					};
				};
			};
			case "INSURGENT-D":
			{
				switch (_callsign) do
				{
					case "Raven":
					{
						switch (_exerciseID) do
						{
							case 1:
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["JAS_CUP_O_Mi17_AAC", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							case 2: // Raven Normal Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_O_Mi17_AAC", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"normal",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 3: // Raven Urban Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_O_Mi17_AAC", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"urban",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 4: // Raven Special Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_O_Mi17_AAC", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"special",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 5: // Raven Assault Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_O_Mi17_AAC", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"assault",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Callsign/Exercise Switch";
							};
						};
					};
					case "Giant":
					{
						switch (_exerciseID) do
						{
							case 1: // Solo Practice
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["JAS_CUP_O_Mi17_TK", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Giant"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							case 2: // Giant Insertion Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_O_Mi17_TK", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"Giant",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 3: // Giant Sling Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								_crateSlots = ["sling","sling_1","sling_2","sling_3","sling_4","sling_5","sling_6","sling_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["CargoNet_01_barrels_F", _position, [], 0, "CAN_COLLIDE"];
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _crateSlots;
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_O_Mi17_TK", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"urban",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Giant/Exercise Switch";
							};
						};
					};
					case "Condor":
					{
						switch (_exerciseID) do
						{
							case 1: // Solo Practice
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["O_T_VTOL_02_infantry_F", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Condor"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							case 2: // Condor HLS Ops
							{
								_group = group _caller;
								_parkingSlots = ["VTOLPark","VTOLPark_1","VTOLPark_2","VTOLPark_3","VTOLPark_4","VTOLPark_5","VTOLPark_6","VTOLPark_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["O_T_VTOL_02_infantry_F", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"CondorHLS",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 3: // Giant Sling Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								_crateSlots = ["sling","sling_1","sling_2","sling_3","sling_4","sling_5","sling_6","sling_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["CargoNet_01_barrels_F", _position, [], 0, "CAN_COLLIDE"];
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _crateSlots;
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["O_Heli_Transport_04_F", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"urban",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Giant/Exercise Switch";
							};
						};
					};
					case "Range":
					{
						switch (_exerciseID) do
						{
							case 1: // Rocket/Gunnery
							{
								for "_i" from 1 to 10 do
								{
									_group = createGroup west;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["B_Truck_01_mover_F","B_Truck_01_ammo_F","B_Truck_01_box_F","B_Truck_01_fuel_F","B_Truck_01_medical_F",
												"B_Truck_01_Repair_F","B_Truck_01_transport_F","B_Truck_01_covered_F","B_MRAP_01_F","B_MRAP_01_gmg_F","B_MRAP_01_hmg_F",
												"B_LSV_01_armed_F","B_LSV_01_unarmed_F"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 2: // ATGM
							{
								for "_i" from 1 to 10 do
								{
									_group = createGroup west;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["B_APC_Wheeled_01_cannon_F","B_APC_Tracked_01_rcws_F","B_APC_Tracked_01_CRV_F",
												"B_MBT_01_mlrs_F","B_MBT_01_arty_F","CUP_B_Challenger2_NATO","B_MBT_01_TUSK_F",
												"B_MBT_01_cannon_F"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 3: // Bombs
							{
								for "_i" from 1 to 10 do
								{
									_group = createGroup west;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["Land_BagBunker_Large_F","Land_Cargo_House_V1_F","Land_Cargo_HQ_V1_F",
												"Land_Cargo_Patrol_V1_F","Land_Cargo_Tower_V1_F"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 4: // SEAD
							{
								for "_i" from 1 to 5 do
								{
									_group = createGroup west;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["CUP_B_ZSU23_CDF","CUP_B_ZU23_CDF","B_APC_Tracked_01_AA_F","CUP_B_HMMWV_Avenger_NATO_T",
												"CUP_B_M6LineBacker_NATO_T","CUP_B_M163_USA"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 5: // Mortar Range @ OP Dragon
							{
								null = [[monitor6],["spotter_21","spotter_22","spotter_23","spotter_24","spotter_25"]] execVM "LFC\feedInit.sqf";
								_mortars = ["mortarSpawn","mortarSpawn_1","mortarSpawn_2","mortarSpawn_3","mortarSpawn_4"];
								{
									_pos = getMarkerPos _x;
									_heli = createVehicle ["I_Mortar_01_F", _pos, [], 0, "CAN_COLLIDE"];
									GW_TrainingGround_spawnedAssets pushBack _heli;
								} foreach _mortars;
								for "_i" from 1 to 5 do
								{
									_group = createGroup west;
									_loc = selectRandom _morTgts;
									_locArray = [_loc];
									_morTgts = _morTgts - _locArray;
									_unitType = ["B_Truck_01_mover_F","B_Truck_01_ammo_F","B_Truck_01_box_F","B_Truck_01_fuel_F","B_Truck_01_medical_F",
											"B_Truck_01_Repair_F","B_Truck_01_transport_F","B_Truck_01_covered_F","B_MRAP_01_F","B_MRAP_01_gmg_F","B_MRAP_01_hmg_F",
											"B_LSV_01_armed_F","B_LSV_01_unarmed_F","B_APC_Wheeled_01_cannon_F","B_APC_Tracked_01_rcws_F"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									_markerstr = createMarker [_loc + "1", getMarkerPos _loc];
									_markerstr setMarkerShape "ICON";
									_markerstr setMarkerType "hd_destroy";
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Range/Exercise Switch";
							};
						};
					};
					case "ACM":
					{
						switch (_exerciseID) do
						{
							case 1: 
							{
								_group = createGroup west;
								_unitTypePool = ["CUP_B_L39_CAP_CZ","JS_JC_FA18E","CUP_B_F35B_AA_BAF","CUP_B_GR9_CAP_GB",
												"CUP_B_AV8B_CAP_USMC","CUP_B_F35B_AA_USMC","I_Plane_Fighter_03_AA_F"];
								_unit = selectRandom _unitTypePool;
								[getMarkerPos "ACM",0,_unit,_group] call BIS_fnc_spawnVehicle;
								{
									GW_TrainingGround_spawnedOPFOR pushBack _x;
								} foreach units _group;
								_group addWaypoint [getMarkerPos "ravenSolo", 0];
							};
						};
					};
					case "EP":
					{
						switch (_exerciseID) do
						{
							case 1: // Solo Practice
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["O_Heli_Light_02_F", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird] execFSM "Modules\TrainingGround\FSM\EPFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Raven/Exercise Switch";
							};
						};
					};
					case "Vehicle":
					{
						switch (_exerciseID) do
						{
							case 1: // Driving Course
							{
								removeAllActions Laptop_4;
								
								Laptop_4 addAction ["<t color='#FFFF00'>BACK</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["TKM",0],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>BTR-40</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["TKM",1],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Land Rover</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["TKM",2],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>V3S</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["TKM",3],1,false,false,"",""];
							};
							case 2: // Range
							{
								removeAllActions Laptop_4;
								
								Laptop_4 addAction ["<t color='#FFFF00'>BACK</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["CSATU",0],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>BM-2T Stalker</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["CSATU",1],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Otokar ARMA</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["CSATU",2],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Punisher HMG</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["CSATU",3],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Punisher GMG</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["CSATU",4],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Qilin</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["CSATU",5],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>T-100</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["CSATU",6],1,false,false,"",""];
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Vehicle/Exercise Switch";
							};
						};
					};
					case "FOB":
					{
						switch (_exerciseID) do
						{
							case 1: // Cluster
							{
								removeAllActions Laptop_6;
								
								// spawn relevant objects to construct the ranges/assault course -> check nekos code for important stuff like target naming etc
								["CUP_O_V3S_Open_TKM","CUP_O_LR_Transport_TKM","CUP_O_LR_Transport_TKM","CUP_O_LR_Transport_TKM","CUP_O_LR_Transport_TKM","CUP_O_LR_Transport_TKM","CUP_O_LR_Transport_TKM","CUP_O_BTR60_TK",
								"CUP_O_V3S_Open_TKM","","","","CUP_O_V3S_Repair_TKM","CUP_O_V3S_Refuel_TKM"] call GW_TrainingGround_fnc_fobcluster;
								
								// spawn relevant supplies -> initialise spawned boxes as supply crates which should in turn call the relevant framework handler
								_markers = ["986300","986303","981303","984312","981304"];
								{
									_pos = getMarkerPos _x;
									_box = createVehicle ["Box_NATO_Ammo_F", _pos, [], 0, "CAN_COLLIDE"];
									[_box, ["big_box","east"]] call GW_Gear_Fnc_Init;
								}foreach _markers;
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Vehicle/Exercise Switch";
							};
						};
					};
					default
					{
						hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Callsign Switch";
					};
				};
			};
			case "INSURGENT-W":
			{
				switch (_callsign) do
				{
					case "Raven":
					{
						switch (_exerciseID) do
						{
							case 1:
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["JAS_CUP_O_Mi17_AAC", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							case 2: // Raven Normal Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_O_Mi17_AAC", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"normal",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 3: // Raven Urban Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_O_Mi17_AAC", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"urban",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 4: // Raven Special Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_O_Mi17_AAC", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"special",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 5: // Raven Assault Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_O_Mi17_AAC", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"assault",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Callsign/Exercise Switch";
							};
						};
					};
					case "Giant":
					{
						switch (_exerciseID) do
						{
							case 1: // Solo Practice
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["JAS_CUP_O_Mi17_TK", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Giant"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							case 2: // Giant Insertion Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								_crateSlots = ["sling","sling_1","sling_2","sling_3","sling_4","sling_5","sling_6","sling_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["CargoNet_01_barrels_F", _position, [], 0, "CAN_COLLIDE"];
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _crateSlots;
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_O_Mi17_TK", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"Giant",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 3: // Giant Sling Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_O_Mi17_TK", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"urban",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Giant/Exercise Switch";
							};
						};
					};
					case "Condor":
					{
						switch (_exerciseID) do
						{
							case 1: // Solo Practice
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["O_T_VTOL_02_infantry_F", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Condor"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							case 2: // Condor HLS Ops
							{
								_group = group _caller;
								_parkingSlots = ["VTOLPark","VTOLPark_1","VTOLPark_2","VTOLPark_3","VTOLPark_4","VTOLPark_5","VTOLPark_6","VTOLPark_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["O_T_VTOL_02_infantry_F", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"CondorHLS",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 3: // Giant Sling Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								_crateSlots = ["sling","sling_1","sling_2","sling_3","sling_4","sling_5","sling_6","sling_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["CargoNet_01_barrels_F", _position, [], 0, "CAN_COLLIDE"];
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _crateSlots;
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["O_Heli_Transport_04_F", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"urban",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Giant/Exercise Switch";
							};
						};
					};
					case "Range":
					{
						switch (_exerciseID) do
						{
							case 1: // Rocket/Gunnery
							{
								for "_i" from 1 to 10 do
								{
									_group = createGroup west;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["B_Truck_01_mover_F","B_Truck_01_ammo_F","B_Truck_01_box_F","B_Truck_01_fuel_F","B_Truck_01_medical_F",
												"B_Truck_01_Repair_F","B_Truck_01_transport_F","B_Truck_01_covered_F","B_MRAP_01_F","B_MRAP_01_gmg_F","B_MRAP_01_hmg_F",
												"B_LSV_01_armed_F","B_LSV_01_unarmed_F"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 2: // ATGM
							{
								for "_i" from 1 to 10 do
								{
									_group = createGroup west;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["B_APC_Wheeled_01_cannon_F","B_APC_Tracked_01_rcws_F","B_APC_Tracked_01_CRV_F",
												"B_MBT_01_mlrs_F","B_MBT_01_arty_F","CUP_B_Challenger2_NATO","B_MBT_01_TUSK_F",
												"B_MBT_01_cannon_F"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 3: // Bombs
							{
								for "_i" from 1 to 10 do
								{
									_group = createGroup west;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["Land_BagBunker_Large_F","Land_Cargo_House_V1_F","Land_Cargo_HQ_V1_F",
												"Land_Cargo_Patrol_V1_F","Land_Cargo_Tower_V1_F"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 4: // SEAD
							{
								for "_i" from 1 to 5 do
								{
									_group = createGroup west;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["CUP_B_ZSU23_CDF","CUP_B_ZU23_CDF","B_APC_Tracked_01_AA_F","CUP_B_HMMWV_Avenger_NATO_T",
												"CUP_B_M6LineBacker_NATO_T","CUP_B_M163_USA"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 5: // Mortar Range @ OP Dragon
							{
								null = [[monitor6],["spotter_21","spotter_22","spotter_23","spotter_24","spotter_25"]] execVM "LFC\feedInit.sqf";
								_mortars = ["mortarSpawn","mortarSpawn_1","mortarSpawn_2","mortarSpawn_3","mortarSpawn_4"];
								{
									_pos = getMarkerPos _x;
									_heli = createVehicle ["I_Mortar_01_F", _pos, [], 0, "CAN_COLLIDE"];
									GW_TrainingGround_spawnedAssets pushBack _heli;
								} foreach _mortars;
								for "_i" from 1 to 5 do
								{
									_group = createGroup west;
									_loc = selectRandom _morTgts;
									_locArray = [_loc];
									_morTgts = _morTgts - _locArray;
									_unitType = ["B_Truck_01_mover_F","B_Truck_01_ammo_F","B_Truck_01_box_F","B_Truck_01_fuel_F","B_Truck_01_medical_F",
											"B_Truck_01_Repair_F","B_Truck_01_transport_F","B_Truck_01_covered_F","B_MRAP_01_F","B_MRAP_01_gmg_F","B_MRAP_01_hmg_F",
											"B_LSV_01_armed_F","B_LSV_01_unarmed_F","B_APC_Wheeled_01_cannon_F","B_APC_Tracked_01_rcws_F"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									_markerstr = createMarker [_loc + "1", getMarkerPos _loc];
									_markerstr setMarkerShape "ICON";
									_markerstr setMarkerType "hd_destroy";
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Range/Exercise Switch";
							};
						};
					};
					case "ACM":
					{
						switch (_exerciseID) do
						{
							case 1: 
							{
								_group = createGroup west;
								_unitTypePool = ["CUP_B_L39_CAP_CZ","JS_JC_FA18E","CUP_B_F35B_AA_BAF","CUP_B_GR9_CAP_GB",
												"CUP_B_AV8B_CAP_USMC","CUP_B_F35B_AA_USMC","I_Plane_Fighter_03_AA_F"];
								_unit = selectRandom _unitTypePool;
								[getMarkerPos "ACM",0,_unit,_group] call BIS_fnc_spawnVehicle;
								{
									GW_TrainingGround_spawnedOPFOR pushBack _x;
								} foreach units _group;
								_group addWaypoint [getMarkerPos "ravenSolo", 0];
							};
						};
					};
					case "EP":
					{
						switch (_exerciseID) do
						{
							case 1: // Solo Practice
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["O_Heli_Light_02_F", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird] execFSM "Modules\TrainingGround\FSM\EPFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Raven/Exercise Switch";
							};
						};
					};
					case "Vehicle":
					{
						switch (_exerciseID) do
						{
							case 1: // Driving Course
							{
								removeAllActions Laptop_4;
								
								Laptop_4 addAction ["<t color='#FFFF00'>BACK</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["TKM",0],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>BTR-40</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["TKM",1],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Land Rover</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["TKM",2],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>V3S</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["TKM",3],1,false,false,"",""];
							};
							case 2: // Range
							{
								removeAllActions Laptop_4;
								
								Laptop_4 addAction ["<t color='#FFFF00'>BACK</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["CSATU",0],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>BM-2T Stalker</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["CSATU",1],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Otokar ARMA</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["CSATU",2],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Punisher HMG</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["CSATU",3],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Punisher GMG</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["CSATU",4],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Qilin</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["CSATU",5],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>T-100</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["CSATU",6],1,false,false,"",""];
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Vehicle/Exercise Switch";
							};
						};
					};
					case "FOB":
					{
						switch (_exerciseID) do
						{
							case 1: // Cluster
							{
								removeAllActions Laptop_6;
								
								// spawn relevant objects to construct the ranges/assault course -> check nekos code for important stuff like target naming etc
								["CUP_O_V3S_Open_TKM","CUP_O_LR_Transport_TKM","CUP_O_LR_Transport_TKM","CUP_O_LR_Transport_TKM","CUP_O_LR_Transport_TKM","CUP_O_LR_Transport_TKM","CUP_O_LR_Transport_TKM","CUP_O_BTR60_TK",
								"CUP_O_V3S_Open_TKM","","","","CUP_O_V3S_Repair_TKM","CUP_O_V3S_Refuel_TKM"] call GW_TrainingGround_fnc_fobcluster;
								
								// spawn relevant supplies -> initialise spawned boxes as supply crates which should in turn call the relevant framework handler
								_markers = ["986300","986303","981303","984312","981304"];
								{
									_pos = getMarkerPos _x;
									_box = createVehicle ["Box_NATO_Ammo_F", _pos, [], 0, "CAN_COLLIDE"];
									[_box, ["big_box","east"]] call GW_Gear_Fnc_Init;
								}foreach _markers;
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Vehicle/Exercise Switch";
							};
						};
					};
					default
					{
						hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Callsign Switch";
					};
				};
			};
			case "CAMPAIGN-E":
			{
				switch (_callsign) do
				{
					case "Raven":
					{
						switch (_exerciseID) do
						{
							case 1:
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["O_Heli_Light_02_v2_F", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							case 2: // Raven Normal Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_O_Mi17_AAC", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"normal",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 3: // Raven Urban Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_O_Mi17_AAC", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"urban",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 4: // Raven Special Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_O_Mi17_AAC", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"special",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 5: // Raven Assault Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_O_Mi17_AAC", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"assault",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Callsign/Exercise Switch";
							};
						};
					};
					case "Giant":
					{
						switch (_exerciseID) do
						{
							case 1: // Solo Practice
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["JAS_CUP_O_Mi17_TK", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Giant"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							case 2: // Giant Insertion Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_O_Mi17_TK", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"Giant",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 3: // Giant Sling Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								_crateSlots = ["sling","sling_1","sling_2","sling_3","sling_4","sling_5","sling_6","sling_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["CargoNet_01_barrels_F", _position, [], 0, "CAN_COLLIDE"];
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _crateSlots;
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_O_Mi17_TK", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"urban",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Giant/Exercise Switch";
							};
						};
					};
					case "Condor":
					{
						switch (_exerciseID) do
						{
							case 1: // Solo Practice
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["O_T_VTOL_02_infantry_F", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Condor"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							case 2: // Condor HLS Ops
							{
								_group = group _caller;
								_parkingSlots = ["VTOLPark","VTOLPark_1","VTOLPark_2","VTOLPark_3","VTOLPark_4","VTOLPark_5","VTOLPark_6","VTOLPark_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["O_T_VTOL_02_infantry_F", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"CondorHLS",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 3: // Giant Sling Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								_crateSlots = ["sling","sling_1","sling_2","sling_3","sling_4","sling_5","sling_6","sling_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["CargoNet_01_barrels_F", _position, [], 0, "CAN_COLLIDE"];
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _crateSlots;
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["O_Heli_Transport_04_F", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"urban",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Giant/Exercise Switch";
							};
						};
					};
					case "Range":
					{
						switch (_exerciseID) do
						{
							case 1: // Rocket/Gunnery
							{
								for "_i" from 1 to 10 do
								{
									_group = createGroup west;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["B_Truck_01_mover_F","B_Truck_01_ammo_F","B_Truck_01_box_F","B_Truck_01_fuel_F","B_Truck_01_medical_F",
												"B_Truck_01_Repair_F","B_Truck_01_transport_F","B_Truck_01_covered_F","B_MRAP_01_F","B_MRAP_01_gmg_F","B_MRAP_01_hmg_F",
												"B_LSV_01_armed_F","B_LSV_01_unarmed_F"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 2: // ATGM
							{
								for "_i" from 1 to 10 do
								{
									_group = createGroup west;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["B_APC_Wheeled_01_cannon_F","B_APC_Tracked_01_rcws_F","B_APC_Tracked_01_CRV_F",
												"B_MBT_01_mlrs_F","B_MBT_01_arty_F","CUP_B_Challenger2_NATO","B_MBT_01_TUSK_F",
												"B_MBT_01_cannon_F"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 3: // Bombs
							{
								for "_i" from 1 to 10 do
								{
									_group = createGroup west;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["Land_BagBunker_Large_F","Land_Cargo_House_V1_F","Land_Cargo_HQ_V1_F",
												"Land_Cargo_Patrol_V1_F","Land_Cargo_Tower_V1_F"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 4: // SEAD
							{
								for "_i" from 1 to 5 do
								{
									_group = createGroup west;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["CUP_B_ZSU23_CDF","CUP_B_ZU23_CDF","B_APC_Tracked_01_AA_F","CUP_B_HMMWV_Avenger_NATO_T",
												"CUP_B_M6LineBacker_NATO_T","CUP_B_M163_USA"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 5: // Mortar Range @ OP Dragon
							{
								null = [[monitor6],["spotter_21","spotter_22","spotter_23","spotter_24","spotter_25"]] execVM "LFC\feedInit.sqf";
								_mortars = ["mortarSpawn","mortarSpawn_1","mortarSpawn_2","mortarSpawn_3","mortarSpawn_4"];
								{
									_pos = getMarkerPos _x;
									_heli = createVehicle ["I_Mortar_01_F", _pos, [], 0, "CAN_COLLIDE"];
									GW_TrainingGround_spawnedAssets pushBack _heli;
								} foreach _mortars;
								for "_i" from 1 to 5 do
								{
									_group = createGroup west;
									_loc = selectRandom _morTgts;
									_locArray = [_loc];
									_morTgts = _morTgts - _locArray;
									_unitType = ["B_Truck_01_mover_F","B_Truck_01_ammo_F","B_Truck_01_box_F","B_Truck_01_fuel_F","B_Truck_01_medical_F",
											"B_Truck_01_Repair_F","B_Truck_01_transport_F","B_Truck_01_covered_F","B_MRAP_01_F","B_MRAP_01_gmg_F","B_MRAP_01_hmg_F",
											"B_LSV_01_armed_F","B_LSV_01_unarmed_F","B_APC_Wheeled_01_cannon_F","B_APC_Tracked_01_rcws_F"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									_markerstr = createMarker [_loc + "1", getMarkerPos _loc];
									_markerstr setMarkerShape "ICON";
									_markerstr setMarkerType "hd_destroy";
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Range/Exercise Switch";
							};
						};
					};
					case "ACM":
					{
						switch (_exerciseID) do
						{
							case 1: 
							{
								_group = createGroup west;
								_unitTypePool = ["CUP_B_L39_CAP_CZ","JS_JC_FA18E","CUP_B_F35B_AA_BAF","CUP_B_GR9_CAP_GB",
												"CUP_B_AV8B_CAP_USMC","CUP_B_F35B_AA_USMC","I_Plane_Fighter_03_AA_F"];
								_unit = selectRandom _unitTypePool;
								[getMarkerPos "ACM",0,_unit,_group] call BIS_fnc_spawnVehicle;
								{
									GW_TrainingGround_spawnedOPFOR pushBack _x;
								} foreach units _group;
								_group addWaypoint [getMarkerPos "ravenSolo", 0];
							};
						};
					};
					case "EP":
					{
						switch (_exerciseID) do
						{
							case 1: // Solo Practice
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["O_Heli_Light_02_F", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird] execFSM "Modules\TrainingGround\FSM\EPFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Raven/Exercise Switch";
							};
						};
					};
					case "Vehicle":
					{
						switch (_exerciseID) do
						{
							case 1: // Driving Course
							{
								removeAllActions Laptop_4;
								
								Laptop_4 addAction ["<t color='#FFFF00'>BACK</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["TKM",0],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>BTR-40</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["TKM",1],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Land Rover</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["TKM",2],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>V3S</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["TKM",3],1,false,false,"",""];
							};
							case 2: // Range
							{
								removeAllActions Laptop_4;
								
								Laptop_4 addAction ["<t color='#FFFF00'>BACK</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["CSATU",0],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>BM-2T Stalker</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["CSATU",1],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Otokar ARMA</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["CSATU",2],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Punisher HMG</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["CSATU",3],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Punisher GMG</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["CSATU",4],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Qilin</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["CSATU",5],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>T-100</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["CSATU",6],1,false,false,"",""];
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Vehicle/Exercise Switch";
							};
						};
					};
					case "FOB":
					{
						switch (_exerciseID) do
						{
							case 1: // Cluster
							{
								removeAllActions Laptop_6;
								
								// spawn relevant objects to construct the ranges/assault course -> check nekos code for important stuff like target naming etc
								["O_Truck_03_transport_F","O_LSV_02_unarmed_F","O_LSV_02_unarmed_F","O_Truck_03_medical_F","O_MRAP_02_F","O_MRAP_02_F","O_MRAP_02_F","O_APC_Wheeled_02_rcws_F",
								"O_Truck_03_transport_F","O_Heli_Light_02_unarmed_F","O_Heli_Transport_04_covered_F","O_Heli_Light_02_unarmed_F","O_Truck_03_repair_F","O_Truck_03_fuel_F"] call GW_TrainingGround_fnc_fobcluster;
								
								// spawn relevant supplies -> initialise spawned boxes as supply crates which should in turn call the relevant framework handler
								_markers = ["986300","986303","981303","984312","981304"];
								{
									_pos = getMarkerPos _x;
									_box = createVehicle ["Box_NATO_Ammo_F", _pos, [], 0, "CAN_COLLIDE"];
									[_box, ["big_box","east"]] call GW_Gear_Fnc_Init;
								}foreach _markers;
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Vehicle/Exercise Switch";
							};
						};
					};
					default
					{
						hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Callsign Switch";
					};
				};
			};
			default
			{
				hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR Switch";
			};
		};
	};
	case 1: // BLUFOR
	{
		switch (_blufor) do
		{
			case "NATO-D":
			{
				switch (_callsign) do
				{
					case "Raven":
					{
						switch (_exerciseID) do
						{
							case 1:
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["B_Heli_Transport_01_F", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							case 2: // Raven Normal Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking","parking_1","parking_2","parking_3","parking_4","parking_5","parking_6","parking_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["B_Heli_Transport_01_F", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"normal",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 3: // Raven Urban Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking","parking_1","parking_2","parking_3","parking_4","parking_5","parking_6","parking_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["B_Heli_Transport_01_F", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"urban",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 4: // Raven Special Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking","parking_1","parking_2","parking_3","parking_4","parking_5","parking_6","parking_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["B_Heli_Transport_01_F", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"special",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 5: // Raven Assault Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking","parking_1","parking_2","parking_3","parking_4","parking_5","parking_6","parking_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["B_Heli_Transport_01_F", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"assault",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/BLUFOR/Callsign/Exercise Switch";
							};
						};
					};
					case "Giant":
					{
						switch (_exerciseID) do
						{
							case 1: // Solo Practice
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["B_Heli_Transport_03_unarmed_F", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Giant"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							case 2: // Giant Insertion Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["B_Heli_Transport_03_unarmed_F", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"Giant",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 3: // Giant Sling Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								_crateSlots = ["sling","sling_1","sling_2","sling_3","sling_4","sling_5","sling_6","sling_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["CargoNet_01_barrels_F", _position, [], 0, "CAN_COLLIDE"];
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _crateSlots;
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["B_Heli_Transport_03_unarmed_F", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"urban",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Giant/Exercise Switch";
							};
						};
					};
					case "Condor":
					{
						switch (_exerciseID) do
						{
							case 1: // Solo Practice
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["CUP_B_MV22_USMC_RAMPGUN", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Condor"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							case 2: // Condor HLS Ops
							{
								_group = group _caller;
								_parkingSlots = ["VTOLPark","VTOLPark_1","VTOLPark_2","VTOLPark_3","VTOLPark_4","VTOLPark_5","VTOLPark_6","VTOLPark_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["CUP_B_MV22_USMC_RAMPGUN", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"CondorHLS",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 3: // Giant Sling Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								_crateSlots = ["sling","sling_1","sling_2","sling_3","sling_4","sling_5","sling_6","sling_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["CargoNet_01_barrels_F", _position, [], 0, "CAN_COLLIDE"];
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _crateSlots;
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["O_Heli_Transport_04_F", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"urban",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Giant/Exercise Switch";
							};
						};
					};
					case "Range":
					{
						switch (_exerciseID) do
						{
							case 1: // Rocket/Gunnery
							{
								for "_i" from 1 to 10 do
								{
									_group = createGroup east;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["O_Truck_02_Ammo_F","O_Truck_02_fuel_F","O_Truck_02_medical_F","O_Truck_02_box_F",
												"O_Truck_02_transport_F","O_Truck_02_covered_F","O_MRAP_02_F","O_MRAP_02_gmg_F",
												"O_MRAP_02_hmg_F","O_LSV_02_armed_F","O_LSV_02_unarmed_F","O_Truck_03_ammo_F",
												"O_Truck_03_device_F","O_Truck_03_fuel_F","O_Truck_03_medical_F","O_Truck_03_repair_F",
												"O_Truck_03_transport_F","O_Truck_03_covered_F","CUP_O_UAZ_Unarmed_CSAT","CUP_O_UAZ_AGS30_CSAT",
												"CUP_O_UAZ_MG_CSAT","CUP_O_UAZ_METIS_CSAT","CUP_O_UAZ_Militia_CSAT","CUP_O_UAZ_Open_CSAT",
												"CUP_O_UAZ_SPG9_CSAT"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 2: // ATGM
							{
								for "_i" from 1 to 10 do
								{
									_group = createGroup east;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["O_APC_Tracked_02_cannon_F","CUP_O_BMP1_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP2_CSAT",
												"CUP_O_BMP_HQ_CSAT","CUP_O_BMP2_AMB_CSAT","CUP_O_BMP2_ZU_CSAT","CUP_O_BRDM2_CSAT",
												"CUP_O_BRDM2_ATGM_CSAT","CUP_O_BRDM2_HQ_CSAT","CUP_O_BTR60_CSAT","O_APC_Wheeled_02_rcws_F",
												"O_MBT_02_arty_F","CUP_O_T55_CSAT","CUP_O_T72_CSAT","O_MBT_02_cannon_F"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 3: // Bombs
							{
								for "_i" from 1 to 10 do
								{
									_group = createGroup west;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["Land_BagBunker_Large_F","Land_Cargo_House_V1_F","Land_Cargo_HQ_V1_F",
												"Land_Cargo_Patrol_V1_F","Land_Cargo_Tower_V1_F"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 4: // SEAD
							{
								for "_i" from 1 to 5 do
								{
									_group = createGroup east;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["CUP_O_ZSU23_ChDKZ","CUP_O_ZU23_ChDKZ","O_APC_Tracked_02_AA_F","CUP_O_2S6_RU",
												"CUP_O_2S6M_RU"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 5: // Mortar Range @ OP Dragon
							{
								null = [[monitor6],["spotter_21","spotter_22","spotter_23","spotter_24","spotter_25"]] execVM "LFC\feedInit.sqf";
								_mortars = ["mortarSpawn","mortarSpawn_1","mortarSpawn_2","mortarSpawn_3","mortarSpawn_4"];
								{
									_pos = getMarkerPos _x;
									_heli = createVehicle ["I_Mortar_01_F", _pos, [], 0, "CAN_COLLIDE"];
									GW_TrainingGround_spawnedAssets pushBack _heli;
								} foreach _mortars;
								for "_i" from 1 to 5 do
								{
									_group = createGroup east;
									_loc = selectRandom _morTgts;
									_locArray = [_loc];
									_morTgts = _morTgts - _locArray;
									_unitType = ["O_APC_Tracked_02_cannon_F","CUP_O_BMP1_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP2_CSAT",
												"CUP_O_BMP_HQ_CSAT","CUP_O_BMP2_AMB_CSAT","CUP_O_BMP2_ZU_CSAT","CUP_O_BRDM2_CSAT",
												"CUP_O_BRDM2_ATGM_CSAT","CUP_O_BRDM2_HQ_CSAT","CUP_O_BTR60_CSAT","O_APC_Wheeled_02_rcws_F",
												"O_MBT_02_arty_F","CUP_O_T55_CSAT","CUP_O_T72_CSAT","O_MBT_02_cannon_F"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									_markerstr = createMarker [_loc + "1", getMarkerPos _loc];
									_markerstr setMarkerShape "ICON";
									_markerstr setMarkerType "hd_destroy";
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Range/Exercise Switch";
							};
						};
					};
					case "ACM":
					{
						switch (_exerciseID) do
						{
							case 1: 
							{
								_group = createGroup east;
								_unitTypePool = ["O_Plane_CAS_02_F","CUP_O_L39_CAP_TK"];
								_unit = selectRandom _unitTypePool;
								[getMarkerPos "ACM",0,_unit,_group] call BIS_fnc_spawnVehicle;
								{
									GW_TrainingGround_spawnedOPFOR pushBack _x;
								} foreach units _group;
								_group addWaypoint [getMarkerPos "ravenSolo", 0];
							};
						};
					};
					case "EP":
					{
						switch (_exerciseID) do
						{
							case 1: // Solo Practice
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["B_Heli_Transport_01_F", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird] execFSM "Modules\TrainingGround\FSM\EPFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Raven/Exercise Switch";
							};
						};
					};
					case "Vehicle":
					{
						switch (_exerciseID) do
						{
							case 1: // Driving Course
							{
								removeAllActions Laptop_4;
								
								Laptop_4 addAction ["<t color='#FFFF00'>BACK</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["NATOD",0],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Badger</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["NATOD",1],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Namer</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["NATOD",2],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>HEMTT</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["NATOD",3],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>M-ATV</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["NATOD",4],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Prowler</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["NATOD",5],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Quad Bike</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["NATOD",6],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Challenger 2</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["NATOD",7],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Merkava</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["NATOD",8],1,false,false,"",""];
							};
							case 2: // Range
							{
								removeAllActions Laptop_4;
								
								Laptop_4 addAction ["<t color='#FFFF00'>BACK</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["NATOD",0],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Badger</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["NATOD",1],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Namer</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["NATOD",2],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>M-ATV HMG</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["NATOD",3],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>M-ATV GMG</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["NATOD",4],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Prowler</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["NATOD",5],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Challenger 2</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["NATOD",6],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Merkava</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["NATOD",7],1,false,false,"",""];
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Vehicle/Exercise Switch";
							};
						};
					};
					case "FOB":
					{
						switch (_exerciseID) do
						{
							case 1: // Cluster
							{
								removeAllActions Laptop_6;
								
								// spawn relevant objects to construct the ranges/assault course -> check nekos code for important stuff like target naming etc
								["B_Truck_01_transport_F","B_LSV_01_unarmed_F","B_LSV_01_unarmed_F","B_Truck_01_medical_F","B_MRAP_01_F","B_MRAP_01_F","B_MRAP_01_F","B_APC_Wheeled_01_cannon_F",
								"B_Truck_01_transport_F","B_Heli_Light_01_F","B_Heli_Transport_03_unarmed_F","B_Heli_Light_01_F","B_Truck_01_Repair_F","B_Truck_01_fuel_F"] call GW_TrainingGround_fnc_fobcluster;
								
								// spawn relevant supplies -> initialise spawned boxes as supply crates which should in turn call the relevant framework handler
								_markers = ["986300","986303","981303","984312","981304"];
								{
									_pos = getMarkerPos _x;
									_box = createVehicle ["Box_NATO_Ammo_F", _pos, [], 0, "CAN_COLLIDE"];
									[_box, ["big_box","west"]] call GW_Gear_Fnc_Init;
								}foreach _markers;
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Vehicle/Exercise Switch";
							};
						};
					};
					default
					{
						hint "CODE FAIL. spawnAircraft.sqf Main/BLUFOR/Callsign Switch";
					};
				};
			};
			case "NATO-W":
			{
				switch (_callsign) do
				{
					case "Raven":
					{
						switch (_exerciseID) do
						{
							case 1:
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["B_Heli_Transport_01_camo_F", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							case 2: // Raven Normal Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking","parking_1","parking_2","parking_3","parking_4","parking_5","parking_6","parking_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["B_Heli_Transport_01_camo_F", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"normal",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 3: // Raven Urban Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking","parking_1","parking_2","parking_3","parking_4","parking_5","parking_6","parking_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["B_Heli_Transport_01_camo_F", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"urban",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 4: // Raven Special Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking","parking_1","parking_2","parking_3","parking_4","parking_5","parking_6","parking_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["B_Heli_Transport_01_camo_F", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"special",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 5: // Raven Assault Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking","parking_1","parking_2","parking_3","parking_4","parking_5","parking_6","parking_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["B_Heli_Transport_01_camo_F", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"assault",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/BLUFOR/Callsign/Exercise Switch";
							};
						};
					};
					case "Giant":
					{
						switch (_exerciseID) do
						{
							case 1: // Solo Practice
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["B_Heli_Transport_03_unarmed_F", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Giant"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							case 2: // Giant Insertion Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["B_Heli_Transport_03_unarmed_F", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"Giant",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 3: // Giant Sling Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								_crateSlots = ["sling","sling_1","sling_2","sling_3","sling_4","sling_5","sling_6","sling_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["CargoNet_01_barrels_F", _position, [], 0, "CAN_COLLIDE"];
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _crateSlots;
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["B_Heli_Transport_03_unarmed_F", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"urban",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Giant/Exercise Switch";
							};
						};
					};
					case "Condor":
					{
						switch (_exerciseID) do
						{
							case 1: // Solo Practice
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["CUP_B_MV22_USMC_RAMPGUN", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Condor"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							case 2: // Condor HLS Ops
							{
								_group = group _caller;
								_parkingSlots = ["VTOLPark","VTOLPark_1","VTOLPark_2","VTOLPark_3","VTOLPark_4","VTOLPark_5","VTOLPark_6","VTOLPark_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["CUP_B_MV22_USMC_RAMPGUN", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"CondorHLS",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 3: // Giant Sling Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								_crateSlots = ["sling","sling_1","sling_2","sling_3","sling_4","sling_5","sling_6","sling_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["CargoNet_01_barrels_F", _position, [], 0, "CAN_COLLIDE"];
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _crateSlots;
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["O_Heli_Transport_04_F", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"urban",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Giant/Exercise Switch";
							};
						};
					};
					case "Range":
					{
						switch (_exerciseID) do
						{
							case 1: // Rocket/Gunnery
							{
								for "_i" from 1 to 10 do
								{
									_group = createGroup east;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["O_Truck_02_Ammo_F","O_Truck_02_fuel_F","O_Truck_02_medical_F","O_Truck_02_box_F",
												"O_Truck_02_transport_F","O_Truck_02_covered_F","O_MRAP_02_F","O_MRAP_02_gmg_F",
												"O_MRAP_02_hmg_F","O_LSV_02_armed_F","O_LSV_02_unarmed_F","O_Truck_03_ammo_F",
												"O_Truck_03_device_F","O_Truck_03_fuel_F","O_Truck_03_medical_F","O_Truck_03_repair_F",
												"O_Truck_03_transport_F","O_Truck_03_covered_F","CUP_O_UAZ_Unarmed_CSAT","CUP_O_UAZ_AGS30_CSAT",
												"CUP_O_UAZ_MG_CSAT","CUP_O_UAZ_METIS_CSAT","CUP_O_UAZ_Militia_CSAT","CUP_O_UAZ_Open_CSAT",
												"CUP_O_UAZ_SPG9_CSAT"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 2: // ATGM
							{
								for "_i" from 1 to 10 do
								{
									_group = createGroup east;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["O_APC_Tracked_02_cannon_F","CUP_O_BMP1_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP2_CSAT",
												"CUP_O_BMP_HQ_CSAT","CUP_O_BMP2_AMB_CSAT","CUP_O_BMP2_ZU_CSAT","CUP_O_BRDM2_CSAT",
												"CUP_O_BRDM2_ATGM_CSAT","CUP_O_BRDM2_HQ_CSAT","CUP_O_BTR60_CSAT","O_APC_Wheeled_02_rcws_F",
												"O_MBT_02_arty_F","CUP_O_T55_CSAT","CUP_O_T72_CSAT","O_MBT_02_cannon_F"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 3: // Bombs
							{
								for "_i" from 1 to 10 do
								{
									_group = createGroup west;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["Land_BagBunker_Large_F","Land_Cargo_House_V1_F","Land_Cargo_HQ_V1_F",
												"Land_Cargo_Patrol_V1_F","Land_Cargo_Tower_V1_F"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 4: // SEAD
							{
								for "_i" from 1 to 5 do
								{
									_group = createGroup east;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["CUP_O_ZSU23_ChDKZ","CUP_O_ZU23_ChDKZ","O_APC_Tracked_02_AA_F","CUP_O_2S6_RU",
												"CUP_O_2S6M_RU"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 5: // Mortar Range @ OP Dragon
							{
								null = [[monitor6],["spotter_21","spotter_22","spotter_23","spotter_24","spotter_25"]] execVM "LFC\feedInit.sqf";
								_mortars = ["mortarSpawn","mortarSpawn_1","mortarSpawn_2","mortarSpawn_3","mortarSpawn_4"];
								{
									_pos = getMarkerPos _x;
									_heli = createVehicle ["I_Mortar_01_F", _pos, [], 0, "CAN_COLLIDE"];
									GW_TrainingGround_spawnedAssets pushBack _heli;
								} foreach _mortars;
								for "_i" from 1 to 5 do
								{
									_group = createGroup east;
									_loc = selectRandom _morTgts;
									_locArray = [_loc];
									_morTgts = _morTgts - _locArray;
									_unitType = ["O_APC_Tracked_02_cannon_F","CUP_O_BMP1_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP2_CSAT",
												"CUP_O_BMP_HQ_CSAT","CUP_O_BMP2_AMB_CSAT","CUP_O_BMP2_ZU_CSAT","CUP_O_BRDM2_CSAT",
												"CUP_O_BRDM2_ATGM_CSAT","CUP_O_BRDM2_HQ_CSAT","CUP_O_BTR60_CSAT","O_APC_Wheeled_02_rcws_F",
												"O_MBT_02_arty_F","CUP_O_T55_CSAT","CUP_O_T72_CSAT","O_MBT_02_cannon_F"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									_markerstr = createMarker [_loc + "1", getMarkerPos _loc];
									_markerstr setMarkerShape "ICON";
									_markerstr setMarkerType "hd_destroy";
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Range/Exercise Switch";
							};
						};
					};
					case "ACM":
					{
						switch (_exerciseID) do
						{
							case 1: 
							{
								_group = createGroup east;
								_unitTypePool = ["O_Plane_CAS_02_F","CUP_O_L39_CAP_TK"];
								_unit = selectRandom _unitTypePool;
								[getMarkerPos "ACM",0,_unit,_group] call BIS_fnc_spawnVehicle;
								{
									GW_TrainingGround_spawnedOPFOR pushBack _x;
								} foreach units _group;
								_group addWaypoint [getMarkerPos "ravenSolo", 0];
							};
						};
					};
					case "EP":
					{
						switch (_exerciseID) do
						{
							case 1: // Solo Practice
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["B_Heli_Transport_01_F", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird] execFSM "Modules\TrainingGround\FSM\EPFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Raven/Exercise Switch";
							};
						};
					};
					case "Vehicle":
					{
						switch (_exerciseID) do
						{
							case 1: // Driving Course
							{
								removeAllActions Laptop_4;
								
								Laptop_4 addAction ["<t color='#FFFF00'>BACK</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["NATOW",0],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Badger</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["NATOW",1],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Bradley</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["NATOW",2],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Namer</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["NATOW",3],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>HEMTT</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["NATOW",4],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>HMMWV</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["NATOW",5],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>M-ATV</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["NATOW",6],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Prowler</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["NATOW",7],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Quad Bike</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["NATOW",8],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>M1A1 Abrams</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["NATOW",9],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Merkava</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["NATOW",10],1,false,false,"",""];
							};
							case 2: // Range
							{
								removeAllActions Laptop_4;
								
								Laptop_4 addAction ["<t color='#FFFF00'>BACK</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["NATOW",0],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Badger</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["NATOW",1],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Namer</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["NATOW",2],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>M-ATV HMG</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["NATOW",3],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>M-ATV GMG</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["NATOW",4],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Prowler</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["NATOW",5],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>M1A1 Abrams</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["NATOW",6],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Merkava</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["NATOW",7],1,false,false,"",""];
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Vehicle/Exercise Switch";
							};
						};
					};
					case "FOB":
					{
						switch (_exerciseID) do
						{
							case 1: // Cluster
							{
								removeAllActions Laptop_6;
								
								// spawn relevant objects to construct the ranges/assault course -> check nekos code for important stuff like target naming etc
								["B_T_Truck_01_transport_F","B_T_LSV_01_unarmed_F","B_T_LSV_01_unarmed_F","B_T_Truck_01_medical_F","B_T_MRAP_01_F","B_T_MRAP_01_F","B_T_MRAP_01_F","B_T_APC_Wheeled_01_cannon_F",
								"B_T_Truck_01_transport_F","B_Heli_Light_01_F","B_Heli_Transport_03_unarmed_F","B_Heli_Light_01_F","B_T_Truck_01_Repair_F","B_T_Truck_01_fuel_F"] call GW_TrainingGround_fnc_fobcluster;
								
								// spawn relevant supplies -> initialise spawned boxes as supply crates which should in turn call the relevant framework handler
								_markers = ["986300","986303","981303","984312","981304"];
								{
									_pos = getMarkerPos _x;
									_box = createVehicle ["Box_NATO_Ammo_F", _pos, [], 0, "CAN_COLLIDE"];
									[_box, ["big_box","west"]] call GW_Gear_Fnc_Init;
								}foreach _markers;
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Vehicle/Exercise Switch";
							};
						};
					};
					default
					{
						hint "CODE FAIL. spawnAircraft.sqf Main/BLUFOR/Callsign Switch";
					};
				};
			};
			case "BAF-D":
			{
				switch (_callsign) do
				{
					case "Raven":
					{
						switch (_exerciseID) do
						{
							case 1:
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["JAS_CUP_B_AW159_Unarmed_AAC", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							case 2: // Raven Normal Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking","parking_1","parking_2","parking_3","parking_4","parking_5","parking_6","parking_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_B_AW159_Unarmed_AAC", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"normal",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 3: // Raven Urban Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking","parking_1","parking_2","parking_3","parking_4","parking_5","parking_6","parking_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_B_AW159_Unarmed_AAC", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"urban",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 4: // Raven Special Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking","parking_1","parking_2","parking_3","parking_4","parking_5","parking_6","parking_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_B_AW159_Unarmed_AAC", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"special",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 5: // Raven Assault Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking","parking_1","parking_2","parking_3","parking_4","parking_5","parking_6","parking_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_B_AW159_Unarmed_AAC", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"assault",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/BLUFOR/Callsign/Exercise Switch";
							};
						};
					};
					case "Giant":
					{
						switch (_exerciseID) do
						{
							case 1: // Solo Practice
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["JAS_CUP_B_Merlin_HC3_GB_Armed", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Giant"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							case 2: // Giant Insertion Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_B_Merlin_HC3_GB_Armed", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"Giant",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 3: // Giant Sling Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								_crateSlots = ["sling","sling_1","sling_2","sling_3","sling_4","sling_5","sling_6","sling_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["CargoNet_01_barrels_F", _position, [], 0, "CAN_COLLIDE"];
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _crateSlots;
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_B_Merlin_HC3_GB_Armed", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"urban",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Giant/Exercise Switch";
							};
						};
					};
					case "Condor":
					{
						switch (_exerciseID) do
						{
							case 1: // Solo Practice
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["CUP_B_MV22_USMC_RAMPGUN", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Condor"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							case 2: // Condor HLS Ops
							{
								_group = group _caller;
								_parkingSlots = ["VTOLPark","VTOLPark_1","VTOLPark_2","VTOLPark_3","VTOLPark_4","VTOLPark_5","VTOLPark_6","VTOLPark_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["CUP_B_MV22_USMC_RAMPGUN", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"CondorHLS",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 3: // Giant Sling Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								_crateSlots = ["sling","sling_1","sling_2","sling_3","sling_4","sling_5","sling_6","sling_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["CargoNet_01_barrels_F", _position, [], 0, "CAN_COLLIDE"];
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _crateSlots;
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["O_Heli_Transport_04_F", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"urban",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Giant/Exercise Switch";
							};
						};
					};
					case "Range":
					{
						switch (_exerciseID) do
						{
							case 1: // Rocket/Gunnery
							{
								for "_i" from 1 to 10 do
								{
									_group = createGroup east;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["O_Truck_02_Ammo_F","O_Truck_02_fuel_F","O_Truck_02_medical_F","O_Truck_02_box_F",
												"O_Truck_02_transport_F","O_Truck_02_covered_F","O_MRAP_02_F","O_MRAP_02_gmg_F",
												"O_MRAP_02_hmg_F","O_LSV_02_armed_F","O_LSV_02_unarmed_F","O_Truck_03_ammo_F",
												"O_Truck_03_device_F","O_Truck_03_fuel_F","O_Truck_03_medical_F","O_Truck_03_repair_F",
												"O_Truck_03_transport_F","O_Truck_03_covered_F","CUP_O_UAZ_Unarmed_CSAT","CUP_O_UAZ_AGS30_CSAT",
												"CUP_O_UAZ_MG_CSAT","CUP_O_UAZ_METIS_CSAT","CUP_O_UAZ_Militia_CSAT","CUP_O_UAZ_Open_CSAT",
												"CUP_O_UAZ_SPG9_CSAT"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 2: // ATGM
							{
								for "_i" from 1 to 10 do
								{
									_group = createGroup east;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["O_APC_Tracked_02_cannon_F","CUP_O_BMP1_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP2_CSAT",
												"CUP_O_BMP_HQ_CSAT","CUP_O_BMP2_AMB_CSAT","CUP_O_BMP2_ZU_CSAT","CUP_O_BRDM2_CSAT",
												"CUP_O_BRDM2_ATGM_CSAT","CUP_O_BRDM2_HQ_CSAT","CUP_O_BTR60_CSAT","O_APC_Wheeled_02_rcws_F",
												"O_MBT_02_arty_F","CUP_O_T55_CSAT","CUP_O_T72_CSAT","O_MBT_02_cannon_F"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 3: // Bombs
							{
								for "_i" from 1 to 10 do
								{
									_group = createGroup west;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["Land_BagBunker_Large_F","Land_Cargo_House_V1_F","Land_Cargo_HQ_V1_F",
												"Land_Cargo_Patrol_V1_F","Land_Cargo_Tower_V1_F"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 4: // SEAD
							{
								for "_i" from 1 to 5 do
								{
									_group = createGroup east;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["CUP_O_ZSU23_ChDKZ","CUP_O_ZU23_ChDKZ","O_APC_Tracked_02_AA_F","CUP_O_2S6_RU",
												"CUP_O_2S6M_RU"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 5: // Mortar Range @ OP Dragon
							{
								null = [[monitor6],["spotter_21","spotter_22","spotter_23","spotter_24","spotter_25"]] execVM "LFC\feedInit.sqf";
								_mortars = ["mortarSpawn","mortarSpawn_1","mortarSpawn_2","mortarSpawn_3","mortarSpawn_4"];
								{
									_pos = getMarkerPos _x;
									_heli = createVehicle ["I_Mortar_01_F", _pos, [], 0, "CAN_COLLIDE"];
									GW_TrainingGround_spawnedAssets pushBack _heli;
								} foreach _mortars;
								for "_i" from 1 to 5 do
								{
									_group = createGroup east;
									_loc = selectRandom _morTgts;
									_locArray = [_loc];
									_morTgts = _morTgts - _locArray;
									_unitType = ["O_APC_Tracked_02_cannon_F","CUP_O_BMP1_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP2_CSAT",
												"CUP_O_BMP_HQ_CSAT","CUP_O_BMP2_AMB_CSAT","CUP_O_BMP2_ZU_CSAT","CUP_O_BRDM2_CSAT",
												"CUP_O_BRDM2_ATGM_CSAT","CUP_O_BRDM2_HQ_CSAT","CUP_O_BTR60_CSAT","O_APC_Wheeled_02_rcws_F",
												"O_MBT_02_arty_F","CUP_O_T55_CSAT","CUP_O_T72_CSAT","O_MBT_02_cannon_F"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									_markerstr = createMarker [_loc + "1", getMarkerPos _loc];
									_markerstr setMarkerShape "ICON";
									_markerstr setMarkerType "hd_destroy";
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Range/Exercise Switch";
							};
						};
					};
					case "ACM":
					{
						switch (_exerciseID) do
						{
							case 1: 
							{
								_group = createGroup east;
								_unitTypePool = ["O_Plane_CAS_02_F","CUP_O_L39_CAP_TK"];
								_unit = selectRandom _unitTypePool;
								[getMarkerPos "ACM",0,_unit,_group] call BIS_fnc_spawnVehicle;
								{
									GW_TrainingGround_spawnedOPFOR pushBack _x;
								} foreach units _group;
								_group addWaypoint [getMarkerPos "ravenSolo", 0];
							};
						};
					};
					case "EP":
					{
						switch (_exerciseID) do
						{
							case 1: // Solo Practice
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["B_Heli_Transport_01_F", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird] execFSM "Modules\TrainingGround\FSM\EPFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Raven/Exercise Switch";
							};
						};
					};
					case "Vehicle":
					{
						switch (_exerciseID) do
						{
							case 1: // Driving Course
							{
								removeAllActions Laptop_4;
								
								Laptop_4 addAction ["<t color='#FFFF00'>BACK</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["BAFD",0],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Bulldog</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["BAFD",1],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Warrior</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["BAFD",2],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Coyote</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["BAFD",3],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Jackal</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["BAFD",4],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Land Rover</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["BAFD",5],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Mastiff</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["BAFD",6],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Ridgeback</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["BAFD",7],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Wolfhound</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["BAFD",8],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Challenger 2</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["BAFD",9],1,false,false,"",""];
							};
							case 2: // Range
							{
								removeAllActions Laptop_4;
								
								Laptop_4 addAction ["<t color='#FFFF00'>BACK</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["BAFD",0],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Bulldog</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["BAFD",1],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Warrior</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["BAFD",2],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Coyote HMG</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["BAFD",3],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Coyote GMG</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["BAFD",4],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Jackal HMG</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["BAFD",5],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Jackal GMG</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["BAFD",6],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Land Rover WMIK HMG</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["BAFD",7],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Land Rover WMIK GMG</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["BAFD",8],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Mastiff HMG</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["BAFD",9],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Mastiff GMG</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["BAFD",10],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Ridgeback HMG</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["BAFD",11],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Ridgeback GMG</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["BAFD",12],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Wolfhound HMG</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["BAFD",13],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Wolfhound GMG</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["BAFD",14],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Challenger 2</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["BAFD",15],1,false,false,"",""];
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Vehicle/Exercise Switch";
							};
						};
					};
					case "FOB":
					{
						switch (_exerciseID) do
						{
							case 1: // Cluster
							{
								removeAllActions Laptop_6;
								
								// spawn relevant objects to construct the ranges/assault course -> check nekos code for important stuff like target naming etc
								["CUP_B_Mastiff_LMG_GB_D","CUP_B_LR_Special_M2_GB_D","CUP_B_LR_Special_M2_GB_D","CUP_B_LR_Ambulance_GB_D","CUP_B_Ridgback_LMG_GB_D","CUP_B_Ridgback_LMG_GB_D","CUP_B_Ridgback_LMG_GB_D",
								"CUP_B_MCV80_GB_D_SLAT","CUP_B_Mastiff_LMG_GB_D","JAS_CUP_B_AW159_Unarmed_GB","JAS_CUP_B_CH47F_GB","JAS_CUP_B_AW159_Unarmed_GB","CUP_B_Wolfhound_LMG_GB_D","CUP_B_Wolfhound_LMG_GB_D"] call GW_TrainingGround_fnc_fobcluster;
								
								// spawn relevant supplies -> initialise spawned boxes as supply crates which should in turn call the relevant framework handler
								_markers = ["986300","986303","981303","984312","981304"];
								{
									_pos = getMarkerPos _x;
									_box = createVehicle ["Box_NATO_Ammo_F", _pos, [], 0, "CAN_COLLIDE"];
									[_box, ["big_box","west"]] call GW_Gear_Fnc_Init;
								}foreach _markers;
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Vehicle/Exercise Switch";
							};
						};
					};
					default
					{
						hint "CODE FAIL. spawnAircraft.sqf Main/BLUFOR/Callsign Switch";
					};
				};
			};
			/*case "BAF-W":
			{
				switch (_callsign) do
				{
					case "Raven":
					{
						switch (_exerciseID) do
						{
							case 1:
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["JAS_CUP_B_AW159_Unarmed_AAC", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							case 2: // Raven Normal Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking","parking_1","parking_2","parking_3","parking_4","parking_5","parking_6","parking_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_B_AW159_Unarmed_AAC", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"normal",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 3: // Raven Urban Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking","parking_1","parking_2","parking_3","parking_4","parking_5","parking_6","parking_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_B_AW159_Unarmed_AAC", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"urban",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 4: // Raven Special Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking","parking_1","parking_2","parking_3","parking_4","parking_5","parking_6","parking_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_B_AW159_Unarmed_AAC", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"special",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 5: // Raven Assault Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking","parking_1","parking_2","parking_3","parking_4","parking_5","parking_6","parking_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_B_AW159_Unarmed_AAC", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"assault",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/BLUFOR/Callsign/Exercise Switch";
							};
						};
					};
					case "Giant":
					{
						switch (_exerciseID) do
						{
							case 1: // Solo Practice
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["JAS_CUP_B_Merlin_HC3_GB_Armed", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Giant"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							case 2: // Giant Insertion Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_B_Merlin_HC3_GB_Armed", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"Giant",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 3: // Giant Sling Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								_crateSlots = ["sling","sling_1","sling_2","sling_3","sling_4","sling_5","sling_6","sling_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["CargoNet_01_barrels_F", _position, [], 0, "CAN_COLLIDE"];
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _crateSlots;
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_B_Merlin_HC3_GB_Armed", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"urban",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Giant/Exercise Switch";
							};
						};
					};
					case "Condor":
					{
						switch (_exerciseID) do
						{
							case 1: // Solo Practice
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["CUP_B_MV22_USMC_RAMPGUN", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Condor"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							case 2: // Condor HLS Ops
							{
								_group = group _caller;
								_parkingSlots = ["VTOLPark","VTOLPark_1","VTOLPark_2","VTOLPark_3","VTOLPark_4","VTOLPark_5","VTOLPark_6","VTOLPark_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["CUP_B_MV22_USMC_RAMPGUN", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"CondorHLS",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 3: // Giant Sling Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								_crateSlots = ["sling","sling_1","sling_2","sling_3","sling_4","sling_5","sling_6","sling_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["CargoNet_01_barrels_F", _position, [], 0, "CAN_COLLIDE"];
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _crateSlots;
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["O_Heli_Transport_04_F", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"urban",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Giant/Exercise Switch";
							};
						};
					};
					case "Range":
					{
						switch (_exerciseID) do
						{
							case 1: // Rocket/Gunnery
							{
								for "_i" from 1 to 10 do
								{
									_group = createGroup east;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["O_Truck_02_Ammo_F","O_Truck_02_fuel_F","O_Truck_02_medical_F","O_Truck_02_box_F",
												"O_Truck_02_transport_F","O_Truck_02_covered_F","O_MRAP_02_F","O_MRAP_02_gmg_F",
												"O_MRAP_02_hmg_F","O_LSV_02_armed_F","O_LSV_02_unarmed_F","O_Truck_03_ammo_F",
												"O_Truck_03_device_F","O_Truck_03_fuel_F","O_Truck_03_medical_F","O_Truck_03_repair_F",
												"O_Truck_03_transport_F","O_Truck_03_covered_F","CUP_O_UAZ_Unarmed_CSAT","CUP_O_UAZ_AGS30_CSAT",
												"CUP_O_UAZ_MG_CSAT","CUP_O_UAZ_METIS_CSAT","CUP_O_UAZ_Militia_CSAT","CUP_O_UAZ_Open_CSAT",
												"CUP_O_UAZ_SPG9_CSAT"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 2: // ATGM
							{
								for "_i" from 1 to 10 do
								{
									_group = createGroup east;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["O_APC_Tracked_02_cannon_F","CUP_O_BMP1_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP2_CSAT",
												"CUP_O_BMP_HQ_CSAT","CUP_O_BMP2_AMB_CSAT","CUP_O_BMP2_ZU_CSAT","CUP_O_BRDM2_CSAT",
												"CUP_O_BRDM2_ATGM_CSAT","CUP_O_BRDM2_HQ_CSAT","CUP_O_BTR60_CSAT","O_APC_Wheeled_02_rcws_F",
												"O_MBT_02_arty_F","CUP_O_T55_CSAT","CUP_O_T72_CSAT","O_MBT_02_cannon_F"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 3: // Bombs
							{
								for "_i" from 1 to 10 do
								{
									_group = createGroup west;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["Land_BagBunker_Large_F","Land_Cargo_House_V1_F","Land_Cargo_HQ_V1_F",
												"Land_Cargo_Patrol_V1_F","Land_Cargo_Tower_V1_F"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 4: // SEAD
							{
								for "_i" from 1 to 5 do
								{
									_group = createGroup east;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["CUP_O_ZSU23_ChDKZ","CUP_O_ZU23_ChDKZ","O_APC_Tracked_02_AA_F","CUP_O_2S6_RU",
												"CUP_O_2S6M_RU"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Range/Exercise Switch";
							};
						};
					};
					case "ACM":
					{
						switch (_exerciseID) do
						{
							case 1: 
							{
								_group = createGroup east;
								_unitTypePool = ["O_Plane_CAS_02_F","CUP_O_L39_CAP_TK"];
								_unit = selectRandom _unitTypePool;
								[getMarkerPos "ACM",0,_unit,_group] call BIS_fnc_spawnVehicle;
								{
									GW_TrainingGround_spawnedOPFOR pushBack _x;
								} foreach units _group;
								_group addWaypoint [getMarkerPos "ravenSolo", 0];
							};
						};
					};
					case "EP":
					{
						switch (_exerciseID) do
						{
							case 1: // Solo Practice
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["B_Heli_Transport_01_F", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird] execFSM "Modules\TrainingGround\FSM\EPFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Raven/Exercise Switch";
							};
						};
					};
					case "Vehicle":
					{
						switch (_exerciseID) do
						{
							case 1: // Driving Course
							{
								removeAllActions Laptop_4;
								
								Laptop_4 addAction ["<t color='#FFFF00'>BACK</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["BAFW",0],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Bulldog</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["BAFW",1],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Warrior</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["BAFW",2],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Coyote</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["BAFW",3],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Jackal</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["BAFW",4],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Land Rover</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["BAFW",5],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Mastiff</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["BAFW",6],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Ridgeback</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["BAFW",7],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Wolfhound</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["BAFW",8],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Challenger 2</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["BAFW",9],1,false,false,"",""];
							};
							case 2: // Range
							{
								removeAllActions Laptop_4;
								
								Laptop_4 addAction ["<t color='#FFFF00'>BACK</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["BAFW",0],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>BM-2T Stalker</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["BAFW",1],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Otokar ARMA</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["BAFW",2],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Punisher HMG</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["BAFW",3],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Punisher GMG</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["BAFW",4],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Qilin</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["BAFW",5],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>T-100</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["BAFW",6],1,false,false,"",""];
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Vehicle/Exercise Switch";
							};
						};
					};
					default
					{
						hint "CODE FAIL. spawnAircraft.sqf Main/BLUFOR/Callsign Switch";
					};
				};
			};*/
			case "USMC-D":
			{
				switch (_callsign) do
				{
					case "Raven":
					{
						switch (_exerciseID) do
						{
							case 1:
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["JAS_CUP_B_MH60S_FFV_AAC", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							case 2: // Raven Normal Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking","parking_1","parking_2","parking_3","parking_4","parking_5","parking_6","parking_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_B_MH60S_FFV_AAC", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"normal",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 3: // Raven Urban Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking","parking_1","parking_2","parking_3","parking_4","parking_5","parking_6","parking_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_B_MH60S_FFV_AAC", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"urban",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 4: // Raven Special Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking","parking_1","parking_2","parking_3","parking_4","parking_5","parking_6","parking_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_B_MH60S_FFV_AAC", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"special",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 5: // Raven Assault Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking","parking_1","parking_2","parking_3","parking_4","parking_5","parking_6","parking_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_B_MH60S_FFV_AAC", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"assault",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/BLUFOR/Callsign/Exercise Switch";
							};
						};
					};
					case "Giant":
					{
						switch (_exerciseID) do
						{
							case 1: // Solo Practice
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["JAS_CUP_B_CH53E_USMC", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Giant"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							case 2: // Giant Insertion Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_B_CH53E_USMC", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"Giant",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 3: // Giant Sling Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								_crateSlots = ["sling","sling_1","sling_2","sling_3","sling_4","sling_5","sling_6","sling_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["CargoNet_01_barrels_F", _position, [], 0, "CAN_COLLIDE"];
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _crateSlots;
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_B_CH53E_USMC", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"urban",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Giant/Exercise Switch";
							};
						};
					};
					case "Condor":
					{
						switch (_exerciseID) do
						{
							case 1: // Solo Practice
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["CUP_B_MV22_USMC_RAMPGUN", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Condor"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							case 2: // Condor HLS Ops
							{
								_group = group _caller;
								_parkingSlots = ["VTOLPark","VTOLPark_1","VTOLPark_2","VTOLPark_3","VTOLPark_4","VTOLPark_5","VTOLPark_6","VTOLPark_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["CUP_B_MV22_USMC_RAMPGUN", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"CondorHLS",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 3: // Giant Sling Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								_crateSlots = ["sling","sling_1","sling_2","sling_3","sling_4","sling_5","sling_6","sling_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["CargoNet_01_barrels_F", _position, [], 0, "CAN_COLLIDE"];
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _crateSlots;
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["O_Heli_Transport_04_F", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"urban",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Giant/Exercise Switch";
							};
						};
					};
					case "Range":
					{
						switch (_exerciseID) do
						{
							case 1: // Rocket/Gunnery
							{
								for "_i" from 1 to 10 do
								{
									_group = createGroup east;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["O_Truck_02_Ammo_F","O_Truck_02_fuel_F","O_Truck_02_medical_F","O_Truck_02_box_F",
												"O_Truck_02_transport_F","O_Truck_02_covered_F","O_MRAP_02_F","O_MRAP_02_gmg_F",
												"O_MRAP_02_hmg_F","O_LSV_02_armed_F","O_LSV_02_unarmed_F","O_Truck_03_ammo_F",
												"O_Truck_03_device_F","O_Truck_03_fuel_F","O_Truck_03_medical_F","O_Truck_03_repair_F",
												"O_Truck_03_transport_F","O_Truck_03_covered_F","CUP_O_UAZ_Unarmed_CSAT","CUP_O_UAZ_AGS30_CSAT",
												"CUP_O_UAZ_MG_CSAT","CUP_O_UAZ_METIS_CSAT","CUP_O_UAZ_Militia_CSAT","CUP_O_UAZ_Open_CSAT",
												"CUP_O_UAZ_SPG9_CSAT"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 2: // ATGM
							{
								for "_i" from 1 to 10 do
								{
									_group = createGroup east;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["O_APC_Tracked_02_cannon_F","CUP_O_BMP1_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP2_CSAT",
												"CUP_O_BMP_HQ_CSAT","CUP_O_BMP2_AMB_CSAT","CUP_O_BMP2_ZU_CSAT","CUP_O_BRDM2_CSAT",
												"CUP_O_BRDM2_ATGM_CSAT","CUP_O_BRDM2_HQ_CSAT","CUP_O_BTR60_CSAT","O_APC_Wheeled_02_rcws_F",
												"O_MBT_02_arty_F","CUP_O_T55_CSAT","CUP_O_T72_CSAT","O_MBT_02_cannon_F"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 3: // Bombs
							{
								for "_i" from 1 to 10 do
								{
									_group = createGroup west;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["Land_BagBunker_Large_F","Land_Cargo_House_V1_F","Land_Cargo_HQ_V1_F",
												"Land_Cargo_Patrol_V1_F","Land_Cargo_Tower_V1_F"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 4: // SEAD
							{
								for "_i" from 1 to 5 do
								{
									_group = createGroup east;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["CUP_O_ZSU23_ChDKZ","CUP_O_ZU23_ChDKZ","O_APC_Tracked_02_AA_F","CUP_O_2S6_RU",
												"CUP_O_2S6M_RU"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 5: // Mortar Range @ OP Dragon
							{
								null = [[monitor6],["spotter_21","spotter_22","spotter_23","spotter_24","spotter_25"]] execVM "LFC\feedInit.sqf";
								_mortars = ["mortarSpawn","mortarSpawn_1","mortarSpawn_2","mortarSpawn_3","mortarSpawn_4"];
								{
									_pos = getMarkerPos _x;
									_heli = createVehicle ["I_Mortar_01_F", _pos, [], 0, "CAN_COLLIDE"];
									GW_TrainingGround_spawnedAssets pushBack _heli;
								} foreach _mortars;
								for "_i" from 1 to 5 do
								{
									_group = createGroup east;
									_loc = selectRandom _morTgts;
									_locArray = [_loc];
									_morTgts = _morTgts - _locArray;
									_unitType = ["O_APC_Tracked_02_cannon_F","CUP_O_BMP1_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP2_CSAT",
												"CUP_O_BMP_HQ_CSAT","CUP_O_BMP2_AMB_CSAT","CUP_O_BMP2_ZU_CSAT","CUP_O_BRDM2_CSAT",
												"CUP_O_BRDM2_ATGM_CSAT","CUP_O_BRDM2_HQ_CSAT","CUP_O_BTR60_CSAT","O_APC_Wheeled_02_rcws_F",
												"O_MBT_02_arty_F","CUP_O_T55_CSAT","CUP_O_T72_CSAT","O_MBT_02_cannon_F"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									_markerstr = createMarker [_loc + "1", getMarkerPos _loc];
									_markerstr setMarkerShape "ICON";
									_markerstr setMarkerType "hd_destroy";
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Range/Exercise Switch";
							};
						};
					};
					case "ACM":
					{
						switch (_exerciseID) do
						{
							case 1: 
							{
								_group = createGroup east;
								_unitTypePool = ["O_Plane_CAS_02_F","CUP_O_L39_CAP_TK"];
								_unit = selectRandom _unitTypePool;
								[getMarkerPos "ACM",0,_unit,_group] call BIS_fnc_spawnVehicle;
								{
									GW_TrainingGround_spawnedOPFOR pushBack _x;
								} foreach units _group;
								_group addWaypoint [getMarkerPos "ravenSolo", 0];
							};
						};
					};
					case "EP":
					{
						switch (_exerciseID) do
						{
							case 1: // Solo Practice
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["B_Heli_Transport_01_F", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird] execFSM "Modules\TrainingGround\FSM\EPFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Raven/Exercise Switch";
							};
						};
					};
					case "Vehicle":
					{
						switch (_exerciseID) do
						{
							case 1: // Driving Course
							{
								removeAllActions Laptop_4;
								
								Laptop_4 addAction ["<t color='#FFFF00'>BACK</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["USMCD",0],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>AAVP7</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["USMCD",1],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>LAV-25</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["USMCD",2],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>M1030</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["USMCD",3],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>HMMWV</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["USMCD",4],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>MTVR</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["USMCD",5],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>RG31</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["USMCD",6],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Abrams</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["USMCD",7],1,false,false,"",""];
							};
							case 2: // Range
							{
								removeAllActions Laptop_4;
								
								Laptop_4 addAction ["<t color='#FFFF00'>BACK</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["USMCD",0],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>AAVP7</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["USMCD",1],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>LAV-25</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["USMCD",2],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>HMMWV</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["USMCD",3],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>RG31</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["USMCD",4],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Abrams</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["USMCD",5],1,false,false,"",""];
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Vehicle/Exercise Switch";
							};
						};
					};
					case "FOB":
					{
						switch (_exerciseID) do
						{
							case 1: // Cluster
							{
								removeAllActions Laptop_6;
								
								// spawn relevant objects to construct the ranges/assault course -> check nekos code for important stuff like target naming etc
								["CUP_B_MTVR_USMC","CUP_B_HMMWV_M1114_USMC","CUP_B_HMMWV_M1114_USMC","CUP_B_HMMWV_Ambulance_USMC","CUP_B_RG31_M2_OD_USMC","CUP_B_RG31_M2_OD_USMC","CUP_B_RG31_M2_OD_USMC","CUP_B_LAV25_HQ_USMC",
								"CUP_B_MTVR_USMC","CUP_B_UH60S_USN","JAS_CUP_B_CH53E_USMC","CUP_B_UH60S_USN","CUP_B_MTVR_Repair_USMC","CUP_B_MTVR_Refuel_USMC"] call GW_TrainingGround_fnc_fobcluster;
								
								// spawn relevant supplies -> initialise spawned boxes as supply crates which should in turn call the relevant framework handler
								_markers = ["986300","986303","981303","984312","981304"];
								{
									_pos = getMarkerPos _x;
									_box = createVehicle ["Box_NATO_Ammo_F", _pos, [], 0, "CAN_COLLIDE"];
									[_box, ["big_box","west"]] call GW_Gear_Fnc_Init;
								}foreach _markers;
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Vehicle/Exercise Switch";
							};
						};
					};
					default
					{
						hint "CODE FAIL. spawnAircraft.sqf Main/BLUFOR/Callsign Switch";
					};
				};
			};
			case "USMC-W":
			{
				switch (_callsign) do
				{
					case "Raven":
					{
						switch (_exerciseID) do
						{
							case 1:
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["JAS_CUP_B_MH60S_FFV_AAC", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							case 2: // Raven Normal Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking","parking_1","parking_2","parking_3","parking_4","parking_5","parking_6","parking_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_B_MH60S_FFV_AAC", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"normal",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 3: // Raven Urban Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking","parking_1","parking_2","parking_3","parking_4","parking_5","parking_6","parking_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_B_MH60S_FFV_AAC", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"urban",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 4: // Raven Special Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking","parking_1","parking_2","parking_3","parking_4","parking_5","parking_6","parking_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_B_MH60S_FFV_AAC", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"special",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 5: // Raven Assault Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking","parking_1","parking_2","parking_3","parking_4","parking_5","parking_6","parking_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_B_MH60S_FFV_AAC", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"assault",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/BLUFOR/Callsign/Exercise Switch";
							};
						};
					};
					case "Giant":
					{
						switch (_exerciseID) do
						{
							case 1: // Solo Practice
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["JAS_CUP_B_CH53E_USMC", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Giant"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							case 2: // Giant Insertion Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_B_CH53E_USMC", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"Giant",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 3: // Giant Sling Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								_crateSlots = ["sling","sling_1","sling_2","sling_3","sling_4","sling_5","sling_6","sling_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["CargoNet_01_barrels_F", _position, [], 0, "CAN_COLLIDE"];
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _crateSlots;
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_B_CH53E_USMC", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"urban",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Giant/Exercise Switch";
							};
						};
					};
					case "Condor":
					{
						switch (_exerciseID) do
						{
							case 1: // Solo Practice
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["CUP_B_MV22_USMC_RAMPGUN", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Condor"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							case 2: // Condor HLS Ops
							{
								_group = group _caller;
								_parkingSlots = ["VTOLPark","VTOLPark_1","VTOLPark_2","VTOLPark_3","VTOLPark_4","VTOLPark_5","VTOLPark_6","VTOLPark_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["CUP_B_MV22_USMC_RAMPGUN", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"CondorHLS",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 3: // Giant Sling Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								_crateSlots = ["sling","sling_1","sling_2","sling_3","sling_4","sling_5","sling_6","sling_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["CargoNet_01_barrels_F", _position, [], 0, "CAN_COLLIDE"];
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _crateSlots;
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["O_Heli_Transport_04_F", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"urban",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Giant/Exercise Switch";
							};
						};
					};
					case "Range":
					{
						switch (_exerciseID) do
						{
							case 1: // Rocket/Gunnery
							{
								for "_i" from 1 to 10 do
								{
									_group = createGroup east;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["O_Truck_02_Ammo_F","O_Truck_02_fuel_F","O_Truck_02_medical_F","O_Truck_02_box_F",
												"O_Truck_02_transport_F","O_Truck_02_covered_F","O_MRAP_02_F","O_MRAP_02_gmg_F",
												"O_MRAP_02_hmg_F","O_LSV_02_armed_F","O_LSV_02_unarmed_F","O_Truck_03_ammo_F",
												"O_Truck_03_device_F","O_Truck_03_fuel_F","O_Truck_03_medical_F","O_Truck_03_repair_F",
												"O_Truck_03_transport_F","O_Truck_03_covered_F","CUP_O_UAZ_Unarmed_CSAT","CUP_O_UAZ_AGS30_CSAT",
												"CUP_O_UAZ_MG_CSAT","CUP_O_UAZ_METIS_CSAT","CUP_O_UAZ_Militia_CSAT","CUP_O_UAZ_Open_CSAT",
												"CUP_O_UAZ_SPG9_CSAT"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 2: // ATGM
							{
								for "_i" from 1 to 10 do
								{
									_group = createGroup east;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["O_APC_Tracked_02_cannon_F","CUP_O_BMP1_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP2_CSAT",
												"CUP_O_BMP_HQ_CSAT","CUP_O_BMP2_AMB_CSAT","CUP_O_BMP2_ZU_CSAT","CUP_O_BRDM2_CSAT",
												"CUP_O_BRDM2_ATGM_CSAT","CUP_O_BRDM2_HQ_CSAT","CUP_O_BTR60_CSAT","O_APC_Wheeled_02_rcws_F",
												"O_MBT_02_arty_F","CUP_O_T55_CSAT","CUP_O_T72_CSAT","O_MBT_02_cannon_F"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 3: // Bombs
							{
								for "_i" from 1 to 10 do
								{
									_group = createGroup west;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["Land_BagBunker_Large_F","Land_Cargo_House_V1_F","Land_Cargo_HQ_V1_F",
												"Land_Cargo_Patrol_V1_F","Land_Cargo_Tower_V1_F"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 4: // SEAD
							{
								for "_i" from 1 to 5 do
								{
									_group = createGroup east;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["CUP_O_ZSU23_ChDKZ","CUP_O_ZU23_ChDKZ","O_APC_Tracked_02_AA_F","CUP_O_2S6_RU",
												"CUP_O_2S6M_RU"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 5: // Mortar Range @ OP Dragon
							{
								null = [[monitor6],["spotter_21","spotter_22","spotter_23","spotter_24","spotter_25"]] execVM "LFC\feedInit.sqf";
								_mortars = ["mortarSpawn","mortarSpawn_1","mortarSpawn_2","mortarSpawn_3","mortarSpawn_4"];
								{
									_pos = getMarkerPos _x;
									_heli = createVehicle ["I_Mortar_01_F", _pos, [], 0, "CAN_COLLIDE"];
									GW_TrainingGround_spawnedAssets pushBack _heli;
								} foreach _mortars;
								for "_i" from 1 to 5 do
								{
									_group = createGroup east;
									_loc = selectRandom _morTgts;
									_locArray = [_loc];
									_morTgts = _morTgts - _locArray;
									_unitType = ["O_APC_Tracked_02_cannon_F","CUP_O_BMP1_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP2_CSAT",
												"CUP_O_BMP_HQ_CSAT","CUP_O_BMP2_AMB_CSAT","CUP_O_BMP2_ZU_CSAT","CUP_O_BRDM2_CSAT",
												"CUP_O_BRDM2_ATGM_CSAT","CUP_O_BRDM2_HQ_CSAT","CUP_O_BTR60_CSAT","O_APC_Wheeled_02_rcws_F",
												"O_MBT_02_arty_F","CUP_O_T55_CSAT","CUP_O_T72_CSAT","O_MBT_02_cannon_F"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									_markerstr = createMarker [_loc + "1", getMarkerPos _loc];
									_markerstr setMarkerShape "ICON";
									_markerstr setMarkerType "hd_destroy";
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Range/Exercise Switch";
							};
						};
					};
					case "ACM":
					{
						switch (_exerciseID) do
						{
							case 1: 
							{
								_group = createGroup east;
								_unitTypePool = ["O_Plane_CAS_02_F","CUP_O_L39_CAP_TK"];
								_unit = selectRandom _unitTypePool;
								[getMarkerPos "ACM",0,_unit,_group] call BIS_fnc_spawnVehicle;
								{
									GW_TrainingGround_spawnedOPFOR pushBack _x;
								} foreach units _group;
								_group addWaypoint [getMarkerPos "ravenSolo", 0];
							};
						};
					};
					case "EP":
					{
						switch (_exerciseID) do
						{
							case 1: // Solo Practice
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["B_Heli_Transport_01_F", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird] execFSM "Modules\TrainingGround\FSM\EPFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Raven/Exercise Switch";
							};
						};
					};
					case "Vehicle":
					{
						switch (_exerciseID) do
						{
							case 1: // Driving Course
							{
								removeAllActions Laptop_4;
								
								Laptop_4 addAction ["<t color='#FFFF00'>BACK</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["USMCW",0],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>AAVP7</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["USMCW",1],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>LAV-25</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["USMCW",2],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>M1030</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["USMCW",3],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>HMMWV</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["USMCW",4],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>MTVR</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["USMCW",5],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>RG31</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["USMCW",6],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Abrams</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["USMCW",7],1,false,false,"",""];
							};
							case 2: // Range
							{	
								removeAllActions Laptop_4;
								
								Laptop_4 addAction ["<t color='#FFFF00'>BACK</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["USMCW",0],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>AAVP7</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["USMCW",1],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>LAV-25</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["USMCW",2],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>HMMWV</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["USMCW",3],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>RG31</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["USMCW",4],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Abrams</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["USMCW",5],1,false,false,"",""];
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Vehicle/Exercise Switch";
							};
						};
					};
					case "FOB":
					{
						switch (_exerciseID) do
						{
							case 1: // Cluster
							{
								removeAllActions Laptop_6;
								
								// spawn relevant objects to construct the ranges/assault course -> check nekos code for important stuff like target naming etc
								["CUP_B_MTVR_USMC","CUP_B_HMMWV_M1114_USMC","CUP_B_HMMWV_M1114_USMC","CUP_B_HMMWV_Ambulance_USMC","CUP_B_RG31_M2_OD_USMC","CUP_B_RG31_M2_OD_USMC","CUP_B_RG31_M2_OD_USMC","CUP_B_LAV25_HQ_USMC",
								"CUP_B_MTVR_USMC","CUP_B_UH60S_USN","JAS_CUP_B_CH53E_USMC","CUP_B_UH60S_USN","CUP_B_MTVR_Repair_USMC","CUP_B_MTVR_Refuel_USMC"] call GW_TrainingGround_fnc_fobcluster;
								
								// spawn relevant supplies -> initialise spawned boxes as supply crates which should in turn call the relevant framework handler
								_markers = ["986300","986303","981303","984312","981304"];
								{
									_pos = getMarkerPos _x;
									_box = createVehicle ["Box_NATO_Ammo_F", _pos, [], 0, "CAN_COLLIDE"];
									[_box, ["big_box","west"]] call GW_Gear_Fnc_Init;
								}foreach _markers;
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Vehicle/Exercise Switch";
							};
						};
					};
					default
					{
						hint "CODE FAIL. spawnAircraft.sqf Main/BLUFOR/Callsign Switch";
					};
				};
			};
			case "INSURGENT-D":
			{
				switch (_callsign) do
				{
					case "Raven":
					{
						switch (_exerciseID) do
						{
							case 1:
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["JAS_CUP_B_Mi17_AAC", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							case 2: // Raven Normal Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_B_Mi17_AAC", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"normal",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 3: // Raven Urban Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_B_Mi17_AAC", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"urban",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 4: // Raven Special Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_B_Mi17_AAC", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"special",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 5: // Raven Assault Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_B_Mi17_AAC", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"assault",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/BLUFOR/Callsign/Exercise Switch";
							};
						};
					};
					case "Giant":
					{
						switch (_exerciseID) do
						{
							case 1: // Solo Practice
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["JAS_CUP_B_Mi17_AAC", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Giant"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							case 2: // Giant Insertion Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_B_Mi17_AAC", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"Giant",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 3: // Giant Sling Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								_crateSlots = ["sling","sling_1","sling_2","sling_3","sling_4","sling_5","sling_6","sling_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["CargoNet_01_barrels_F", _position, [], 0, "CAN_COLLIDE"];
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _crateSlots;
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_B_Mi17_AAC", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"urban",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Giant/Exercise Switch";
							};
						};
					};
					case "Condor":
					{
						switch (_exerciseID) do
						{
							case 1: // Solo Practice
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["CUP_B_MV22_USMC_RAMPGUN", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Condor"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							case 2: // Condor HLS Ops
							{
								_group = group _caller;
								_parkingSlots = ["VTOLPark","VTOLPark_1","VTOLPark_2","VTOLPark_3","VTOLPark_4","VTOLPark_5","VTOLPark_6","VTOLPark_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["CUP_B_MV22_USMC_RAMPGUN", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"CondorHLS",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 3: // Giant Sling Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								_crateSlots = ["sling","sling_1","sling_2","sling_3","sling_4","sling_5","sling_6","sling_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["CargoNet_01_barrels_F", _position, [], 0, "CAN_COLLIDE"];
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _crateSlots;
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["O_Heli_Transport_04_F", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"urban",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Giant/Exercise Switch";
							};
						};
					};
					case "Range":
					{
						switch (_exerciseID) do
						{
							case 1: // Rocket/Gunnery
							{
								for "_i" from 1 to 10 do
								{
									_group = createGroup east;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["O_Truck_02_Ammo_F","O_Truck_02_fuel_F","O_Truck_02_medical_F","O_Truck_02_box_F",
												"O_Truck_02_transport_F","O_Truck_02_covered_F","O_MRAP_02_F","O_MRAP_02_gmg_F",
												"O_MRAP_02_hmg_F","O_LSV_02_armed_F","O_LSV_02_unarmed_F","O_Truck_03_ammo_F",
												"O_Truck_03_device_F","O_Truck_03_fuel_F","O_Truck_03_medical_F","O_Truck_03_repair_F",
												"O_Truck_03_transport_F","O_Truck_03_covered_F","CUP_O_UAZ_Unarmed_CSAT","CUP_O_UAZ_AGS30_CSAT",
												"CUP_O_UAZ_MG_CSAT","CUP_O_UAZ_METIS_CSAT","CUP_O_UAZ_Militia_CSAT","CUP_O_UAZ_Open_CSAT",
												"CUP_O_UAZ_SPG9_CSAT"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 2: // ATGM
							{
								for "_i" from 1 to 10 do
								{
									_group = createGroup east;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["O_APC_Tracked_02_cannon_F","CUP_O_BMP1_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP2_CSAT",
												"CUP_O_BMP_HQ_CSAT","CUP_O_BMP2_AMB_CSAT","CUP_O_BMP2_ZU_CSAT","CUP_O_BRDM2_CSAT",
												"CUP_O_BRDM2_ATGM_CSAT","CUP_O_BRDM2_HQ_CSAT","CUP_O_BTR60_CSAT","O_APC_Wheeled_02_rcws_F",
												"O_MBT_02_arty_F","CUP_O_T55_CSAT","CUP_O_T72_CSAT","O_MBT_02_cannon_F"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 3: // Bombs
							{
								for "_i" from 1 to 10 do
								{
									_group = createGroup west;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["Land_BagBunker_Large_F","Land_Cargo_House_V1_F","Land_Cargo_HQ_V1_F",
												"Land_Cargo_Patrol_V1_F","Land_Cargo_Tower_V1_F"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 4: // SEAD
							{
								for "_i" from 1 to 5 do
								{
									_group = createGroup east;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["CUP_O_ZSU23_ChDKZ","CUP_O_ZU23_ChDKZ","O_APC_Tracked_02_AA_F","CUP_O_2S6_RU",
												"CUP_O_2S6M_RU"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 5: // Mortar Range @ OP Dragon
							{
								null = [[monitor6],["spotter_21","spotter_22","spotter_23","spotter_24","spotter_25"]] execVM "LFC\feedInit.sqf";
								_mortars = ["mortarSpawn","mortarSpawn_1","mortarSpawn_2","mortarSpawn_3","mortarSpawn_4"];
								{
									_pos = getMarkerPos _x;
									_heli = createVehicle ["I_Mortar_01_F", _pos, [], 0, "CAN_COLLIDE"];
									GW_TrainingGround_spawnedAssets pushBack _heli;
								} foreach _mortars;
								for "_i" from 1 to 5 do
								{
									_group = createGroup east;
									_loc = selectRandom _morTgts;
									_locArray = [_loc];
									_morTgts = _morTgts - _locArray;
									_unitType = ["O_APC_Tracked_02_cannon_F","CUP_O_BMP1_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP2_CSAT",
												"CUP_O_BMP_HQ_CSAT","CUP_O_BMP2_AMB_CSAT","CUP_O_BMP2_ZU_CSAT","CUP_O_BRDM2_CSAT",
												"CUP_O_BRDM2_ATGM_CSAT","CUP_O_BRDM2_HQ_CSAT","CUP_O_BTR60_CSAT","O_APC_Wheeled_02_rcws_F",
												"O_MBT_02_arty_F","CUP_O_T55_CSAT","CUP_O_T72_CSAT","O_MBT_02_cannon_F"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									_markerstr = createMarker [_loc + "1", getMarkerPos _loc];
									_markerstr setMarkerShape "ICON";
									_markerstr setMarkerType "hd_destroy";
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Range/Exercise Switch";
							};
						};
					};
					case "ACM":
					{
						switch (_exerciseID) do
						{
							case 1: 
							{
								_group = createGroup east;
								_unitTypePool = ["O_Plane_CAS_02_F","CUP_O_L39_CAP_TK"];
								_unit = selectRandom _unitTypePool;
								[getMarkerPos "ACM",0,_unit,_group] call BIS_fnc_spawnVehicle;
								{
									GW_TrainingGround_spawnedOPFOR pushBack _x;
								} foreach units _group;
								_group addWaypoint [getMarkerPos "ravenSolo", 0];
							};
						};
					};
					case "EP":
					{
						switch (_exerciseID) do
						{
							case 1: // Solo Practice
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["B_Heli_Transport_01_F", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird] execFSM "Modules\TrainingGround\FSM\EPFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Raven/Exercise Switch";
							};
						};
					};
					case "Vehicle":
					{
						switch (_exerciseID) do
						{
							case 1: // Driving Course
							{
								removeAllActions Laptop_4;
								
								Laptop_4 addAction ["<t color='#FFFF00'>BACK</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["INSW",0],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>AAVP7</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["INSW",1],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>LAV-25</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["INSW",2],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>M1030</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["INSW",3],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>HMMWV</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["INSW",4],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>MTVR</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["INSW",5],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>RG31</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["INSW",6],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Abrams</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["INSW",7],1,false,false,"",""];
							};
							case 2: // Range
							{
								removeAllActions Laptop_4;
								
								Laptop_4 addAction ["<t color='#FFFF00'>BACK</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["INSW",0],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>BM-2T Stalker</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["INSW",1],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Otokar ARMA</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["INSW",2],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Punisher HMG</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["INSW",3],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Punisher GMG</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["INSW",4],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Qilin</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["INSW",5],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>T-100</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["INSW",6],1,false,false,"",""];
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Vehicle/Exercise Switch";
							};
						};
					};
					case "FOB":
					{
						switch (_exerciseID) do
						{
							case 1: // Cluster
							{
								removeAllActions Laptop_6;
								
								// spawn relevant objects to construct the ranges/assault course -> check nekos code for important stuff like target naming etc
								["CUP_B_MTVR_USMC","CUP_B_HMMWV_M1114_USMC","CUP_B_HMMWV_M1114_USMC","CUP_B_HMMWV_Ambulance_USMC","CUP_B_RG31_M2_OD_USMC","CUP_B_RG31_M2_OD_USMC","CUP_B_RG31_M2_OD_USMC","CUP_B_LAV25_HQ_USMC",
								"CUP_B_MTVR_USMC","CUP_B_UH60S_USN","JAS_CUP_B_CH53E_USMC","CUP_B_UH60S_USN","CUP_B_MTVR_Repair_USMC","CUP_B_MTVR_Refuel_USMC"] call GW_TrainingGround_fnc_fobcluster;
								
								// spawn relevant supplies -> initialise spawned boxes as supply crates which should in turn call the relevant framework handler
								_markers = ["986300","986303","981303","984312","981304"];
								{
									_pos = getMarkerPos _x;
									_box = createVehicle ["Box_NATO_Ammo_F", _pos, [], 0, "CAN_COLLIDE"];
									[_box, ["big_box","west"]] call GW_Gear_Fnc_Init;
								}foreach _markers;
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Vehicle/Exercise Switch";
							};
						};
					};
					default
					{
						hint "CODE FAIL. spawnAircraft.sqf Main/BLUFOR/Callsign Switch";
					};
				};
			};
			case "INSURGENT-W":
			{
				switch (_callsign) do
				{
					case "Raven":
					{
						switch (_exerciseID) do
						{
							case 1:
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["JAS_CUP_B_Mi17_AAC", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							case 2: // Raven Normal Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_B_Mi17_AAC", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"normal",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 3: // Raven Urban Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_B_Mi17_AAC", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"urban",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 4: // Raven Special Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_B_Mi17_AAC", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"special",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 5: // Raven Assault Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_B_Mi17_AAC", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"assault",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/BLUFOR/Callsign/Exercise Switch";
							};
						};
					};
					case "Giant":
					{
						switch (_exerciseID) do
						{
							case 1: // Solo Practice
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["JAS_CUP_B_Mi17_AAC", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Giant"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							case 2: // Giant Insertion Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_B_Mi17_AAC", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"Giant",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 3: // Giant Sling Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								_crateSlots = ["sling","sling_1","sling_2","sling_3","sling_4","sling_5","sling_6","sling_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["CargoNet_01_barrels_F", _position, [], 0, "CAN_COLLIDE"];
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _crateSlots;
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_B_Mi17_AAC", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"urban",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Giant/Exercise Switch";
							};
						};
					};
					case "Condor":
					{
						switch (_exerciseID) do
						{
							case 1: // Solo Practice
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["CUP_B_MV22_USMC_RAMPGUN", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Condor"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							case 2: // Condor HLS Ops
							{
								_group = group _caller;
								_parkingSlots = ["VTOLPark","VTOLPark_1","VTOLPark_2","VTOLPark_3","VTOLPark_4","VTOLPark_5","VTOLPark_6","VTOLPark_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["CUP_B_MV22_USMC_RAMPGUN", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"CondorHLS",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 3: // Giant Sling Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								_crateSlots = ["sling","sling_1","sling_2","sling_3","sling_4","sling_5","sling_6","sling_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["CargoNet_01_barrels_F", _position, [], 0, "CAN_COLLIDE"];
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _crateSlots;
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["O_Heli_Transport_04_F", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"urban",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Giant/Exercise Switch";
							};
						};
					};
					case "Range":
					{
						switch (_exerciseID) do
						{
							case 1: // Rocket/Gunnery
							{
								for "_i" from 1 to 10 do
								{
									_group = createGroup east;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["O_Truck_02_Ammo_F","O_Truck_02_fuel_F","O_Truck_02_medical_F","O_Truck_02_box_F",
												"O_Truck_02_transport_F","O_Truck_02_covered_F","O_MRAP_02_F","O_MRAP_02_gmg_F",
												"O_MRAP_02_hmg_F","O_LSV_02_armed_F","O_LSV_02_unarmed_F","O_Truck_03_ammo_F",
												"O_Truck_03_device_F","O_Truck_03_fuel_F","O_Truck_03_medical_F","O_Truck_03_repair_F",
												"O_Truck_03_transport_F","O_Truck_03_covered_F","CUP_O_UAZ_Unarmed_CSAT","CUP_O_UAZ_AGS30_CSAT",
												"CUP_O_UAZ_MG_CSAT","CUP_O_UAZ_METIS_CSAT","CUP_O_UAZ_Militia_CSAT","CUP_O_UAZ_Open_CSAT",
												"CUP_O_UAZ_SPG9_CSAT"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 2: // ATGM
							{
								for "_i" from 1 to 10 do
								{
									_group = createGroup east;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["O_APC_Tracked_02_cannon_F","CUP_O_BMP1_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP2_CSAT",
												"CUP_O_BMP_HQ_CSAT","CUP_O_BMP2_AMB_CSAT","CUP_O_BMP2_ZU_CSAT","CUP_O_BRDM2_CSAT",
												"CUP_O_BRDM2_ATGM_CSAT","CUP_O_BRDM2_HQ_CSAT","CUP_O_BTR60_CSAT","O_APC_Wheeled_02_rcws_F",
												"O_MBT_02_arty_F","CUP_O_T55_CSAT","CUP_O_T72_CSAT","O_MBT_02_cannon_F"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 3: // Bombs
							{
								for "_i" from 1 to 10 do
								{
									_group = createGroup west;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["Land_BagBunker_Large_F","Land_Cargo_House_V1_F","Land_Cargo_HQ_V1_F",
												"Land_Cargo_Patrol_V1_F","Land_Cargo_Tower_V1_F"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 4: // SEAD
							{
								for "_i" from 1 to 5 do
								{
									_group = createGroup east;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["CUP_O_ZSU23_ChDKZ","CUP_O_ZU23_ChDKZ","O_APC_Tracked_02_AA_F","CUP_O_2S6_RU",
												"CUP_O_2S6M_RU"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 5: // Mortar Range @ OP Dragon
							{
								null = [[monitor6],["spotter_21","spotter_22","spotter_23","spotter_24","spotter_25"]] execVM "LFC\feedInit.sqf";
								_mortars = ["mortarSpawn","mortarSpawn_1","mortarSpawn_2","mortarSpawn_3","mortarSpawn_4"];
								{
									_pos = getMarkerPos _x;
									_heli = createVehicle ["I_Mortar_01_F", _pos, [], 0, "CAN_COLLIDE"];
									GW_TrainingGround_spawnedAssets pushBack _heli;
								} foreach _mortars;
								for "_i" from 1 to 5 do
								{
									_group = createGroup east;
									_loc = selectRandom _morTgts;
									_locArray = [_loc];
									_morTgts = _morTgts - _locArray;
									_unitType = ["O_APC_Tracked_02_cannon_F","CUP_O_BMP1_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP2_CSAT",
												"CUP_O_BMP_HQ_CSAT","CUP_O_BMP2_AMB_CSAT","CUP_O_BMP2_ZU_CSAT","CUP_O_BRDM2_CSAT",
												"CUP_O_BRDM2_ATGM_CSAT","CUP_O_BRDM2_HQ_CSAT","CUP_O_BTR60_CSAT","O_APC_Wheeled_02_rcws_F",
												"O_MBT_02_arty_F","CUP_O_T55_CSAT","CUP_O_T72_CSAT","O_MBT_02_cannon_F"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									_markerstr = createMarker [_loc + "1", getMarkerPos _loc];
									_markerstr setMarkerShape "ICON";
									_markerstr setMarkerType "hd_destroy";
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Range/Exercise Switch";
							};
						};
					};
					case "ACM":
					{
						switch (_exerciseID) do
						{
							case 1: 
							{
								_group = createGroup east;
								_unitTypePool = ["O_Plane_CAS_02_F","CUP_O_L39_CAP_TK"];
								_unit = selectRandom _unitTypePool;
								[getMarkerPos "ACM",0,_unit,_group] call BIS_fnc_spawnVehicle;
								{
									GW_TrainingGround_spawnedOPFOR pushBack _x;
								} foreach units _group;
								_group addWaypoint [getMarkerPos "ravenSolo", 0];
							};
						};
					};
					case "EP":
					{
						switch (_exerciseID) do
						{
							case 1: // Solo Practice
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["B_Heli_Transport_01_F", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird] execFSM "Modules\TrainingGround\FSM\EPFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Raven/Exercise Switch";
							};
						};
					};
					case "Vehicle":
					{
						switch (_exerciseID) do
						{
							case 1: // Driving Course
							{
								_position = getmarkerpos "jaegerWP_21";
								_heli = createVehicle ["CUP_B_T72_CDF", _position, [], 0, "CAN_COLLIDE"];
								_heli setDir 180;
								null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
								null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
								null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
								null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Vehicle/Exercise Switch";
							};
						};
					};
					case "FOB":
					{
						switch (_exerciseID) do
						{
							case 1: // Cluster
							{
								removeAllActions Laptop_6;
								
								// spawn relevant objects to construct the ranges/assault course -> check nekos code for important stuff like target naming etc
								["CUP_B_MTVR_USMC","CUP_B_HMMWV_M1114_USMC","CUP_B_HMMWV_M1114_USMC","CUP_B_HMMWV_Ambulance_USMC","CUP_B_RG31_M2_OD_USMC","CUP_B_RG31_M2_OD_USMC","CUP_B_RG31_M2_OD_USMC","CUP_B_LAV25_HQ_USMC",
								"CUP_B_MTVR_USMC","CUP_B_UH60S_USN","JAS_CUP_B_CH53E_USMC","CUP_B_UH60S_USN","CUP_B_MTVR_Repair_USMC","CUP_B_MTVR_Refuel_USMC"] call GW_TrainingGround_fnc_fobcluster;
								
								// spawn relevant supplies -> initialise spawned boxes as supply crates which should in turn call the relevant framework handler
								_markers = ["986300","986303","981303","984312","981304"];
								{
									_pos = getMarkerPos _x;
									_box = createVehicle ["Box_NATO_Ammo_F", _pos, [], 0, "CAN_COLLIDE"];
									[_box, ["big_box","west"]] call GW_Gear_Fnc_Init;
								}foreach _markers;
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Vehicle/Exercise Switch";
							};
						};
					};
					default
					{
						hint "CODE FAIL. spawnAircraft.sqf Main/BLUFOR/Callsign Switch";
					};
				};
			};
			case "CAMPAIGN-W":
			{
				switch (_callsign) do
				{
					case "Raven":
					{
						switch (_exerciseID) do
						{
							case 1:
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["B_Heli_Transport_01_camo_F", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							case 2: // Raven Normal Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_B_Mi17_AAC", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"normal",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 3: // Raven Urban Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_B_Mi17_AAC", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"urban",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 4: // Raven Special Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_B_Mi17_AAC", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"special",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 5: // Raven Assault Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_B_Mi17_AAC", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"assault",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/BLUFOR/Callsign/Exercise Switch";
							};
						};
					};
					case "Giant":
					{
						switch (_exerciseID) do
						{
							case 1: // Solo Practice
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["JAS_CUP_B_Mi17_AAC", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Giant"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							case 2: // Giant Insertion Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_B_Mi17_AAC", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"Giant",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 3: // Giant Sling Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								_crateSlots = ["sling","sling_1","sling_2","sling_3","sling_4","sling_5","sling_6","sling_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["CargoNet_01_barrels_F", _position, [], 0, "CAN_COLLIDE"];
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _crateSlots;
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_B_Mi17_AAC", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"urban",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Giant/Exercise Switch";
							};
						};
					};
					case "Condor":
					{
						switch (_exerciseID) do
						{
							case 1: // Solo Practice
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["CUP_B_MV22_USMC_RAMPGUN", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Condor"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							case 2: // Condor HLS Ops
							{
								_group = group _caller;
								_parkingSlots = ["VTOLPark","VTOLPark_1","VTOLPark_2","VTOLPark_3","VTOLPark_4","VTOLPark_5","VTOLPark_6","VTOLPark_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["CUP_B_MV22_USMC_RAMPGUN", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"CondorHLS",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 3: // Giant Sling Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								_crateSlots = ["sling","sling_1","sling_2","sling_3","sling_4","sling_5","sling_6","sling_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["CargoNet_01_barrels_F", _position, [], 0, "CAN_COLLIDE"];
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _crateSlots;
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["O_Heli_Transport_04_F", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"urban",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Giant/Exercise Switch";
							};
						};
					};
					case "Range":
					{
						switch (_exerciseID) do
						{
							case 1: // Rocket/Gunnery
							{
								for "_i" from 1 to 10 do
								{
									_group = createGroup east;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["O_Truck_02_Ammo_F","O_Truck_02_fuel_F","O_Truck_02_medical_F","O_Truck_02_box_F",
												"O_Truck_02_transport_F","O_Truck_02_covered_F","O_MRAP_02_F","O_MRAP_02_gmg_F",
												"O_MRAP_02_hmg_F","O_LSV_02_armed_F","O_LSV_02_unarmed_F","O_Truck_03_ammo_F",
												"O_Truck_03_device_F","O_Truck_03_fuel_F","O_Truck_03_medical_F","O_Truck_03_repair_F",
												"O_Truck_03_transport_F","O_Truck_03_covered_F","CUP_O_UAZ_Unarmed_CSAT","CUP_O_UAZ_AGS30_CSAT",
												"CUP_O_UAZ_MG_CSAT","CUP_O_UAZ_METIS_CSAT","CUP_O_UAZ_Militia_CSAT","CUP_O_UAZ_Open_CSAT",
												"CUP_O_UAZ_SPG9_CSAT"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 2: // ATGM
							{
								for "_i" from 1 to 10 do
								{
									_group = createGroup east;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["O_APC_Tracked_02_cannon_F","CUP_O_BMP1_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP2_CSAT",
												"CUP_O_BMP_HQ_CSAT","CUP_O_BMP2_AMB_CSAT","CUP_O_BMP2_ZU_CSAT","CUP_O_BRDM2_CSAT",
												"CUP_O_BRDM2_ATGM_CSAT","CUP_O_BRDM2_HQ_CSAT","CUP_O_BTR60_CSAT","O_APC_Wheeled_02_rcws_F",
												"O_MBT_02_arty_F","CUP_O_T55_CSAT","CUP_O_T72_CSAT","O_MBT_02_cannon_F"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 3: // Bombs
							{
								for "_i" from 1 to 10 do
								{
									_group = createGroup west;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["Land_BagBunker_Large_F","Land_Cargo_House_V1_F","Land_Cargo_HQ_V1_F",
												"Land_Cargo_Patrol_V1_F","Land_Cargo_Tower_V1_F"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 4: // SEAD
							{
								for "_i" from 1 to 5 do
								{
									_group = createGroup east;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["CUP_O_ZSU23_ChDKZ","CUP_O_ZU23_ChDKZ","O_APC_Tracked_02_AA_F","CUP_O_2S6_RU",
												"CUP_O_2S6M_RU"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 5: // Mortar Range @ OP Dragon
							{
								null = [[monitor6],["spotter_21","spotter_22","spotter_23","spotter_24","spotter_25"]] execVM "LFC\feedInit.sqf";
								_mortars = ["mortarSpawn","mortarSpawn_1","mortarSpawn_2","mortarSpawn_3","mortarSpawn_4"];
								{
									_pos = getMarkerPos _x;
									_heli = createVehicle ["I_Mortar_01_F", _pos, [], 0, "CAN_COLLIDE"];
									GW_TrainingGround_spawnedAssets pushBack _heli;
								} foreach _mortars;
								for "_i" from 1 to 5 do
								{
									_group = createGroup east;
									_loc = selectRandom _morTgts;
									_locArray = [_loc];
									_morTgts = _morTgts - _locArray;
									_unitType = ["O_APC_Tracked_02_cannon_F","CUP_O_BMP1_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP2_CSAT",
												"CUP_O_BMP_HQ_CSAT","CUP_O_BMP2_AMB_CSAT","CUP_O_BMP2_ZU_CSAT","CUP_O_BRDM2_CSAT",
												"CUP_O_BRDM2_ATGM_CSAT","CUP_O_BRDM2_HQ_CSAT","CUP_O_BTR60_CSAT","O_APC_Wheeled_02_rcws_F",
												"O_MBT_02_arty_F","CUP_O_T55_CSAT","CUP_O_T72_CSAT","O_MBT_02_cannon_F"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									_markerstr = createMarker [_loc + "1", getMarkerPos _loc];
									_markerstr setMarkerShape "ICON";
									_markerstr setMarkerType "hd_destroy";
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Range/Exercise Switch";
							};
						};
					};
					case "ACM":
					{
						switch (_exerciseID) do
						{
							case 1: 
							{
								_group = createGroup east;
								_unitTypePool = ["O_Plane_CAS_02_F","CUP_O_L39_CAP_TK"];
								_unit = selectRandom _unitTypePool;
								[getMarkerPos "ACM",0,_unit,_group] call BIS_fnc_spawnVehicle;
								{
									GW_TrainingGround_spawnedOPFOR pushBack _x;
								} foreach units _group;
								_group addWaypoint [getMarkerPos "ravenSolo", 0];
							};
						};
					};
					case "EP":
					{
						switch (_exerciseID) do
						{
							case 1: // Solo Practice
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["B_Heli_Transport_01_F", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird] execFSM "Modules\TrainingGround\FSM\EPFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Raven/Exercise Switch";
							};
						};
					};
					case "Vehicle":
					{
						switch (_exerciseID) do
						{
							case 1: // Driving Course
							{
								_position = getmarkerpos "jaegerWP_21";
								_heli = createVehicle ["CUP_B_T72_CDF", _position, [], 0, "CAN_COLLIDE"];
								_heli setDir 180;
								null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
								null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
								null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
								null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Vehicle/Exercise Switch";
							};
						};
					};
					case "FOB":
					{
						switch (_exerciseID) do
						{
							case 1: // Cluster
							{
								removeAllActions Laptop_6;
								
								// spawn relevant objects to construct the ranges/assault course -> check nekos code for important stuff like target naming etc
								["B_Truck_01_transport_F","B_LSV_01_unarmed_F","B_LSV_01_unarmed_F","B_Truck_01_medical_F","B_MRAP_01_F","B_MRAP_01_F","B_MRAP_01_F","B_APC_Wheeled_01_cannon_F",
								"B_Truck_01_transport_F","B_Heli_Light_01_F","B_Heli_Transport_03_unarmed_F","B_Heli_Light_01_F","B_Truck_01_Repair_F","B_Truck_01_fuel_F"] call GW_TrainingGround_fnc_fobcluster;
								
								// spawn relevant supplies -> initialise spawned boxes as supply crates which should in turn call the relevant framework handler
								_markers = ["986300","986303","981303","984312","981304"];
								{
									_pos = getMarkerPos _x;
									_box = createVehicle ["Box_NATO_Ammo_F", _pos, [], 0, "CAN_COLLIDE"];
									[_box, ["big_box","west"]] call GW_Gear_Fnc_Init;
								}foreach _markers;
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Vehicle/Exercise Switch";
							};
						};
					};
					default
					{
						hint "CODE FAIL. spawnAircraft.sqf Main/BLUFOR/Callsign Switch";
					};
				};
			};
			default
			{
				hint "CODE FAIL. spawnAircraft.sqf Main/BLUFOR Switch";
			};
		};
	};
	case 2: // INDEP
	{
		switch (_indep) do
		{
			case "AAF-W":
			{
				switch (_callsign) do
				{
					case "Raven":
					{
						switch (_exerciseID) do
						{
							case 1:
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["I_Heli_light_03_F", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							case 2: // Raven Normal Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking","parking_1","parking_2","parking_3","parking_4","parking_5","parking_6","parking_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["I_Heli_light_03_F", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"normal",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 3: // Raven Urban Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking","parking_1","parking_2","parking_3","parking_4","parking_5","parking_6","parking_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["I_Heli_light_03_F", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"urban",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 4: // Raven Special Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking","parking_1","parking_2","parking_3","parking_4","parking_5","parking_6","parking_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["I_Heli_light_03_F", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"special",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 5: // Raven Assault Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking","parking_1","parking_2","parking_3","parking_4","parking_5","parking_6","parking_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["I_Heli_light_03_F", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"assault",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/INDEP/Callsign/Exercise Switch";
							};
						};
					};
					case "Giant":
					{
						switch (_exerciseID) do
						{
							case 1: // Solo Practice
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["I_Heli_Transport_02_F", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Giant"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							case 2: // Giant Insertion Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["I_Heli_Transport_02_F", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"Giant",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 3: // Giant Sling Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								_crateSlots = ["sling","sling_1","sling_2","sling_3","sling_4","sling_5","sling_6","sling_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["CargoNet_01_barrels_F", _position, [], 0, "CAN_COLLIDE"];
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _crateSlots;
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["I_Heli_Transport_02_F", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"urban",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Giant/Exercise Switch";
							};
						};
					};
					case "Condor":
					{
						switch (_exerciseID) do
						{
							case 1: // Solo Practice
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["CUP_B_MV22_USMC_RAMPGUN", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Condor"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							case 2: // Condor HLS Ops
							{
								_group = group _caller;
								_parkingSlots = ["VTOLPark","VTOLPark_1","VTOLPark_2","VTOLPark_3","VTOLPark_4","VTOLPark_5","VTOLPark_6","VTOLPark_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["CUP_B_MV22_USMC_RAMPGUN", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"CondorHLS",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 3: // Giant Sling Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								_crateSlots = ["sling","sling_1","sling_2","sling_3","sling_4","sling_5","sling_6","sling_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["CargoNet_01_barrels_F", _position, [], 0, "CAN_COLLIDE"];
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _crateSlots;
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["O_Heli_Transport_04_F", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"urban",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Giant/Exercise Switch";
							};
						};
					};
					case "Range":
					{
						switch (_exerciseID) do
						{
							case 1: // Rocket/Gunnery
							{
								for "_i" from 1 to 10 do
								{
									_group = createGroup east;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["O_Truck_02_Ammo_F","O_Truck_02_fuel_F","O_Truck_02_medical_F","O_Truck_02_box_F",
												"O_Truck_02_transport_F","O_Truck_02_covered_F","O_MRAP_02_F","O_MRAP_02_gmg_F",
												"O_MRAP_02_hmg_F","O_LSV_02_armed_F","O_LSV_02_unarmed_F","O_Truck_03_ammo_F",
												"O_Truck_03_device_F","O_Truck_03_fuel_F","O_Truck_03_medical_F","O_Truck_03_repair_F",
												"O_Truck_03_transport_F","O_Truck_03_covered_F","CUP_O_UAZ_Unarmed_CSAT","CUP_O_UAZ_AGS30_CSAT",
												"CUP_O_UAZ_MG_CSAT","CUP_O_UAZ_METIS_CSAT","CUP_O_UAZ_Militia_CSAT","CUP_O_UAZ_Open_CSAT",
												"CUP_O_UAZ_SPG9_CSAT"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 2: // ATGM
							{
								for "_i" from 1 to 10 do
								{
									_group = createGroup east;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["O_APC_Tracked_02_cannon_F","CUP_O_BMP1_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP2_CSAT",
												"CUP_O_BMP_HQ_CSAT","CUP_O_BMP2_AMB_CSAT","CUP_O_BMP2_ZU_CSAT","CUP_O_BRDM2_CSAT",
												"CUP_O_BRDM2_ATGM_CSAT","CUP_O_BRDM2_HQ_CSAT","CUP_O_BTR60_CSAT","O_APC_Wheeled_02_rcws_F",
												"O_MBT_02_arty_F","CUP_O_T55_CSAT","CUP_O_T72_CSAT","O_MBT_02_cannon_F"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 3: // Bombs
							{
								for "_i" from 1 to 10 do
								{
									_group = createGroup west;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["Land_BagBunker_Large_F","Land_Cargo_House_V1_F","Land_Cargo_HQ_V1_F",
												"Land_Cargo_Patrol_V1_F","Land_Cargo_Tower_V1_F"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 4: // SEAD
							{
								for "_i" from 1 to 5 do
								{
									_group = createGroup east;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["CUP_O_ZSU23_ChDKZ","CUP_O_ZU23_ChDKZ","O_APC_Tracked_02_AA_F","CUP_O_2S6_RU",
												"CUP_O_2S6M_RU"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 5: // Mortar Range @ OP Dragon
							{
								null = [[monitor6],["spotter_21","spotter_22","spotter_23","spotter_24","spotter_25"]] execVM "LFC\feedInit.sqf";
								_mortars = ["mortarSpawn","mortarSpawn_1","mortarSpawn_2","mortarSpawn_3","mortarSpawn_4"];
								{
									_pos = getMarkerPos _x;
									_heli = createVehicle ["I_Mortar_01_F", _pos, [], 0, "CAN_COLLIDE"];
									GW_TrainingGround_spawnedAssets pushBack _heli;
								} foreach _mortars;
								for "_i" from 1 to 5 do
								{
									_group = createGroup east;
									_loc = selectRandom _morTgts;
									_locArray = [_loc];
									_morTgts = _morTgts - _locArray;
									_unitType = ["O_APC_Tracked_02_cannon_F","CUP_O_BMP1_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP2_CSAT",
												"CUP_O_BMP_HQ_CSAT","CUP_O_BMP2_AMB_CSAT","CUP_O_BMP2_ZU_CSAT","CUP_O_BRDM2_CSAT",
												"CUP_O_BRDM2_ATGM_CSAT","CUP_O_BRDM2_HQ_CSAT","CUP_O_BTR60_CSAT","O_APC_Wheeled_02_rcws_F",
												"O_MBT_02_arty_F","CUP_O_T55_CSAT","CUP_O_T72_CSAT","O_MBT_02_cannon_F"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									_markerstr = createMarker [_loc + "1", getMarkerPos _loc];
									_markerstr setMarkerShape "ICON";
									_markerstr setMarkerType "hd_destroy";
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Range/Exercise Switch";
							};
						};
					};
					case "ACM":
					{
						switch (_exerciseID) do
						{
							case 1: 
							{
								_group = createGroup east;
								_unitTypePool = ["O_Plane_CAS_02_F","CUP_O_L39_CAP_TK"];
								_unit = selectRandom _unitTypePool;
								[getMarkerPos "ACM",0,_unit,_group] call BIS_fnc_spawnVehicle;
								{
									GW_TrainingGround_spawnedOPFOR pushBack _x;
								} foreach units _group;
								_group addWaypoint [getMarkerPos "ravenSolo", 0];
							};
						};
					};
					case "EP":
					{
						switch (_exerciseID) do
						{
							case 1: // Solo Practice
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["B_Heli_Transport_01_F", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird] execFSM "Modules\TrainingGround\FSM\EPFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Raven/Exercise Switch";
							};
						};
					};
					case "Vehicle":
					{
						switch (_exerciseID) do
						{
							case 1: // Driving Course
							{
								removeAllActions Laptop_4;
								
								Laptop_4 addAction ["<t color='#FFFF00'>BACK</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["AAFW",0],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Warrior</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["AAFW",1],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>M-113</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["AAFW",2],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Pandur</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["AAFW",3],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Fennek</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["AAFW",4],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>KamAZ</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["AAFW",5],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Landrover</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["AAFW",6],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Quad Bike</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["AAFW",7],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Leopard</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["AAFW",8],1,false,false,"",""];
							};
							case 2: // Range
							{
								removeAllActions Laptop_4;
								
								Laptop_4 addAction ["<t color='#FFFF00'>BACK</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["AAFW",0],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Warrior</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["AAFW",1],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Pandur</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["AAFW",2],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Fennek-HMG</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["AAFW",3],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Fennek-GMG</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["AAFW",4],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Landrover</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["AAFW",5],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>Leopard</t>","Modules\TrainingGround\scripts\vehicleFiringRange.sqf",["AAFW",5],1,false,false,"",""];
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/INDEP/Vehicle/Exercise Switch";
							};
						};
					};
					case "FOB":
					{
						switch (_exerciseID) do
						{
							case 1: // Cluster
							{
								removeAllActions Laptop_6;
								
								// spawn relevant objects to construct the ranges/assault course -> check nekos code for important stuff like target naming etc
								["I_Truck_02_transport_F","I_MRAP_03_F","I_MRAP_03_F","I_Truck_02_medical_F","I_MRAP_03_F","I_MRAP_03_F","I_MRAP_03_F","I_APC_Wheeled_03_cannon_F",
								"I_Truck_02_transport_F","I_Heli_light_03_dynamicLoadout_F","I_Heli_Transport_02_F","I_Heli_light_03_dynamicLoadout_F","I_Truck_02_box_F","I_Truck_02_fuel_F"] call GW_TrainingGround_fnc_fobcluster;
								
								// spawn relevant supplies -> initialise spawned boxes as supply crates which should in turn call the relevant framework handler
								_markers = ["986300","986303","981303","984312","981304"];
								{
									_pos = getMarkerPos _x;
									_box = createVehicle ["Box_NATO_Ammo_F", _pos, [], 0, "CAN_COLLIDE"];
									[_box, ["big_box","indep"]] call GW_Gear_Fnc_Init;
								}foreach _markers;
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Vehicle/Exercise Switch";
							};
						};
					};
					default
					{
						hint "CODE FAIL. spawnAircraft.sqf Main/INDEP/Callsign Switch";
					};
				};
			};
			case "PMC":
			{
				switch (_callsign) do
				{
					case "Raven":
					{
						switch (_exerciseID) do
						{
							case 1:
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["CUP_I_Ka60_GL_Blk_ION", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							case 2: // Raven Normal Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking","parking_1","parking_2","parking_3","parking_4","parking_5","parking_6","parking_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["CUP_I_Ka60_GL_Blk_ION", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"normal",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 3: // Raven Urban Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking","parking_1","parking_2","parking_3","parking_4","parking_5","parking_6","parking_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["CUP_I_Ka60_GL_Blk_ION", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"urban",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 4: // Raven Special Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking","parking_1","parking_2","parking_3","parking_4","parking_5","parking_6","parking_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["CUP_I_Ka60_GL_Blk_ION", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"special",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 5: // Raven Assault Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking","parking_1","parking_2","parking_3","parking_4","parking_5","parking_6","parking_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["CUP_I_Ka60_GL_Blk_ION", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"assault",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/INDEP/Callsign/Exercise Switch";
							};
						};
					};
					case "Giant":
					{
						switch (_exerciseID) do
						{
							case 1: // Solo Practice
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["JAS_CUP_I_Mi24_Mk4_ION", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Giant"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							case 2: // Giant Insertion Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_I_Mi24_Mk4_ION", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"Giant",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 3: // Giant Sling Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								_crateSlots = ["sling","sling_1","sling_2","sling_3","sling_4","sling_5","sling_6","sling_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["CargoNet_01_barrels_F", _position, [], 0, "CAN_COLLIDE"];
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _crateSlots;
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_I_Mi24_Mk4_ION", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"urban",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Giant/Exercise Switch";
							};
						};
					};
					case "Condor":
					{
						switch (_exerciseID) do
						{
							case 1: // Solo Practice
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["CUP_B_MV22_USMC_RAMPGUN", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Condor"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							case 2: // Condor HLS Ops
							{
								_group = group _caller;
								_parkingSlots = ["VTOLPark","VTOLPark_1","VTOLPark_2","VTOLPark_3","VTOLPark_4","VTOLPark_5","VTOLPark_6","VTOLPark_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["CUP_B_MV22_USMC_RAMPGUN", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"CondorHLS",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 3: // Giant Sling Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								_crateSlots = ["sling","sling_1","sling_2","sling_3","sling_4","sling_5","sling_6","sling_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["CargoNet_01_barrels_F", _position, [], 0, "CAN_COLLIDE"];
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _crateSlots;
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["O_Heli_Transport_04_F", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"urban",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Giant/Exercise Switch";
							};
						};
					};
					case "Range":
					{
						switch (_exerciseID) do
						{
							case 1: // Rocket/Gunnery
							{
								for "_i" from 1 to 10 do
								{
									_group = createGroup east;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["O_Truck_02_Ammo_F","O_Truck_02_fuel_F","O_Truck_02_medical_F","O_Truck_02_box_F",
												"O_Truck_02_transport_F","O_Truck_02_covered_F","O_MRAP_02_F","O_MRAP_02_gmg_F",
												"O_MRAP_02_hmg_F","O_LSV_02_armed_F","O_LSV_02_unarmed_F","O_Truck_03_ammo_F",
												"O_Truck_03_device_F","O_Truck_03_fuel_F","O_Truck_03_medical_F","O_Truck_03_repair_F",
												"O_Truck_03_transport_F","O_Truck_03_covered_F","CUP_O_UAZ_Unarmed_CSAT","CUP_O_UAZ_AGS30_CSAT",
												"CUP_O_UAZ_MG_CSAT","CUP_O_UAZ_METIS_CSAT","CUP_O_UAZ_Militia_CSAT","CUP_O_UAZ_Open_CSAT",
												"CUP_O_UAZ_SPG9_CSAT"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 2: // ATGM
							{
								for "_i" from 1 to 10 do
								{
									_group = createGroup east;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["O_APC_Tracked_02_cannon_F","CUP_O_BMP1_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP2_CSAT",
												"CUP_O_BMP_HQ_CSAT","CUP_O_BMP2_AMB_CSAT","CUP_O_BMP2_ZU_CSAT","CUP_O_BRDM2_CSAT",
												"CUP_O_BRDM2_ATGM_CSAT","CUP_O_BRDM2_HQ_CSAT","CUP_O_BTR60_CSAT","O_APC_Wheeled_02_rcws_F",
												"O_MBT_02_arty_F","CUP_O_T55_CSAT","CUP_O_T72_CSAT","O_MBT_02_cannon_F"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 3: // Bombs
							{
								for "_i" from 1 to 10 do
								{
									_group = createGroup west;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["Land_BagBunker_Large_F","Land_Cargo_House_V1_F","Land_Cargo_HQ_V1_F",
												"Land_Cargo_Patrol_V1_F","Land_Cargo_Tower_V1_F"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 4: // SEAD
							{
								for "_i" from 1 to 5 do
								{
									_group = createGroup east;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["CUP_O_ZSU23_ChDKZ","CUP_O_ZU23_ChDKZ","O_APC_Tracked_02_AA_F","CUP_O_2S6_RU",
												"CUP_O_2S6M_RU"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 5: // Mortar Range @ OP Dragon
							{
								null = [[monitor6],["spotter_21","spotter_22","spotter_23","spotter_24","spotter_25"]] execVM "LFC\feedInit.sqf";
								_mortars = ["mortarSpawn","mortarSpawn_1","mortarSpawn_2","mortarSpawn_3","mortarSpawn_4"];
								{
									_pos = getMarkerPos _x;
									_heli = createVehicle ["I_Mortar_01_F", _pos, [], 0, "CAN_COLLIDE"];
									GW_TrainingGround_spawnedAssets pushBack _heli;
								} foreach _mortars;
								for "_i" from 1 to 5 do
								{
									_group = createGroup east;
									_loc = selectRandom _morTgts;
									_locArray = [_loc];
									_morTgts = _morTgts - _locArray;
									_unitType = ["O_APC_Tracked_02_cannon_F","CUP_O_BMP1_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP2_CSAT",
												"CUP_O_BMP_HQ_CSAT","CUP_O_BMP2_AMB_CSAT","CUP_O_BMP2_ZU_CSAT","CUP_O_BRDM2_CSAT",
												"CUP_O_BRDM2_ATGM_CSAT","CUP_O_BRDM2_HQ_CSAT","CUP_O_BTR60_CSAT","O_APC_Wheeled_02_rcws_F",
												"O_MBT_02_arty_F","CUP_O_T55_CSAT","CUP_O_T72_CSAT","O_MBT_02_cannon_F"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									_markerstr = createMarker [_loc + "1", getMarkerPos _loc];
									_markerstr setMarkerShape "ICON";
									_markerstr setMarkerType "hd_destroy";
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Range/Exercise Switch";
							};
						};
					};
					case "ACM":
					{
						switch (_exerciseID) do
						{
							case 1: 
							{
								_group = createGroup east;
								_unitTypePool = ["O_Plane_CAS_02_F","CUP_O_L39_CAP_TK"];
								_unit = selectRandom _unitTypePool;
								[getMarkerPos "ACM",0,_unit,_group] call BIS_fnc_spawnVehicle;
								{
									GW_TrainingGround_spawnedOPFOR pushBack _x;
								} foreach units _group;
								_group addWaypoint [getMarkerPos "ravenSolo", 0];
							};
						};
					};
					case "EP":
					{
						switch (_exerciseID) do
						{
							case 1: // Solo Practice
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["I_Heli_light_03_F", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird] execFSM "Modules\TrainingGround\FSM\EPFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Raven/Exercise Switch";
							};
						};
					};
					case "Vehicle":
					{
						switch (_exerciseID) do
						{
							case 1: // Driving Course
							{
								removeAllActions Laptop_4;
								
								Laptop_4 addAction ["<t color='#FFFF00'>BACK</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["PMC",0],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>SUV</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["PMC",1],1,false,false,"",""];
							};
							case 2: // Range
							{
								removeAllActions Laptop_4;
								
								Laptop_4 addAction ["<t color='#FFFF00'>BACK</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["PMC",0],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
								Laptop_4 addAction ["<t color='#FFFF00'>SUV</t>","Modules\TrainingGround\scripts\vehicleDrivingCourse.sqf",["PMC",1],1,false,false,"",""];
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/INDEP/Vehicle/Exercise Switch";
							};
						};
					};
					case "FOB":
					{
						switch (_exerciseID) do
						{
							case 1: // Cluster
							{
								removeAllActions Laptop_6;
								
								// spawn relevant objects to construct the ranges/assault course -> check nekos code for important stuff like target naming etc
								["I_Truck_02_transport_F","I_MRAP_03_F","I_MRAP_03_F","I_Truck_02_medical_F","I_MRAP_03_F","I_MRAP_03_F","I_MRAP_03_F","I_APC_Wheeled_03_cannon_F",
								"I_Truck_02_transport_F","I_Heli_light_03_dynamicLoadout_F","I_Heli_Transport_02_F","I_Heli_light_03_dynamicLoadout_F","I_Truck_02_box_F","I_Truck_02_fuel_F"] call GW_TrainingGround_fnc_fobcluster;
								
								// spawn relevant supplies -> initialise spawned boxes as supply crates which should in turn call the relevant framework handler
								_markers = ["986300","986303","981303","984312","981304"];
								{
									_pos = getMarkerPos _x;
									_box = createVehicle ["Box_NATO_Ammo_F", _pos, [], 0, "CAN_COLLIDE"];
									[_box, ["big_box","indep"]] call GW_Gear_Fnc_Init;
								}foreach _markers;
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Vehicle/Exercise Switch";
							};
						};
					};
					default
					{
						hint "CODE FAIL. spawnAircraft.sqf Main/INDEP/Callsign Switch";
					};
				};
			};
			case "INSURGENT-D":
			{
				switch (_callsign) do
				{
					case "Raven":
					{
						switch (_exerciseID) do
						{
							case 1:
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["JAS_CUP_I_SA330_Puma_HC2_AAC", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							case 2: // Raven Normal Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking","parking_1","parking_2","parking_3","parking_4","parking_5","parking_6","parking_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_I_SA330_Puma_HC2_AAC", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"normal",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 3: // Raven Urban Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking","parking_1","parking_2","parking_3","parking_4","parking_5","parking_6","parking_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_I_SA330_Puma_HC2_AAC", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"urban",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 4: // Raven Special Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking","parking_1","parking_2","parking_3","parking_4","parking_5","parking_6","parking_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_I_SA330_Puma_HC2_AAC", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"special",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 5: // Raven Assault Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking","parking_1","parking_2","parking_3","parking_4","parking_5","parking_6","parking_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_I_SA330_Puma_HC2_AAC", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"assault",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/INDEP/Callsign/Exercise Switch";
							};
						};
					};
					case "Giant":
					{
						switch (_exerciseID) do
						{
							case 1: // Solo Practice
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["JAS_CUP_I_SA330_Puma_HC2_RACS", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Giant"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							case 2: // Giant Insertion Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_I_SA330_Puma_HC2_RACS", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"Giant",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 3: // Giant Sling Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								_crateSlots = ["sling","sling_1","sling_2","sling_3","sling_4","sling_5","sling_6","sling_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["CargoNet_01_barrels_F", _position, [], 0, "CAN_COLLIDE"];
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _crateSlots;
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_I_SA330_Puma_HC2_RACS", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"urban",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Giant/Exercise Switch";
							};
						};
					};
					case "Condor":
					{
						switch (_exerciseID) do
						{
							case 1: // Solo Practice
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["CUP_B_MV22_USMC_RAMPGUN", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Condor"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							case 2: // Condor HLS Ops
							{
								_group = group _caller;
								_parkingSlots = ["VTOLPark","VTOLPark_1","VTOLPark_2","VTOLPark_3","VTOLPark_4","VTOLPark_5","VTOLPark_6","VTOLPark_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["CUP_B_MV22_USMC_RAMPGUN", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"CondorHLS",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 3: // Giant Sling Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								_crateSlots = ["sling","sling_1","sling_2","sling_3","sling_4","sling_5","sling_6","sling_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["CargoNet_01_barrels_F", _position, [], 0, "CAN_COLLIDE"];
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _crateSlots;
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["O_Heli_Transport_04_F", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"urban",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Giant/Exercise Switch";
							};
						};
					};
					case "Range":
					{
						switch (_exerciseID) do
						{
							case 1: // Rocket/Gunnery
							{
								for "_i" from 1 to 10 do
								{
									_group = createGroup east;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["O_Truck_02_Ammo_F","O_Truck_02_fuel_F","O_Truck_02_medical_F","O_Truck_02_box_F",
												"O_Truck_02_transport_F","O_Truck_02_covered_F","O_MRAP_02_F","O_MRAP_02_gmg_F",
												"O_MRAP_02_hmg_F","O_LSV_02_armed_F","O_LSV_02_unarmed_F","O_Truck_03_ammo_F",
												"O_Truck_03_device_F","O_Truck_03_fuel_F","O_Truck_03_medical_F","O_Truck_03_repair_F",
												"O_Truck_03_transport_F","O_Truck_03_covered_F","CUP_O_UAZ_Unarmed_CSAT","CUP_O_UAZ_AGS30_CSAT",
												"CUP_O_UAZ_MG_CSAT","CUP_O_UAZ_METIS_CSAT","CUP_O_UAZ_Militia_CSAT","CUP_O_UAZ_Open_CSAT",
												"CUP_O_UAZ_SPG9_CSAT"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 2: // ATGM
							{
								for "_i" from 1 to 10 do
								{
									_group = createGroup east;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["O_APC_Tracked_02_cannon_F","CUP_O_BMP1_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP2_CSAT",
												"CUP_O_BMP_HQ_CSAT","CUP_O_BMP2_AMB_CSAT","CUP_O_BMP2_ZU_CSAT","CUP_O_BRDM2_CSAT",
												"CUP_O_BRDM2_ATGM_CSAT","CUP_O_BRDM2_HQ_CSAT","CUP_O_BTR60_CSAT","O_APC_Wheeled_02_rcws_F",
												"O_MBT_02_arty_F","CUP_O_T55_CSAT","CUP_O_T72_CSAT","O_MBT_02_cannon_F"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 3: // Bombs
							{
								for "_i" from 1 to 10 do
								{
									_group = createGroup west;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["Land_BagBunker_Large_F","Land_Cargo_House_V1_F","Land_Cargo_HQ_V1_F",
												"Land_Cargo_Patrol_V1_F","Land_Cargo_Tower_V1_F"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 4: // SEAD
							{
								for "_i" from 1 to 5 do
								{
									_group = createGroup east;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["CUP_O_ZSU23_ChDKZ","CUP_O_ZU23_ChDKZ","O_APC_Tracked_02_AA_F","CUP_O_2S6_RU",
												"CUP_O_2S6M_RU"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 5: // Mortar Range @ OP Dragon
							{
								null = [[monitor6],["spotter_21","spotter_22","spotter_23","spotter_24","spotter_25"]] execVM "LFC\feedInit.sqf";
								_mortars = ["mortarSpawn","mortarSpawn_1","mortarSpawn_2","mortarSpawn_3","mortarSpawn_4"];
								{
									_pos = getMarkerPos _x;
									_heli = createVehicle ["I_Mortar_01_F", _pos, [], 0, "CAN_COLLIDE"];
									GW_TrainingGround_spawnedAssets pushBack _heli;
								} foreach _mortars;
								for "_i" from 1 to 5 do
								{
									_group = createGroup east;
									_loc = selectRandom _morTgts;
									_locArray = [_loc];
									_morTgts = _morTgts - _locArray;
									_unitType = ["O_APC_Tracked_02_cannon_F","CUP_O_BMP1_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP2_CSAT",
												"CUP_O_BMP_HQ_CSAT","CUP_O_BMP2_AMB_CSAT","CUP_O_BMP2_ZU_CSAT","CUP_O_BRDM2_CSAT",
												"CUP_O_BRDM2_ATGM_CSAT","CUP_O_BRDM2_HQ_CSAT","CUP_O_BTR60_CSAT","O_APC_Wheeled_02_rcws_F",
												"O_MBT_02_arty_F","CUP_O_T55_CSAT","CUP_O_T72_CSAT","O_MBT_02_cannon_F"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									_markerstr = createMarker [_loc + "1", getMarkerPos _loc];
									_markerstr setMarkerShape "ICON";
									_markerstr setMarkerType "hd_destroy";
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Range/Exercise Switch";
							};
						};
					};
					case "ACM":
					{
						switch (_exerciseID) do
						{
							case 1: 
							{
								_group = createGroup east;
								_unitTypePool = ["O_Plane_CAS_02_F","CUP_O_L39_CAP_TK"];
								_unit = selectRandom _unitTypePool;
								[getMarkerPos "ACM",0,_unit,_group] call BIS_fnc_spawnVehicle;
								{
									GW_TrainingGround_spawnedOPFOR pushBack _x;
								} foreach units _group;
								_group addWaypoint [getMarkerPos "ravenSolo", 0];
							};
						};
					};
					case "EP":
					{
						switch (_exerciseID) do
						{
							case 1: // Solo Practice
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["I_Heli_light_03_F", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird] execFSM "Modules\TrainingGround\FSM\EPFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Raven/Exercise Switch";
							};
						};
					};
					case "Vehicle":
					{
						switch (_exerciseID) do
						{
							case 1: // Driving Course
							{
								_position = getmarkerpos "jaegerWP_21";
								_heli = createVehicle ["CUP_I_T55_TK_GUE", _position, [], 0, "CAN_COLLIDE"];
								_heli setDir 180;
								null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
								null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
								null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
								null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Vehicle/Exercise Switch";
							};
						};
					};
					case "FOB":
					{
						switch (_exerciseID) do
						{
							case 1: // Cluster
							{
								removeAllActions Laptop_6;
								
								// spawn relevant objects to construct the ranges/assault course -> check nekos code for important stuff like target naming etc
								["I_Truck_02_transport_F","I_MRAP_03_F","I_MRAP_03_F","I_Truck_02_medical_F","I_MRAP_03_F","I_MRAP_03_F","I_MRAP_03_F","I_APC_Wheeled_03_cannon_F",
								"I_Truck_02_transport_F","I_Heli_light_03_dynamicLoadout_F","I_Heli_Transport_02_F","I_Heli_light_03_dynamicLoadout_F","I_Truck_02_box_F","I_Truck_02_fuel_F"] call GW_TrainingGround_fnc_fobcluster;
								
								// spawn relevant supplies -> initialise spawned boxes as supply crates which should in turn call the relevant framework handler
								_markers = ["986300","986303","981303","984312","981304"];
								{
									_pos = getMarkerPos _x;
									_box = createVehicle ["Box_NATO_Ammo_F", _pos, [], 0, "CAN_COLLIDE"];
									[_box, ["big_box","indep"]] call GW_Gear_Fnc_Init;
								}foreach _markers;
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Vehicle/Exercise Switch";
							};
						};
					};
					default
					{
						hint "CODE FAIL. spawnAircraft.sqf Main/INDEP/Callsign Switch";
					};
				};
			};
			case "INSURGENT-W":
			{
				switch (_callsign) do
				{
					case "Raven":
					{
						switch (_exerciseID) do
						{
							case 1:
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["JAS_CUP_I_SA330_Puma_HC2_AAC", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							case 2: // Raven Normal Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking","parking_1","parking_2","parking_3","parking_4","parking_5","parking_6","parking_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_I_SA330_Puma_HC2_AAC", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"normal",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 3: // Raven Urban Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking","parking_1","parking_2","parking_3","parking_4","parking_5","parking_6","parking_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_I_SA330_Puma_HC2_AAC", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"urban",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 4: // Raven Special Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking","parking_1","parking_2","parking_3","parking_4","parking_5","parking_6","parking_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_I_SA330_Puma_HC2_AAC", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"special",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 5: // Raven Assault Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking","parking_1","parking_2","parking_3","parking_4","parking_5","parking_6","parking_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_I_SA330_Puma_HC2_AAC", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"assault",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/INDEP/Callsign/Exercise Switch";
							};
						};
					};
					case "Giant":
					{
						switch (_exerciseID) do
						{
							case 1: // Solo Practice
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["JAS_CUP_I_SA330_Puma_HC2_RACS", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Giant"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							case 2: // Giant Insertion Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_I_SA330_Puma_HC2_RACS", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"Giant",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 3: // Giant Sling Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								_crateSlots = ["sling","sling_1","sling_2","sling_3","sling_4","sling_5","sling_6","sling_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["CargoNet_01_barrels_F", _position, [], 0, "CAN_COLLIDE"];
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _crateSlots;
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_I_SA330_Puma_HC2_RACS", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"urban",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Giant/Exercise Switch";
							};
						};
					};
					case "Condor":
					{
						switch (_exerciseID) do
						{
							case 1: // Solo Practice
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["CUP_B_MV22_USMC_RAMPGUN", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Condor"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							case 2: // Condor HLS Ops
							{
								_group = group _caller;
								_parkingSlots = ["VTOLPark","VTOLPark_1","VTOLPark_2","VTOLPark_3","VTOLPark_4","VTOLPark_5","VTOLPark_6","VTOLPark_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["CUP_B_MV22_USMC_RAMPGUN", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"CondorHLS",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 3: // Giant Sling Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								_crateSlots = ["sling","sling_1","sling_2","sling_3","sling_4","sling_5","sling_6","sling_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["CargoNet_01_barrels_F", _position, [], 0, "CAN_COLLIDE"];
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _crateSlots;
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["O_Heli_Transport_04_F", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"urban",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Giant/Exercise Switch";
							};
						};
					};
					case "Range":
					{
						switch (_exerciseID) do
						{
							case 1: // Rocket/Gunnery
							{
								for "_i" from 1 to 10 do
								{
									_group = createGroup east;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["O_Truck_02_Ammo_F","O_Truck_02_fuel_F","O_Truck_02_medical_F","O_Truck_02_box_F",
												"O_Truck_02_transport_F","O_Truck_02_covered_F","O_MRAP_02_F","O_MRAP_02_gmg_F",
												"O_MRAP_02_hmg_F","O_LSV_02_armed_F","O_LSV_02_unarmed_F","O_Truck_03_ammo_F",
												"O_Truck_03_device_F","O_Truck_03_fuel_F","O_Truck_03_medical_F","O_Truck_03_repair_F",
												"O_Truck_03_transport_F","O_Truck_03_covered_F","CUP_O_UAZ_Unarmed_CSAT","CUP_O_UAZ_AGS30_CSAT",
												"CUP_O_UAZ_MG_CSAT","CUP_O_UAZ_METIS_CSAT","CUP_O_UAZ_Militia_CSAT","CUP_O_UAZ_Open_CSAT",
												"CUP_O_UAZ_SPG9_CSAT"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 2: // ATGM
							{
								for "_i" from 1 to 10 do
								{
									_group = createGroup east;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["O_APC_Tracked_02_cannon_F","CUP_O_BMP1_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP2_CSAT",
												"CUP_O_BMP_HQ_CSAT","CUP_O_BMP2_AMB_CSAT","CUP_O_BMP2_ZU_CSAT","CUP_O_BRDM2_CSAT",
												"CUP_O_BRDM2_ATGM_CSAT","CUP_O_BRDM2_HQ_CSAT","CUP_O_BTR60_CSAT","O_APC_Wheeled_02_rcws_F",
												"O_MBT_02_arty_F","CUP_O_T55_CSAT","CUP_O_T72_CSAT","O_MBT_02_cannon_F"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 3: // Bombs
							{
								for "_i" from 1 to 10 do
								{
									_group = createGroup west;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["Land_BagBunker_Large_F","Land_Cargo_House_V1_F","Land_Cargo_HQ_V1_F",
												"Land_Cargo_Patrol_V1_F","Land_Cargo_Tower_V1_F"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 4: // SEAD
							{
								for "_i" from 1 to 5 do
								{
									_group = createGroup east;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["CUP_O_ZSU23_ChDKZ","CUP_O_ZU23_ChDKZ","O_APC_Tracked_02_AA_F","CUP_O_2S6_RU",
												"CUP_O_2S6M_RU"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 5: // Mortar Range @ OP Dragon
							{
								null = [[monitor6],["spotter_21","spotter_22","spotter_23","spotter_24","spotter_25"]] execVM "LFC\feedInit.sqf";
								_mortars = ["mortarSpawn","mortarSpawn_1","mortarSpawn_2","mortarSpawn_3","mortarSpawn_4"];
								{
									_pos = getMarkerPos _x;
									_heli = createVehicle ["I_Mortar_01_F", _pos, [], 0, "CAN_COLLIDE"];
									GW_TrainingGround_spawnedAssets pushBack _heli;
								} foreach _mortars;
								for "_i" from 1 to 5 do
								{
									_group = createGroup east;
									_loc = selectRandom _morTgts;
									_locArray = [_loc];
									_morTgts = _morTgts - _locArray;
									_unitType = ["O_APC_Tracked_02_cannon_F","CUP_O_BMP1_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP2_CSAT",
												"CUP_O_BMP_HQ_CSAT","CUP_O_BMP2_AMB_CSAT","CUP_O_BMP2_ZU_CSAT","CUP_O_BRDM2_CSAT",
												"CUP_O_BRDM2_ATGM_CSAT","CUP_O_BRDM2_HQ_CSAT","CUP_O_BTR60_CSAT","O_APC_Wheeled_02_rcws_F",
												"O_MBT_02_arty_F","CUP_O_T55_CSAT","CUP_O_T72_CSAT","O_MBT_02_cannon_F"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									_markerstr = createMarker [_loc + "1", getMarkerPos _loc];
									_markerstr setMarkerShape "ICON";
									_markerstr setMarkerType "hd_destroy";
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Range/Exercise Switch";
							};
						};
					};
					case "ACM":
					{
						switch (_exerciseID) do
						{
							case 1: 
							{
								_group = createGroup east;
								_unitTypePool = ["O_Plane_CAS_02_F","CUP_O_L39_CAP_TK"];
								_unit = selectRandom _unitTypePool;
								[getMarkerPos "ACM",0,_unit,_group] call BIS_fnc_spawnVehicle;
								{
									GW_TrainingGround_spawnedOPFOR pushBack _x;
								} foreach units _group;
								_group addWaypoint [getMarkerPos "ravenSolo", 0];
							};
						};
					};
					case "EP":
					{
						switch (_exerciseID) do
						{
							case 1: // Solo Practice
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["I_Heli_light_03_F", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird] execFSM "Modules\TrainingGround\FSM\EPFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Raven/Exercise Switch";
							};
						};
					};
					case "Vehicle":
					{
						switch (_exerciseID) do
						{
							case 1: // Driving Course
							{
								_position = getmarkerpos "jaegerWP_21";
								_heli = createVehicle ["CUP_I_T55_TK_GUE", _position, [], 0, "CAN_COLLIDE"];
								_heli setDir 180;
								null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
								null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
								null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
								null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Vehicle/Exercise Switch";
							};
						};
					};
					case "FOB":
					{
						switch (_exerciseID) do
						{
							case 1: // Cluster
							{
								removeAllActions Laptop_6;
								
								// spawn relevant objects to construct the ranges/assault course -> check nekos code for important stuff like target naming etc
								["I_Truck_02_transport_F","I_MRAP_03_F","I_MRAP_03_F","I_Truck_02_medical_F","I_MRAP_03_F","I_MRAP_03_F","I_MRAP_03_F","I_APC_Wheeled_03_cannon_F",
								"I_Truck_02_transport_F","I_Heli_light_03_dynamicLoadout_F","I_Heli_Transport_02_F","I_Heli_light_03_dynamicLoadout_F","I_Truck_02_box_F","I_Truck_02_fuel_F"] call GW_TrainingGround_fnc_fobcluster;
								
								// spawn relevant supplies -> initialise spawned boxes as supply crates which should in turn call the relevant framework handler
								_markers = ["986300","986303","981303","984312","981304"];
								{
									_pos = getMarkerPos _x;
									_box = createVehicle ["Box_NATO_Ammo_F", _pos, [], 0, "CAN_COLLIDE"];
									[_box, ["big_box","indep"]] call GW_Gear_Fnc_Init;
								}foreach _markers;
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Vehicle/Exercise Switch";
							};
						};
					};
					default
					{
						hint "CODE FAIL. spawnAircraft.sqf Main/INDEP/Callsign Switch";
					};
				};
			};
			case "CAMPAIGN-I":
			{
				switch (_callsign) do
				{
					case "Raven":
					{
						switch (_exerciseID) do
						{
							case 1:
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["B_Heli_Transport_01_camo_F", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							case 2: // Raven Normal Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_I_SA330_Puma_HC2_AAC", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"normal",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 3: // Raven Urban Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_I_SA330_Puma_HC2_AAC", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"urban",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 4: // Raven Special Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_I_SA330_Puma_HC2_AAC", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"special",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 5: // Raven Assault Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking","parking_1","parking_2","parking_3","parking_4","parking_5","parking_6","parking_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_I_SA330_Puma_HC2_AAC", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"assault",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/INDEP/Callsign/Exercise Switch";
							};
						};
					};
					case "Giant":
					{
						switch (_exerciseID) do
						{
							case 1: // Solo Practice
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["JAS_CUP_I_SA330_Puma_HC2_RACS", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Giant"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							case 2: // Giant Insertion Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_I_SA330_Puma_HC2_RACS", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"Giant",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 3: // Giant Sling Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								_crateSlots = ["sling","sling_1","sling_2","sling_3","sling_4","sling_5","sling_6","sling_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["CargoNet_01_barrels_F", _position, [], 0, "CAN_COLLIDE"];
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _crateSlots;
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["JAS_CUP_I_SA330_Puma_HC2_RACS", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"urban",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Giant/Exercise Switch";
							};
						};
					};
					case "Condor":
					{
						switch (_exerciseID) do
						{
							case 1: // Solo Practice
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["CUP_B_MV22_USMC_RAMPGUN", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Condor"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							case 2: // Condor HLS Ops
							{
								_group = group _caller;
								_parkingSlots = ["VTOLPark","VTOLPark_1","VTOLPark_2","VTOLPark_3","VTOLPark_4","VTOLPark_5","VTOLPark_6","VTOLPark_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["CUP_B_MV22_USMC_RAMPGUN", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"CondorHLS",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							case 3: // Giant Sling Ops
							{
								_group = group _caller;
								_parkingSlots = ["parking_12","parking_15","parking","parking_5","parking_2","parking_7","parking_8","parking_11"];
								_crateSlots = ["sling","sling_1","sling_2","sling_3","sling_4","sling_5","sling_6","sling_7"];
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["CargoNet_01_barrels_F", _position, [], 0, "CAN_COLLIDE"];
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _crateSlots;
								{
									_position = getMarkerPos _x;
									_heli = createVehicle ["O_Heli_Transport_04_F", _position, [], 0, "CAN_COLLIDE"];
									_heli setDir 130;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								}foreach _parkingSlots;
								GW_TrainingGround_AACFSM = [_caller,_side,6,"urban",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Giant/Exercise Switch";
							};
						};
					};
					case "Range":
					{
						switch (_exerciseID) do
						{
							case 1: // Rocket/Gunnery
							{
								for "_i" from 1 to 10 do
								{
									_group = createGroup east;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["O_Truck_02_Ammo_F","O_Truck_02_fuel_F","O_Truck_02_medical_F","O_Truck_02_box_F",
												"O_Truck_02_transport_F","O_Truck_02_covered_F","O_MRAP_02_F","O_MRAP_02_gmg_F",
												"O_MRAP_02_hmg_F","O_LSV_02_armed_F","O_LSV_02_unarmed_F","O_Truck_03_ammo_F",
												"O_Truck_03_device_F","O_Truck_03_fuel_F","O_Truck_03_medical_F","O_Truck_03_repair_F",
												"O_Truck_03_transport_F","O_Truck_03_covered_F","CUP_O_UAZ_Unarmed_CSAT","CUP_O_UAZ_AGS30_CSAT",
												"CUP_O_UAZ_MG_CSAT","CUP_O_UAZ_METIS_CSAT","CUP_O_UAZ_Militia_CSAT","CUP_O_UAZ_Open_CSAT",
												"CUP_O_UAZ_SPG9_CSAT"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 2: // ATGM
							{
								for "_i" from 1 to 10 do
								{
									_group = createGroup east;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["O_APC_Tracked_02_cannon_F","CUP_O_BMP1_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP2_CSAT",
												"CUP_O_BMP_HQ_CSAT","CUP_O_BMP2_AMB_CSAT","CUP_O_BMP2_ZU_CSAT","CUP_O_BRDM2_CSAT",
												"CUP_O_BRDM2_ATGM_CSAT","CUP_O_BRDM2_HQ_CSAT","CUP_O_BTR60_CSAT","O_APC_Wheeled_02_rcws_F",
												"O_MBT_02_arty_F","CUP_O_T55_CSAT","CUP_O_T72_CSAT","O_MBT_02_cannon_F"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 3: // Bombs
							{
								for "_i" from 1 to 10 do
								{
									_group = createGroup west;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["Land_BagBunker_Large_F","Land_Cargo_House_V1_F","Land_Cargo_HQ_V1_F",
												"Land_Cargo_Patrol_V1_F","Land_Cargo_Tower_V1_F"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 4: // SEAD
							{
								for "_i" from 1 to 5 do
								{
									_group = createGroup east;
									_loc = selectRandom _airTgts;
									_locArray = [_loc];
									_airTgts = _airTgts - _locArray;
									_unitType = ["CUP_O_ZSU23_ChDKZ","CUP_O_ZU23_ChDKZ","O_APC_Tracked_02_AA_F","CUP_O_2S6_RU",
												"CUP_O_2S6M_RU"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							case 5: // Mortar Range @ OP Dragon
							{
								null = [[monitor6],["spotter_21","spotter_22","spotter_23","spotter_24","spotter_25"]] execVM "LFC\feedInit.sqf";
								_mortars = ["mortarSpawn","mortarSpawn_1","mortarSpawn_2","mortarSpawn_3","mortarSpawn_4"];
								{
									_pos = getMarkerPos _x;
									_heli = createVehicle ["I_Mortar_01_F", _pos, [], 0, "CAN_COLLIDE"];
									GW_TrainingGround_spawnedAssets pushBack _heli;
								} foreach _mortars;
								for "_i" from 1 to 5 do
								{
									_group = createGroup east;
									_loc = selectRandom _morTgts;
									_locArray = [_loc];
									_morTgts = _morTgts - _locArray;
									_unitType = ["O_APC_Tracked_02_cannon_F","CUP_O_BMP1_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP2_CSAT",
												"CUP_O_BMP_HQ_CSAT","CUP_O_BMP2_AMB_CSAT","CUP_O_BMP2_ZU_CSAT","CUP_O_BRDM2_CSAT",
												"CUP_O_BRDM2_ATGM_CSAT","CUP_O_BRDM2_HQ_CSAT","CUP_O_BTR60_CSAT","O_APC_Wheeled_02_rcws_F",
												"O_MBT_02_arty_F","CUP_O_T55_CSAT","CUP_O_T72_CSAT","O_MBT_02_cannon_F"];
									_unit = _unitType call BIS_fnc_selectRandom;
									[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
									_markerstr = createMarker [_loc + "1", getMarkerPos _loc];
									_markerstr setMarkerShape "ICON";
									_markerstr setMarkerType "hd_destroy";
									{
										GW_TrainingGround_spawnedOPFOR pushBack _x;
									} foreach units _group;
									sleep 30;
								};
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Range/Exercise Switch";
							};
						};
					};
					case "ACM":
					{
						switch (_exerciseID) do
						{
							case 1: 
							{
								_group = createGroup east;
								_unitTypePool = ["O_Plane_CAS_02_F","CUP_O_L39_CAP_TK"];
								_unit = selectRandom _unitTypePool;
								[getMarkerPos "ACM",0,_unit,_group] call BIS_fnc_spawnVehicle;
								{
									GW_TrainingGround_spawnedOPFOR pushBack _x;
								} foreach units _group;
								_group addWaypoint [getMarkerPos "ravenSolo", 0];
							};
						};
					};
					case "EP":
					{
						switch (_exerciseID) do
						{
							case 1: // Solo Practice
							{
								_position = getmarkerpos "ravenSolo";
								_heli = createVehicle ["I_Heli_light_03_F", _position, [], 0, "CAN_COLLIDE"];
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird] execFSM "Modules\TrainingGround\FSM\EPFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Raven/Exercise Switch";
							};
						};
					};
					case "Vehicle":
					{
						switch (_exerciseID) do
						{
							case 1: // Driving Course
							{
								_position = getmarkerpos "jaegerWP_21";
								_heli = createVehicle ["CUP_I_T55_TK_GUE", _position, [], 0, "CAN_COLLIDE"];
								_heli setDir 180;
								null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
								null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
								null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
								null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
								GW_TrainingGround_soloBird = _heli;
								GW_TrainingGround_spawnedAssets pushBack _heli;
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Vehicle/Exercise Switch";
							};
						};
					};
					case "FOB":
					{
						switch (_exerciseID) do
						{
							case 1: // Cluster
							{
								removeAllActions Laptop_6;
								
								// spawn relevant objects to construct the ranges/assault course -> check nekos code for important stuff like target naming etc
								["I_Truck_02_transport_F","I_MRAP_03_F","I_MRAP_03_F","I_Truck_02_medical_F","I_MRAP_03_F","I_MRAP_03_F","I_MRAP_03_F","I_APC_Wheeled_03_cannon_F",
								"I_Truck_02_transport_F","I_Heli_light_03_dynamicLoadout_F","I_Heli_Transport_02_F","I_Heli_light_03_dynamicLoadout_F","I_Truck_02_box_F","I_Truck_02_fuel_F"] call GW_TrainingGround_fnc_fobcluster;
								
								// spawn relevant supplies -> initialise spawned boxes as supply crates which should in turn call the relevant framework handler
								_markers = ["986300","986303","981303","984312","981304"];
								{
									_pos = getMarkerPos _x;
									_box = createVehicle ["Box_NATO_Ammo_F", _pos, [], 0, "CAN_COLLIDE"];
									[_box, ["big_box","indep"]] call GW_Gear_Fnc_Init;
								}foreach _markers;
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Vehicle/Exercise Switch";
							};
						};
					};
					default
					{
						hint "CODE FAIL. spawnAircraft.sqf Main/INDEP/Callsign Switch";
					};
				};
			};
			default
			{
				hint "CODE FAIL. spawnAircraft.sqf Main/INDEP Switch";
			};
		};
	};
	default
	{
		hint "CODE FAIL. spawnAircraft.sqf Main Switch";
	};
 };
 