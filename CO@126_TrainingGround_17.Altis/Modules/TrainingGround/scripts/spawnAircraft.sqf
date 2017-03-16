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
					default
					{
						hint "CODE FAIL. spawnAircraft.sqf Main/BLUFOR/Callsign Switch";
					};
				};
			};
			case "BAF-W":
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
					default
					{
						hint "CODE FAIL. spawnAircraft.sqf Main/BLUFOR/Callsign Switch";
					};
				};
			};
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
 