#include "..\scriptComponent.hpp"
 
 // Store Incoming Data
 _caller = _this select 1;
 _callsign = _this select 3 select 0;
 _exerciseID = _this select 3 select 1;
 _side = getNumber(configfile >> "CfgVehicles" >> (typeOf _caller) >> "side"); // 0 = OPFOR, 1 = BLUFOR, 2 = INDEP, 3 = CIV
 
 _vehTgts = GW_TrainingGround_vehTargets;
 
 switch (_callsign) do
{
	case "CSATH":
	{
		switch (_exerciseID) do
		{
			case 0:
			{};
			case 1:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["O_APC_Tracked_02_cannon_F", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				for "_i" from 1 to 5 do
				{
					_group = createGroup west;
					_loc = selectRandom _vehTgts;
					_locArray = [_loc];
					_vehTgts = _vehTgts - _locArray;
					_unitType = ["B_Truck_01_mover_F","B_Truck_01_ammo_F","B_Truck_01_box_F","B_Truck_01_fuel_F","B_Truck_01_medical_F",
							"B_Truck_01_Repair_F","B_Truck_01_transport_F","B_Truck_01_covered_F","B_MRAP_01_F","B_MRAP_01_gmg_F","B_MRAP_01_hmg_F",
							"B_LSV_01_armed_F","B_LSV_01_unarmed_F","B_APC_Wheeled_01_cannon_F","B_APC_Tracked_01_rcws_F"];
					_unit = _unitType call BIS_fnc_selectRandom;
					[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
					{
						GW_TrainingGround_spawnedOPFOR pushBack _x;
					} foreach units _group;
					sleep 30;
				};
			};
			case 2:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["O_APC_Wheeled_02_rcws_F", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				for "_i" from 1 to 5 do
				{
					_group = createGroup west;
					_loc = selectRandom _vehTgts;
					_locArray = [_loc];
					_vehTgts = _vehTgts - _locArray;
					_unitType = ["B_Truck_01_mover_F","B_Truck_01_ammo_F","B_Truck_01_box_F","B_Truck_01_fuel_F","B_Truck_01_medical_F",
							"B_Truck_01_Repair_F","B_Truck_01_transport_F","B_Truck_01_covered_F","B_MRAP_01_F","B_MRAP_01_gmg_F","B_MRAP_01_hmg_F",
							"B_LSV_01_armed_F","B_LSV_01_unarmed_F","B_APC_Wheeled_01_cannon_F","B_APC_Tracked_01_rcws_F"];
					_unit = _unitType call BIS_fnc_selectRandom;
					[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
					{
						GW_TrainingGround_spawnedOPFOR pushBack _x;
					} foreach units _group;
					sleep 30;
				};
			};
			case 3:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["O_MRAP_02_hmg_F", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				for "_i" from 1 to 5 do
				{
					_group = createGroup west;
					_loc = selectRandom _vehTgts;
					_locArray = [_loc];
					_vehTgts = _vehTgts - _locArray;
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
			case 4:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["O_MRAP_02_gmg_F", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				for "_i" from 1 to 5 do
				{
					_group = createGroup west;
					_loc = selectRandom _vehTgts;
					_locArray = [_loc];
					_vehTgts = _vehTgts - _locArray;
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
			case 5:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["O_LSV_02_armed_F", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				for "_i" from 1 to 5 do
				{
					_group = createGroup west;
					_loc = selectRandom _vehTgts;
					_locArray = [_loc];
					_vehTgts = _vehTgts - _locArray;
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
			case 6:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["O_MBT_02_cannon_F", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				for "_i" from 1 to 5 do
				{
					_group = createGroup west;
					_loc = selectRandom _vehTgts;
					_locArray = [_loc];
					_vehTgts = _vehTgts - _locArray;
					_unitType = ["B_Truck_01_mover_F","B_Truck_01_ammo_F","B_Truck_01_box_F","B_Truck_01_fuel_F","B_Truck_01_medical_F",
							"B_Truck_01_Repair_F","B_Truck_01_transport_F","B_Truck_01_covered_F","B_MRAP_01_F","B_MRAP_01_gmg_F","B_MRAP_01_hmg_F",
							"B_LSV_01_armed_F","B_LSV_01_unarmed_F","B_APC_Wheeled_01_cannon_F","B_APC_Tracked_01_rcws_F","B_MBT_01_cannon_F"];
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
				hint "CODE FAIL. vehicleDrivingCourse.sqf Callsign/Exercise Switch";
			};
		};
	};
	case "CSATW":
	{
		switch (_exerciseID) do
		{
			case 0:
			{};
			case 1:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["O_T_APC_Tracked_02_cannon_ghex_F", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				for "_i" from 1 to 5 do
				{
					_group = createGroup west;
					_loc = selectRandom _vehTgts;
					_locArray = [_loc];
					_vehTgts = _vehTgts - _locArray;
					_unitType = ["B_Truck_01_mover_F","B_Truck_01_ammo_F","B_Truck_01_box_F","B_Truck_01_fuel_F","B_Truck_01_medical_F",
							"B_Truck_01_Repair_F","B_Truck_01_transport_F","B_Truck_01_covered_F","B_MRAP_01_F","B_MRAP_01_gmg_F","B_MRAP_01_hmg_F",
							"B_LSV_01_armed_F","B_LSV_01_unarmed_F","B_APC_Wheeled_01_cannon_F","B_APC_Tracked_01_rcws_F"];
					_unit = _unitType call BIS_fnc_selectRandom;
					[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
					{
						GW_TrainingGround_spawnedOPFOR pushBack _x;
					} foreach units _group;
					sleep 30;
				};
			};
			case 2:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["O_APC_Wheeled_02_rcws_F", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				for "_i" from 1 to 5 do
				{
					_group = createGroup west;
					_loc = selectRandom _vehTgts;
					_locArray = [_loc];
					_vehTgts = _vehTgts - _locArray;
					_unitType = ["B_Truck_01_mover_F","B_Truck_01_ammo_F","B_Truck_01_box_F","B_Truck_01_fuel_F","B_Truck_01_medical_F",
							"B_Truck_01_Repair_F","B_Truck_01_transport_F","B_Truck_01_covered_F","B_MRAP_01_F","B_MRAP_01_gmg_F","B_MRAP_01_hmg_F",
							"B_LSV_01_armed_F","B_LSV_01_unarmed_F","B_APC_Wheeled_01_cannon_F","B_APC_Tracked_01_rcws_F"];
					_unit = _unitType call BIS_fnc_selectRandom;
					[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
					{
						GW_TrainingGround_spawnedOPFOR pushBack _x;
					} foreach units _group;
					sleep 30;
				};
			};
			case 3:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["O_T_MRAP_02_hmg_ghex_F", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				for "_i" from 1 to 5 do
				{
					_group = createGroup west;
					_loc = selectRandom _vehTgts;
					_locArray = [_loc];
					_vehTgts = _vehTgts - _locArray;
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
			case 4:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["O_T_MRAP_02_gmg_ghex_F", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				for "_i" from 1 to 5 do
				{
					_group = createGroup west;
					_loc = selectRandom _vehTgts;
					_locArray = [_loc];
					_vehTgts = _vehTgts - _locArray;
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
			case 5:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["O_T_LSV_02_armed_F", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				for "_i" from 1 to 5 do
				{
					_group = createGroup west;
					_loc = selectRandom _vehTgts;
					_locArray = [_loc];
					_vehTgts = _vehTgts - _locArray;
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
			case 6:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["O_T_MBT_02_cannon_ghex_F", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				for "_i" from 1 to 5 do
				{
					_group = createGroup west;
					_loc = selectRandom _vehTgts;
					_locArray = [_loc];
					_vehTgts = _vehTgts - _locArray;
					_unitType = ["B_Truck_01_mover_F","B_Truck_01_ammo_F","B_Truck_01_box_F","B_Truck_01_fuel_F","B_Truck_01_medical_F",
							"B_Truck_01_Repair_F","B_Truck_01_transport_F","B_Truck_01_covered_F","B_MRAP_01_F","B_MRAP_01_gmg_F","B_MRAP_01_hmg_F",
							"B_LSV_01_armed_F","B_LSV_01_unarmed_F","B_APC_Wheeled_01_cannon_F","B_APC_Tracked_01_rcws_F","B_MBT_01_cannon_F"];
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
				hint "CODE FAIL. vehicleDrivingCourse.sqf Callsign/Exercise Switch";
			};
		};
	};
	case "CSATU":
	{
		switch (_exerciseID) do
		{
			case 0:
			{};
			case 1:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["O_T_APC_Tracked_02_cannon_ghex_F", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				for "_i" from 1 to 5 do
				{
					_group = createGroup west;
					_loc = selectRandom _vehTgts;
					_locArray = [_loc];
					_vehTgts = _vehTgts - _locArray;
					_unitType = ["B_Truck_01_mover_F","B_Truck_01_ammo_F","B_Truck_01_box_F","B_Truck_01_fuel_F","B_Truck_01_medical_F",
							"B_Truck_01_Repair_F","B_Truck_01_transport_F","B_Truck_01_covered_F","B_MRAP_01_F","B_MRAP_01_gmg_F","B_MRAP_01_hmg_F",
							"B_LSV_01_armed_F","B_LSV_01_unarmed_F","B_APC_Wheeled_01_cannon_F","B_APC_Tracked_01_rcws_F"];
					_unit = _unitType call BIS_fnc_selectRandom;
					[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
					{
						GW_TrainingGround_spawnedOPFOR pushBack _x;
					} foreach units _group;
					sleep 30;
				};
			};
			case 2:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["O_APC_Wheeled_02_rcws_F", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				for "_i" from 1 to 5 do
				{
					_group = createGroup west;
					_loc = selectRandom _vehTgts;
					_locArray = [_loc];
					_vehTgts = _vehTgts - _locArray;
					_unitType = ["B_Truck_01_mover_F","B_Truck_01_ammo_F","B_Truck_01_box_F","B_Truck_01_fuel_F","B_Truck_01_medical_F",
							"B_Truck_01_Repair_F","B_Truck_01_transport_F","B_Truck_01_covered_F","B_MRAP_01_F","B_MRAP_01_gmg_F","B_MRAP_01_hmg_F",
							"B_LSV_01_armed_F","B_LSV_01_unarmed_F","B_APC_Wheeled_01_cannon_F","B_APC_Tracked_01_rcws_F"];
					_unit = _unitType call BIS_fnc_selectRandom;
					[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
					{
						GW_TrainingGround_spawnedOPFOR pushBack _x;
					} foreach units _group;
					sleep 30;
				};
			};
			case 3:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["O_T_MRAP_02_hmg_ghex_F", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				for "_i" from 1 to 5 do
				{
					_group = createGroup west;
					_loc = selectRandom _vehTgts;
					_locArray = [_loc];
					_vehTgts = _vehTgts - _locArray;
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
			case 4:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["O_T_MRAP_02_gmg_ghex_F", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				for "_i" from 1 to 5 do
				{
					_group = createGroup west;
					_loc = selectRandom _vehTgts;
					_locArray = [_loc];
					_vehTgts = _vehTgts - _locArray;
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
			case 5:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["O_T_LSV_02_armed_F", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				for "_i" from 1 to 5 do
				{
					_group = createGroup west;
					_loc = selectRandom _vehTgts;
					_locArray = [_loc];
					_vehTgts = _vehTgts - _locArray;
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
			case 6:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["O_T_MBT_02_cannon_ghex_F", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				for "_i" from 1 to 5 do
				{
					_group = createGroup west;
					_loc = selectRandom _vehTgts;
					_locArray = [_loc];
					_vehTgts = _vehTgts - _locArray;
					_unitType = ["B_Truck_01_mover_F","B_Truck_01_ammo_F","B_Truck_01_box_F","B_Truck_01_fuel_F","B_Truck_01_medical_F",
							"B_Truck_01_Repair_F","B_Truck_01_transport_F","B_Truck_01_covered_F","B_MRAP_01_F","B_MRAP_01_gmg_F","B_MRAP_01_hmg_F",
							"B_LSV_01_armed_F","B_LSV_01_unarmed_F","B_APC_Wheeled_01_cannon_F","B_APC_Tracked_01_rcws_F","B_MBT_01_cannon_F"];
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
				hint "CODE FAIL. vehicleDrivingCourse.sqf Callsign/Exercise Switch";
			};
		};
	};
	case "RUS":
	{
		switch (_exerciseID) do
		{
			case 0:
			{};
			case 1:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_O_BMP2_RU", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				for "_i" from 1 to 5 do
				{
					_group = createGroup west;
					_loc = selectRandom _vehTgts;
					_locArray = [_loc];
					_vehTgts = _vehTgts - _locArray;
					_unitType = ["B_Truck_01_mover_F","B_Truck_01_ammo_F","B_Truck_01_box_F","B_Truck_01_fuel_F","B_Truck_01_medical_F",
							"B_Truck_01_Repair_F","B_Truck_01_transport_F","B_Truck_01_covered_F","B_MRAP_01_F","B_MRAP_01_gmg_F","B_MRAP_01_hmg_F",
							"B_LSV_01_armed_F","B_LSV_01_unarmed_F","B_APC_Wheeled_01_cannon_F","B_APC_Tracked_01_rcws_F"];
					_unit = _unitType call BIS_fnc_selectRandom;
					[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
					{
						GW_TrainingGround_spawnedOPFOR pushBack _x;
					} foreach units _group;
					sleep 30;
				};
			};
			case 2:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_O_BMP3_RU", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				for "_i" from 1 to 5 do
				{
					_group = createGroup west;
					_loc = selectRandom _vehTgts;
					_locArray = [_loc];
					_vehTgts = _vehTgts - _locArray;
					_unitType = ["B_Truck_01_mover_F","B_Truck_01_ammo_F","B_Truck_01_box_F","B_Truck_01_fuel_F","B_Truck_01_medical_F",
							"B_Truck_01_Repair_F","B_Truck_01_transport_F","B_Truck_01_covered_F","B_MRAP_01_F","B_MRAP_01_gmg_F","B_MRAP_01_hmg_F",
							"B_LSV_01_armed_F","B_LSV_01_unarmed_F","B_APC_Wheeled_01_cannon_F","B_APC_Tracked_01_rcws_F"];
					_unit = _unitType call BIS_fnc_selectRandom;
					[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
					{
						GW_TrainingGround_spawnedOPFOR pushBack _x;
					} foreach units _group;
					sleep 30;
				};
			};
			case 3:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_O_BRDM2_RUS", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				for "_i" from 1 to 5 do
				{
					_group = createGroup west;
					_loc = selectRandom _vehTgts;
					_locArray = [_loc];
					_vehTgts = _vehTgts - _locArray;
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
			case 4:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_O_BTR90_RU", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				for "_i" from 1 to 5 do
				{
					_group = createGroup west;
					_loc = selectRandom _vehTgts;
					_locArray = [_loc];
					_vehTgts = _vehTgts - _locArray;
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
			case 5:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_O_T72_RU", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				for "_i" from 1 to 5 do
				{
					_group = createGroup west;
					_loc = selectRandom _vehTgts;
					_locArray = [_loc];
					_vehTgts = _vehTgts - _locArray;
					_unitType = ["B_Truck_01_mover_F","B_Truck_01_ammo_F","B_Truck_01_box_F","B_Truck_01_fuel_F","B_Truck_01_medical_F",
							"B_Truck_01_Repair_F","B_Truck_01_transport_F","B_Truck_01_covered_F","B_MRAP_01_F","B_MRAP_01_gmg_F","B_MRAP_01_hmg_F",
							"B_LSV_01_armed_F","B_LSV_01_unarmed_F","B_APC_Wheeled_01_cannon_F","B_APC_Tracked_01_rcws_F","B_MBT_01_cannon_F"];
					_unit = _unitType call BIS_fnc_selectRandom;
					[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
					{
						GW_TrainingGround_spawnedOPFOR pushBack _x;
					} foreach units _group;
					sleep 30;
				};
			};
			case 6:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_O_T90_RU", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				for "_i" from 1 to 5 do
				{
					_group = createGroup west;
					_loc = selectRandom _vehTgts;
					_locArray = [_loc];
					_vehTgts = _vehTgts - _locArray;
					_unitType = ["B_Truck_01_mover_F","B_Truck_01_ammo_F","B_Truck_01_box_F","B_Truck_01_fuel_F","B_Truck_01_medical_F",
							"B_Truck_01_Repair_F","B_Truck_01_transport_F","B_Truck_01_covered_F","B_MRAP_01_F","B_MRAP_01_gmg_F","B_MRAP_01_hmg_F",
							"B_LSV_01_armed_F","B_LSV_01_unarmed_F","B_APC_Wheeled_01_cannon_F","B_APC_Tracked_01_rcws_F","B_MBT_01_cannon_F"];
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
				hint "CODE FAIL. vehicleDrivingCourse.sqf Callsign/Exercise Switch";
			};
		};
	};
	case "TKA":
	{
		switch (_exerciseID) do
		{
			case 0:
			{};
			case 1:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_O_BMP1_TKA", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				for "_i" from 1 to 5 do
				{
					_group = createGroup west;
					_loc = selectRandom _vehTgts;
					_locArray = [_loc];
					_vehTgts = _vehTgts - _locArray;
					_unitType = ["B_Truck_01_mover_F","B_Truck_01_ammo_F","B_Truck_01_box_F","B_Truck_01_fuel_F","B_Truck_01_medical_F",
							"B_Truck_01_Repair_F","B_Truck_01_transport_F","B_Truck_01_covered_F","B_MRAP_01_F","B_MRAP_01_gmg_F","B_MRAP_01_hmg_F",
							"B_LSV_01_armed_F","B_LSV_01_unarmed_F","B_APC_Wheeled_01_cannon_F","B_APC_Tracked_01_rcws_F"];
					_unit = _unitType call BIS_fnc_selectRandom;
					[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
					{
						GW_TrainingGround_spawnedOPFOR pushBack _x;
					} foreach units _group;
					sleep 30;
				};
			};
			case 2:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_O_BMP2_TKA", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				for "_i" from 1 to 5 do
				{
					_group = createGroup west;
					_loc = selectRandom _vehTgts;
					_locArray = [_loc];
					_vehTgts = _vehTgts - _locArray;
					_unitType = ["B_Truck_01_mover_F","B_Truck_01_ammo_F","B_Truck_01_box_F","B_Truck_01_fuel_F","B_Truck_01_medical_F",
							"B_Truck_01_Repair_F","B_Truck_01_transport_F","B_Truck_01_covered_F","B_MRAP_01_F","B_MRAP_01_gmg_F","B_MRAP_01_hmg_F",
							"B_LSV_01_armed_F","B_LSV_01_unarmed_F","B_APC_Wheeled_01_cannon_F","B_APC_Tracked_01_rcws_F"];
					_unit = _unitType call BIS_fnc_selectRandom;
					[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
					{
						GW_TrainingGround_spawnedOPFOR pushBack _x;
					} foreach units _group;
					sleep 30;
				};
			};
			case 3:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_O_BRDM2_TKA", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				for "_i" from 1 to 5 do
				{
					_group = createGroup west;
					_loc = selectRandom _vehTgts;
					_locArray = [_loc];
					_vehTgts = _vehTgts - _locArray;
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
			case 4:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_O_BTR40_TKA", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				for "_i" from 1 to 5 do
				{
					_group = createGroup west;
					_loc = selectRandom _vehTgts;
					_locArray = [_loc];
					_vehTgts = _vehTgts - _locArray;
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
			case 5:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_O_T34_TKA", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				for "_i" from 1 to 5 do
				{
					_group = createGroup west;
					_loc = selectRandom _vehTgts;
					_locArray = [_loc];
					_vehTgts = _vehTgts - _locArray;
					_unitType = ["B_Truck_01_mover_F","B_Truck_01_ammo_F","B_Truck_01_box_F","B_Truck_01_fuel_F","B_Truck_01_medical_F",
							"B_Truck_01_Repair_F","B_Truck_01_transport_F","B_Truck_01_covered_F","B_MRAP_01_F","B_MRAP_01_gmg_F","B_MRAP_01_hmg_F",
							"B_LSV_01_armed_F","B_LSV_01_unarmed_F","B_APC_Wheeled_01_cannon_F","B_APC_Tracked_01_rcws_F","B_MBT_01_cannon_F"];
					_unit = _unitType call BIS_fnc_selectRandom;
					[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
					{
						GW_TrainingGround_spawnedOPFOR pushBack _x;
					} foreach units _group;
					sleep 30;
				};
			};
			case 6:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_O_T55_TK", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				for "_i" from 1 to 5 do
				{
					_group = createGroup west;
					_loc = selectRandom _vehTgts;
					_locArray = [_loc];
					_vehTgts = _vehTgts - _locArray;
					_unitType = ["B_Truck_01_mover_F","B_Truck_01_ammo_F","B_Truck_01_box_F","B_Truck_01_fuel_F","B_Truck_01_medical_F",
							"B_Truck_01_Repair_F","B_Truck_01_transport_F","B_Truck_01_covered_F","B_MRAP_01_F","B_MRAP_01_gmg_F","B_MRAP_01_hmg_F",
							"B_LSV_01_armed_F","B_LSV_01_unarmed_F","B_APC_Wheeled_01_cannon_F","B_APC_Tracked_01_rcws_F","B_MBT_01_cannon_F"];
					_unit = _unitType call BIS_fnc_selectRandom;
					[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
					{
						GW_TrainingGround_spawnedOPFOR pushBack _x;
					} foreach units _group;
					sleep 30;
				};
			};
			case 7:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_O_T72_TKA", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				for "_i" from 1 to 5 do
				{
					_group = createGroup west;
					_loc = selectRandom _vehTgts;
					_locArray = [_loc];
					_vehTgts = _vehTgts - _locArray;
					_unitType = ["B_Truck_01_mover_F","B_Truck_01_ammo_F","B_Truck_01_box_F","B_Truck_01_fuel_F","B_Truck_01_medical_F",
							"B_Truck_01_Repair_F","B_Truck_01_transport_F","B_Truck_01_covered_F","B_MRAP_01_F","B_MRAP_01_gmg_F","B_MRAP_01_hmg_F",
							"B_LSV_01_armed_F","B_LSV_01_unarmed_F","B_APC_Wheeled_01_cannon_F","B_APC_Tracked_01_rcws_F","B_MBT_01_cannon_F"];
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
				hint "CODE FAIL. vehicleDrivingCourse.sqf Callsign/Exercise Switch";
			};
		};
	};
	case "SLA":
	{
		switch (_exerciseID) do
		{
			case 0:
			{};
			case 1:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_O_BMP2_SLA", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				for "_i" from 1 to 5 do
				{
					_group = createGroup west;
					_loc = selectRandom _vehTgts;
					_locArray = [_loc];
					_vehTgts = _vehTgts - _locArray;
					_unitType = ["B_Truck_01_mover_F","B_Truck_01_ammo_F","B_Truck_01_box_F","B_Truck_01_fuel_F","B_Truck_01_medical_F",
							"B_Truck_01_Repair_F","B_Truck_01_transport_F","B_Truck_01_covered_F","B_MRAP_01_F","B_MRAP_01_gmg_F","B_MRAP_01_hmg_F",
							"B_LSV_01_armed_F","B_LSV_01_unarmed_F","B_APC_Wheeled_01_cannon_F","B_APC_Tracked_01_rcws_F"];
					_unit = _unitType call BIS_fnc_selectRandom;
					[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
					{
						GW_TrainingGround_spawnedOPFOR pushBack _x;
					} foreach units _group;
					sleep 30;
				};
			};
			case 2:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_O_BRDM2_SLA", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				for "_i" from 1 to 5 do
				{
					_group = createGroup west;
					_loc = selectRandom _vehTgts;
					_locArray = [_loc];
					_vehTgts = _vehTgts - _locArray;
					_unitType = ["B_Truck_01_mover_F","B_Truck_01_ammo_F","B_Truck_01_box_F","B_Truck_01_fuel_F","B_Truck_01_medical_F",
							"B_Truck_01_Repair_F","B_Truck_01_transport_F","B_Truck_01_covered_F","B_MRAP_01_F","B_MRAP_01_gmg_F","B_MRAP_01_hmg_F",
							"B_LSV_01_armed_F","B_LSV_01_unarmed_F","B_APC_Wheeled_01_cannon_F","B_APC_Tracked_01_rcws_F"];
					_unit = _unitType call BIS_fnc_selectRandom;
					[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
					{
						GW_TrainingGround_spawnedOPFOR pushBack _x;
					} foreach units _group;
					sleep 30;
				};
			};
			case 3:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_O_BTR60_SLA", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				for "_i" from 1 to 5 do
				{
					_group = createGroup west;
					_loc = selectRandom _vehTgts;
					_locArray = [_loc];
					_vehTgts = _vehTgts - _locArray;
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
			case 4:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_O_T55_SLA", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				for "_i" from 1 to 5 do
				{
					_group = createGroup west;
					_loc = selectRandom _vehTgts;
					_locArray = [_loc];
					_vehTgts = _vehTgts - _locArray;
					_unitType = ["B_Truck_01_mover_F","B_Truck_01_ammo_F","B_Truck_01_box_F","B_Truck_01_fuel_F","B_Truck_01_medical_F",
							"B_Truck_01_Repair_F","B_Truck_01_transport_F","B_Truck_01_covered_F","B_MRAP_01_F","B_MRAP_01_gmg_F","B_MRAP_01_hmg_F",
							"B_LSV_01_armed_F","B_LSV_01_unarmed_F","B_APC_Wheeled_01_cannon_F","B_APC_Tracked_01_rcws_F","B_MBT_01_cannon_F"];
					_unit = _unitType call BIS_fnc_selectRandom;
					[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
					{
						GW_TrainingGround_spawnedOPFOR pushBack _x;
					} foreach units _group;
					sleep 30;
				};
			};
			case 5:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_O_T72_SLA", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				for "_i" from 1 to 5 do
				{
					_group = createGroup west;
					_loc = selectRandom _vehTgts;
					_locArray = [_loc];
					_vehTgts = _vehTgts - _locArray;
					_unitType = ["B_Truck_01_mover_F","B_Truck_01_ammo_F","B_Truck_01_box_F","B_Truck_01_fuel_F","B_Truck_01_medical_F",
							"B_Truck_01_Repair_F","B_Truck_01_transport_F","B_Truck_01_covered_F","B_MRAP_01_F","B_MRAP_01_gmg_F","B_MRAP_01_hmg_F",
							"B_LSV_01_armed_F","B_LSV_01_unarmed_F","B_APC_Wheeled_01_cannon_F","B_APC_Tracked_01_rcws_F","B_MBT_01_cannon_F"];
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
				hint "CODE FAIL. vehicleDrivingCourse.sqf Callsign/Exercise Switch";
			};
		};
	};
	case "NATOD":
	{
		switch (_exerciseID) do
		{
			case 0:
			{};
			case 1:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["B_APC_Wheeled_01_cannon_F", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				for "_i" from 1 to 5 do
				{
					_group = createGroup east;
					_loc = selectRandom _vehTgts;
					_locArray = [_loc];
					_vehTgts = _vehTgts - _locArray;
					_unitType = ["O_APC_Tracked_02_cannon_F","CUP_O_BMP1_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP2_CSAT",
								"CUP_O_BRDM2_CSAT","CUP_O_BTR60_CSAT","O_APC_Wheeled_02_rcws_F","O_Truck_02_Ammo_F","O_Truck_02_fuel_F",
								"O_Truck_02_medical_F","O_Truck_02_box_F","O_Truck_02_transport_F","O_Truck_02_covered_F","O_MRAP_02_F",
								"O_LSV_02_unarmed_F","O_Truck_03_ammo_F","O_Truck_03_device_F","O_Truck_03_fuel_F","O_Truck_03_medical_F",
								"O_Truck_03_repair_F","O_Truck_03_transport_F","CUP_O_UAZ_Unarmed_CSAT"	];
					_unit = _unitType call BIS_fnc_selectRandom;
					[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
					{
						GW_TrainingGround_spawnedOPFOR pushBack _x;
					} foreach units _group;
					sleep 30;
				};
			};
			case 2:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["B_APC_Tracked_01_rcws_F", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				for "_i" from 1 to 5 do
				{
					_group = createGroup east;
					_loc = selectRandom _vehTgts;
					_locArray = [_loc];
					_vehTgts = _vehTgts - _locArray;
					_unitType = ["O_APC_Tracked_02_cannon_F","CUP_O_BMP1_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP2_CSAT",
								"CUP_O_BRDM2_CSAT","CUP_O_BTR60_CSAT","O_APC_Wheeled_02_rcws_F","O_Truck_02_Ammo_F","O_Truck_02_fuel_F",
								"O_Truck_02_medical_F","O_Truck_02_box_F","O_Truck_02_transport_F","O_Truck_02_covered_F","O_MRAP_02_F",
								"O_LSV_02_unarmed_F","O_Truck_03_ammo_F","O_Truck_03_device_F","O_Truck_03_fuel_F","O_Truck_03_medical_F",
								"O_Truck_03_repair_F","O_Truck_03_transport_F","CUP_O_UAZ_Unarmed_CSAT"	];
					_unit = _unitType call BIS_fnc_selectRandom;
					[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
					{
						GW_TrainingGround_spawnedOPFOR pushBack _x;
					} foreach units _group;
					sleep 30;
				};
			};
			case 3:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["B_MRAP_01_hmg_F", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				for "_i" from 1 to 5 do
				{
					_group = createGroup east;
					_loc = selectRandom _vehTgts;
					_locArray = [_loc];
					_vehTgts = _vehTgts - _locArray;
					_unitType = ["O_APC_Tracked_02_cannon_F","CUP_O_BMP1_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP2_CSAT",
								"CUP_O_BRDM2_CSAT","CUP_O_BTR60_CSAT","O_APC_Wheeled_02_rcws_F","O_Truck_02_Ammo_F","O_Truck_02_fuel_F",
								"O_Truck_02_medical_F","O_Truck_02_box_F","O_Truck_02_transport_F","O_Truck_02_covered_F","O_MRAP_02_F",
								"O_LSV_02_unarmed_F","O_Truck_03_ammo_F","O_Truck_03_device_F","O_Truck_03_fuel_F","O_Truck_03_medical_F",
								"O_Truck_03_repair_F","O_Truck_03_transport_F","CUP_O_UAZ_Unarmed_CSAT"	];
					_unit = _unitType call BIS_fnc_selectRandom;
					[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
					{
						GW_TrainingGround_spawnedOPFOR pushBack _x;
					} foreach units _group;
					sleep 30;
				};
			};
			case 4:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["B_MRAP_01_gmg_F", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				for "_i" from 1 to 5 do
				{
					_group = createGroup east;
					_loc = selectRandom _vehTgts;
					_locArray = [_loc];
					_vehTgts = _vehTgts - _locArray;
					_unitType = ["O_APC_Tracked_02_cannon_F","CUP_O_BMP1_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP2_CSAT",
								"CUP_O_BRDM2_CSAT","CUP_O_BTR60_CSAT","O_APC_Wheeled_02_rcws_F","O_Truck_02_Ammo_F","O_Truck_02_fuel_F",
								"O_Truck_02_medical_F","O_Truck_02_box_F","O_Truck_02_transport_F","O_Truck_02_covered_F","O_MRAP_02_F",
								"O_LSV_02_unarmed_F","O_Truck_03_ammo_F","O_Truck_03_device_F","O_Truck_03_fuel_F","O_Truck_03_medical_F",
								"O_Truck_03_repair_F","O_Truck_03_transport_F","CUP_O_UAZ_Unarmed_CSAT"	];
					_unit = _unitType call BIS_fnc_selectRandom;
					[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
					{
						GW_TrainingGround_spawnedOPFOR pushBack _x;
					} foreach units _group;
					sleep 30;
				};
			};
			case 5:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["B_LSV_01_armed_F", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				for "_i" from 1 to 5 do
				{
					_group = createGroup east;
					_loc = selectRandom _vehTgts;
					_locArray = [_loc];
					_vehTgts = _vehTgts - _locArray;
					_unitType = ["O_APC_Tracked_02_cannon_F","CUP_O_BMP1_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP2_CSAT",
								"CUP_O_BRDM2_CSAT","CUP_O_BTR60_CSAT","O_APC_Wheeled_02_rcws_F","O_Truck_02_Ammo_F","O_Truck_02_fuel_F",
								"O_Truck_02_medical_F","O_Truck_02_box_F","O_Truck_02_transport_F","O_Truck_02_covered_F","O_MRAP_02_F",
								"O_LSV_02_unarmed_F","O_Truck_03_ammo_F","O_Truck_03_device_F","O_Truck_03_fuel_F","O_Truck_03_medical_F",
								"O_Truck_03_repair_F","O_Truck_03_transport_F","CUP_O_UAZ_Unarmed_CSAT"	];
					_unit = _unitType call BIS_fnc_selectRandom;
					[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
					{
						GW_TrainingGround_spawnedOPFOR pushBack _x;
					} foreach units _group;
					sleep 30;
				};
			};
			case 6:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_B_Challenger2_NATO", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				for "_i" from 1 to 5 do
				{
					_group = createGroup east;
					_loc = selectRandom _vehTgts;
					_locArray = [_loc];
					_vehTgts = _vehTgts - _locArray;
					_unitType = ["O_APC_Tracked_02_cannon_F","CUP_O_BMP1_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP2_CSAT",
								"CUP_O_BRDM2_CSAT","CUP_O_BTR60_CSAT","O_APC_Wheeled_02_rcws_F","O_Truck_02_Ammo_F","O_Truck_02_fuel_F",
								"O_Truck_02_medical_F","O_Truck_02_box_F","O_Truck_02_transport_F","O_Truck_02_covered_F","O_MRAP_02_F",
								"O_LSV_02_unarmed_F","O_Truck_03_ammo_F","O_Truck_03_device_F","O_Truck_03_fuel_F","O_Truck_03_medical_F",
								"O_Truck_03_repair_F","O_Truck_03_transport_F","CUP_O_UAZ_Unarmed_CSAT"	];
					_unit = _unitType call BIS_fnc_selectRandom;
					[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
					{
						GW_TrainingGround_spawnedOPFOR pushBack _x;
					} foreach units _group;
					sleep 30;
				};
			};
			case 7:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["B_MBT_01_TUSK_F", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				for "_i" from 1 to 5 do
				{
					_group = createGroup east;
					_loc = selectRandom _vehTgts;
					_locArray = [_loc];
					_vehTgts = _vehTgts - _locArray;
					_unitType = ["O_APC_Tracked_02_cannon_F","CUP_O_BMP1_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP2_CSAT",
								"CUP_O_BRDM2_CSAT","CUP_O_BTR60_CSAT","O_APC_Wheeled_02_rcws_F","O_Truck_02_Ammo_F","O_Truck_02_fuel_F",
								"O_Truck_02_medical_F","O_Truck_02_box_F","O_Truck_02_transport_F","O_Truck_02_covered_F","O_MRAP_02_F",
								"O_LSV_02_unarmed_F","O_Truck_03_ammo_F","O_Truck_03_device_F","O_Truck_03_fuel_F","O_Truck_03_medical_F",
								"O_Truck_03_repair_F","O_Truck_03_transport_F","CUP_O_UAZ_Unarmed_CSAT"	];
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
				hint "CODE FAIL. vehicleDrivingCourse.sqf Callsign/Exercise Switch";
			};
		};
	};
	case "NATOW":
	{
		switch (_exerciseID) do
		{
			case 0:
			{};
			case 1:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["B_T_APC_Wheeled_01_cannon_F", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				for "_i" from 1 to 5 do
				{
					_group = createGroup east;
					_loc = selectRandom _vehTgts;
					_locArray = [_loc];
					_vehTgts = _vehTgts - _locArray;
					_unitType = ["O_APC_Tracked_02_cannon_F","CUP_O_BMP1_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP2_CSAT",
								"CUP_O_BRDM2_CSAT","CUP_O_BTR60_CSAT","O_APC_Wheeled_02_rcws_F","O_Truck_02_Ammo_F","O_Truck_02_fuel_F",
								"O_Truck_02_medical_F","O_Truck_02_box_F","O_Truck_02_transport_F","O_Truck_02_covered_F","O_MRAP_02_F",
								"O_LSV_02_unarmed_F","O_Truck_03_ammo_F","O_Truck_03_device_F","O_Truck_03_fuel_F","O_Truck_03_medical_F",
								"O_Truck_03_repair_F","O_Truck_03_transport_F","CUP_O_UAZ_Unarmed_CSAT"	];
					_unit = _unitType call BIS_fnc_selectRandom;
					[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
					{
						GW_TrainingGround_spawnedOPFOR pushBack _x;
					} foreach units _group;
					sleep 30;
				};
			};
			case 2:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["B_T_APC_Tracked_01_rcws_F", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				for "_i" from 1 to 5 do
				{
					_group = createGroup east;
					_loc = selectRandom _vehTgts;
					_locArray = [_loc];
					_vehTgts = _vehTgts - _locArray;
					_unitType = ["O_APC_Tracked_02_cannon_F","CUP_O_BMP1_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP2_CSAT",
								"CUP_O_BRDM2_CSAT","CUP_O_BTR60_CSAT","O_APC_Wheeled_02_rcws_F","O_Truck_02_Ammo_F","O_Truck_02_fuel_F",
								"O_Truck_02_medical_F","O_Truck_02_box_F","O_Truck_02_transport_F","O_Truck_02_covered_F","O_MRAP_02_F",
								"O_LSV_02_unarmed_F","O_Truck_03_ammo_F","O_Truck_03_device_F","O_Truck_03_fuel_F","O_Truck_03_medical_F",
								"O_Truck_03_repair_F","O_Truck_03_transport_F","CUP_O_UAZ_Unarmed_CSAT"	];
					_unit = _unitType call BIS_fnc_selectRandom;
					[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
					{
						GW_TrainingGround_spawnedOPFOR pushBack _x;
					} foreach units _group;
					sleep 30;
				};
			};
			case 3:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["B_T_MRAP_01_hmg_F", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				for "_i" from 1 to 5 do
				{
					_group = createGroup east;
					_loc = selectRandom _vehTgts;
					_locArray = [_loc];
					_vehTgts = _vehTgts - _locArray;
					_unitType = ["O_APC_Tracked_02_cannon_F","CUP_O_BMP1_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP2_CSAT",
								"CUP_O_BRDM2_CSAT","CUP_O_BTR60_CSAT","O_APC_Wheeled_02_rcws_F","O_Truck_02_Ammo_F","O_Truck_02_fuel_F",
								"O_Truck_02_medical_F","O_Truck_02_box_F","O_Truck_02_transport_F","O_Truck_02_covered_F","O_MRAP_02_F",
								"O_LSV_02_unarmed_F","O_Truck_03_ammo_F","O_Truck_03_device_F","O_Truck_03_fuel_F","O_Truck_03_medical_F",
								"O_Truck_03_repair_F","O_Truck_03_transport_F","CUP_O_UAZ_Unarmed_CSAT"	];
					_unit = _unitType call BIS_fnc_selectRandom;
					[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
					{
						GW_TrainingGround_spawnedOPFOR pushBack _x;
					} foreach units _group;
					sleep 30;
				};
			};
			case 4:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["B_T_MRAP_01_gmg_F", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				for "_i" from 1 to 5 do
				{
					_group = createGroup east;
					_loc = selectRandom _vehTgts;
					_locArray = [_loc];
					_vehTgts = _vehTgts - _locArray;
					_unitType = ["O_APC_Tracked_02_cannon_F","CUP_O_BMP1_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP2_CSAT",
								"CUP_O_BRDM2_CSAT","CUP_O_BTR60_CSAT","O_APC_Wheeled_02_rcws_F","O_Truck_02_Ammo_F","O_Truck_02_fuel_F",
								"O_Truck_02_medical_F","O_Truck_02_box_F","O_Truck_02_transport_F","O_Truck_02_covered_F","O_MRAP_02_F",
								"O_LSV_02_unarmed_F","O_Truck_03_ammo_F","O_Truck_03_device_F","O_Truck_03_fuel_F","O_Truck_03_medical_F",
								"O_Truck_03_repair_F","O_Truck_03_transport_F","CUP_O_UAZ_Unarmed_CSAT"	];
					_unit = _unitType call BIS_fnc_selectRandom;
					[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
					{
						GW_TrainingGround_spawnedOPFOR pushBack _x;
					} foreach units _group;
					sleep 30;
				};
			};
			case 5:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["B_LSV_01_armed_F", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				for "_i" from 1 to 5 do
				{
					_group = createGroup east;
					_loc = selectRandom _vehTgts;
					_locArray = [_loc];
					_vehTgts = _vehTgts - _locArray;
					_unitType = ["O_APC_Tracked_02_cannon_F","CUP_O_BMP1_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP2_CSAT",
								"CUP_O_BRDM2_CSAT","CUP_O_BTR60_CSAT","O_APC_Wheeled_02_rcws_F","O_Truck_02_Ammo_F","O_Truck_02_fuel_F",
								"O_Truck_02_medical_F","O_Truck_02_box_F","O_Truck_02_transport_F","O_Truck_02_covered_F","O_MRAP_02_F",
								"O_LSV_02_unarmed_F","O_Truck_03_ammo_F","O_Truck_03_device_F","O_Truck_03_fuel_F","O_Truck_03_medical_F",
								"O_Truck_03_repair_F","O_Truck_03_transport_F","CUP_O_UAZ_Unarmed_CSAT"	];
					_unit = _unitType call BIS_fnc_selectRandom;
					[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
					{
						GW_TrainingGround_spawnedOPFOR pushBack _x;
					} foreach units _group;
					sleep 30;
				};
			};
			case 6:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_B_M1A1_NATO_T", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				for "_i" from 1 to 5 do
				{
					_group = createGroup east;
					_loc = selectRandom _vehTgts;
					_locArray = [_loc];
					_vehTgts = _vehTgts - _locArray;
					_unitType = ["O_APC_Tracked_02_cannon_F","CUP_O_BMP1_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP2_CSAT",
								"CUP_O_BRDM2_CSAT","CUP_O_BTR60_CSAT","O_APC_Wheeled_02_rcws_F","O_Truck_02_Ammo_F","O_Truck_02_fuel_F",
								"O_Truck_02_medical_F","O_Truck_02_box_F","O_Truck_02_transport_F","O_Truck_02_covered_F","O_MRAP_02_F",
								"O_LSV_02_unarmed_F","O_Truck_03_ammo_F","O_Truck_03_device_F","O_Truck_03_fuel_F","O_Truck_03_medical_F",
								"O_Truck_03_repair_F","O_Truck_03_transport_F","CUP_O_UAZ_Unarmed_CSAT"	];
					_unit = _unitType call BIS_fnc_selectRandom;
					[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
					{
						GW_TrainingGround_spawnedOPFOR pushBack _x;
					} foreach units _group;
					sleep 30;
				};
			};
			case 7:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["B_T_MBT_01_TUSK_F", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				for "_i" from 1 to 5 do
				{
					_group = createGroup east;
					_loc = selectRandom _vehTgts;
					_locArray = [_loc];
					_vehTgts = _vehTgts - _locArray;
					_unitType = ["O_APC_Tracked_02_cannon_F","CUP_O_BMP1_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP2_CSAT",
								"CUP_O_BRDM2_CSAT","CUP_O_BTR60_CSAT","O_APC_Wheeled_02_rcws_F","O_Truck_02_Ammo_F","O_Truck_02_fuel_F",
								"O_Truck_02_medical_F","O_Truck_02_box_F","O_Truck_02_transport_F","O_Truck_02_covered_F","O_MRAP_02_F",
								"O_LSV_02_unarmed_F","O_Truck_03_ammo_F","O_Truck_03_device_F","O_Truck_03_fuel_F","O_Truck_03_medical_F",
								"O_Truck_03_repair_F","O_Truck_03_transport_F","CUP_O_UAZ_Unarmed_CSAT"	];
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
				hint "CODE FAIL. vehicleDrivingCourse.sqf Callsign/Exercise Switch";
			};
		};
	};
	case "BAFD":
	{
		switch (_exerciseID) do
		{
			case 0:
			{};
			case 1:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_B_FV432_Bulldog_GB_D_RWS", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				for "_i" from 1 to 5 do
				{
					_group = createGroup east;
					_loc = selectRandom _vehTgts;
					_locArray = [_loc];
					_vehTgts = _vehTgts - _locArray;
					_unitType = ["O_APC_Tracked_02_cannon_F","CUP_O_BMP1_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP2_CSAT",
								"CUP_O_BRDM2_CSAT","CUP_O_BTR60_CSAT","O_APC_Wheeled_02_rcws_F","O_Truck_02_Ammo_F","O_Truck_02_fuel_F",
								"O_Truck_02_medical_F","O_Truck_02_box_F","O_Truck_02_transport_F","O_Truck_02_covered_F","O_MRAP_02_F",
								"O_LSV_02_unarmed_F","O_Truck_03_ammo_F","O_Truck_03_device_F","O_Truck_03_fuel_F","O_Truck_03_medical_F",
								"O_Truck_03_repair_F","O_Truck_03_transport_F","CUP_O_UAZ_Unarmed_CSAT"	];
					_unit = _unitType call BIS_fnc_selectRandom;
					[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
					{
						GW_TrainingGround_spawnedOPFOR pushBack _x;
					} foreach units _group;
					sleep 30;
				};
			};
			case 2:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_B_MCV80_GB_D", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				for "_i" from 1 to 5 do
				{
					_group = createGroup east;
					_loc = selectRandom _vehTgts;
					_locArray = [_loc];
					_vehTgts = _vehTgts - _locArray;
					_unitType = ["O_APC_Tracked_02_cannon_F","CUP_O_BMP1_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP2_CSAT",
								"CUP_O_BRDM2_CSAT","CUP_O_BTR60_CSAT","O_APC_Wheeled_02_rcws_F","O_Truck_02_Ammo_F","O_Truck_02_fuel_F",
								"O_Truck_02_medical_F","O_Truck_02_box_F","O_Truck_02_transport_F","O_Truck_02_covered_F","O_MRAP_02_F",
								"O_LSV_02_unarmed_F","O_Truck_03_ammo_F","O_Truck_03_device_F","O_Truck_03_fuel_F","O_Truck_03_medical_F",
								"O_Truck_03_repair_F","O_Truck_03_transport_F","CUP_O_UAZ_Unarmed_CSAT"	];
					_unit = _unitType call BIS_fnc_selectRandom;
					[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
					{
						GW_TrainingGround_spawnedOPFOR pushBack _x;
					} foreach units _group;
					sleep 30;
				};
			};
			case 3:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_B_BAF_Coyote_L2A1_D", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				for "_i" from 1 to 5 do
				{
					_group = createGroup east;
					_loc = selectRandom _vehTgts;
					_locArray = [_loc];
					_vehTgts = _vehTgts - _locArray;
					_unitType = ["O_APC_Tracked_02_cannon_F","CUP_O_BMP1_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP2_CSAT",
								"CUP_O_BRDM2_CSAT","CUP_O_BTR60_CSAT","O_APC_Wheeled_02_rcws_F","O_Truck_02_Ammo_F","O_Truck_02_fuel_F",
								"O_Truck_02_medical_F","O_Truck_02_box_F","O_Truck_02_transport_F","O_Truck_02_covered_F","O_MRAP_02_F",
								"O_LSV_02_unarmed_F","O_Truck_03_ammo_F","O_Truck_03_device_F","O_Truck_03_fuel_F","O_Truck_03_medical_F",
								"O_Truck_03_repair_F","O_Truck_03_transport_F","CUP_O_UAZ_Unarmed_CSAT"	];
					_unit = _unitType call BIS_fnc_selectRandom;
					[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
					{
						GW_TrainingGround_spawnedOPFOR pushBack _x;
					} foreach units _group;
					sleep 30;
				};
			};
			case 4:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_B_BAF_Coyote_GMG_D", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				for "_i" from 1 to 5 do
				{
					_group = createGroup east;
					_loc = selectRandom _vehTgts;
					_locArray = [_loc];
					_vehTgts = _vehTgts - _locArray;
					_unitType = ["O_APC_Tracked_02_cannon_F","CUP_O_BMP1_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP2_CSAT",
								"CUP_O_BRDM2_CSAT","CUP_O_BTR60_CSAT","O_APC_Wheeled_02_rcws_F","O_Truck_02_Ammo_F","O_Truck_02_fuel_F",
								"O_Truck_02_medical_F","O_Truck_02_box_F","O_Truck_02_transport_F","O_Truck_02_covered_F","O_MRAP_02_F",
								"O_LSV_02_unarmed_F","O_Truck_03_ammo_F","O_Truck_03_device_F","O_Truck_03_fuel_F","O_Truck_03_medical_F",
								"O_Truck_03_repair_F","O_Truck_03_transport_F","CUP_O_UAZ_Unarmed_CSAT"	];
					_unit = _unitType call BIS_fnc_selectRandom;
					[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
					{
						GW_TrainingGround_spawnedOPFOR pushBack _x;
					} foreach units _group;
					sleep 30;
				};
			};
			case 5:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_B_Jackal2_L2A1_GB_D", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				for "_i" from 1 to 5 do
				{
					_group = createGroup east;
					_loc = selectRandom _vehTgts;
					_locArray = [_loc];
					_vehTgts = _vehTgts - _locArray;
					_unitType = ["O_APC_Tracked_02_cannon_F","CUP_O_BMP1_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP2_CSAT",
								"CUP_O_BRDM2_CSAT","CUP_O_BTR60_CSAT","O_APC_Wheeled_02_rcws_F","O_Truck_02_Ammo_F","O_Truck_02_fuel_F",
								"O_Truck_02_medical_F","O_Truck_02_box_F","O_Truck_02_transport_F","O_Truck_02_covered_F","O_MRAP_02_F",
								"O_LSV_02_unarmed_F","O_Truck_03_ammo_F","O_Truck_03_device_F","O_Truck_03_fuel_F","O_Truck_03_medical_F",
								"O_Truck_03_repair_F","O_Truck_03_transport_F","CUP_O_UAZ_Unarmed_CSAT"	];
					_unit = _unitType call BIS_fnc_selectRandom;
					[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
					{
						GW_TrainingGround_spawnedOPFOR pushBack _x;
					} foreach units _group;
					sleep 30;
				};
			};
			case 6:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_B_Jackal2_GMG_GB_D", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				for "_i" from 1 to 5 do
				{
					_group = createGroup east;
					_loc = selectRandom _vehTgts;
					_locArray = [_loc];
					_vehTgts = _vehTgts - _locArray;
					_unitType = ["O_APC_Tracked_02_cannon_F","CUP_O_BMP1_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP2_CSAT",
								"CUP_O_BRDM2_CSAT","CUP_O_BTR60_CSAT","O_APC_Wheeled_02_rcws_F","O_Truck_02_Ammo_F","O_Truck_02_fuel_F",
								"O_Truck_02_medical_F","O_Truck_02_box_F","O_Truck_02_transport_F","O_Truck_02_covered_F","O_MRAP_02_F",
								"O_LSV_02_unarmed_F","O_Truck_03_ammo_F","O_Truck_03_device_F","O_Truck_03_fuel_F","O_Truck_03_medical_F",
								"O_Truck_03_repair_F","O_Truck_03_transport_F","CUP_O_UAZ_Unarmed_CSAT"	];
					_unit = _unitType call BIS_fnc_selectRandom;
					[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
					{
						GW_TrainingGround_spawnedOPFOR pushBack _x;
					} foreach units _group;
					sleep 30;
				};
			};
			case 7:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_B_LR_Special_M2_GB_D", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				for "_i" from 1 to 5 do
				{
					_group = createGroup east;
					_loc = selectRandom _vehTgts;
					_locArray = [_loc];
					_vehTgts = _vehTgts - _locArray;
					_unitType = ["O_APC_Tracked_02_cannon_F","CUP_O_BMP1_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP2_CSAT",
								"CUP_O_BRDM2_CSAT","CUP_O_BTR60_CSAT","O_APC_Wheeled_02_rcws_F","O_Truck_02_Ammo_F","O_Truck_02_fuel_F",
								"O_Truck_02_medical_F","O_Truck_02_box_F","O_Truck_02_transport_F","O_Truck_02_covered_F","O_MRAP_02_F",
								"O_LSV_02_unarmed_F","O_Truck_03_ammo_F","O_Truck_03_device_F","O_Truck_03_fuel_F","O_Truck_03_medical_F",
								"O_Truck_03_repair_F","O_Truck_03_transport_F","CUP_O_UAZ_Unarmed_CSAT"	];
					_unit = _unitType call BIS_fnc_selectRandom;
					[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
					{
						GW_TrainingGround_spawnedOPFOR pushBack _x;
					} foreach units _group;
					sleep 30;
				};
			};
			case 8:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_B_LR_Special_GMG_GB_D", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				for "_i" from 1 to 5 do
				{
					_group = createGroup east;
					_loc = selectRandom _vehTgts;
					_locArray = [_loc];
					_vehTgts = _vehTgts - _locArray;
					_unitType = ["O_APC_Tracked_02_cannon_F","CUP_O_BMP1_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP2_CSAT",
								"CUP_O_BRDM2_CSAT","CUP_O_BTR60_CSAT","O_APC_Wheeled_02_rcws_F","O_Truck_02_Ammo_F","O_Truck_02_fuel_F",
								"O_Truck_02_medical_F","O_Truck_02_box_F","O_Truck_02_transport_F","O_Truck_02_covered_F","O_MRAP_02_F",
								"O_LSV_02_unarmed_F","O_Truck_03_ammo_F","O_Truck_03_device_F","O_Truck_03_fuel_F","O_Truck_03_medical_F",
								"O_Truck_03_repair_F","O_Truck_03_transport_F","CUP_O_UAZ_Unarmed_CSAT"	];
					_unit = _unitType call BIS_fnc_selectRandom;
					[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
					{
						GW_TrainingGround_spawnedOPFOR pushBack _x;
					} foreach units _group;
					sleep 30;
				};
			};
			case 9:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_B_Mastiff_HMG_GB_D", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				for "_i" from 1 to 5 do
				{
					_group = createGroup east;
					_loc = selectRandom _vehTgts;
					_locArray = [_loc];
					_vehTgts = _vehTgts - _locArray;
					_unitType = ["O_APC_Tracked_02_cannon_F","CUP_O_BMP1_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP2_CSAT",
								"CUP_O_BRDM2_CSAT","CUP_O_BTR60_CSAT","O_APC_Wheeled_02_rcws_F","O_Truck_02_Ammo_F","O_Truck_02_fuel_F",
								"O_Truck_02_medical_F","O_Truck_02_box_F","O_Truck_02_transport_F","O_Truck_02_covered_F","O_MRAP_02_F",
								"O_LSV_02_unarmed_F","O_Truck_03_ammo_F","O_Truck_03_device_F","O_Truck_03_fuel_F","O_Truck_03_medical_F",
								"O_Truck_03_repair_F","O_Truck_03_transport_F","CUP_O_UAZ_Unarmed_CSAT"	];
					_unit = _unitType call BIS_fnc_selectRandom;
					[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
					{
						GW_TrainingGround_spawnedOPFOR pushBack _x;
					} foreach units _group;
					sleep 30;
				};
			};
			case 10:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_B_Mastiff_GMG_GB_D", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				for "_i" from 1 to 5 do
				{
					_group = createGroup east;
					_loc = selectRandom _vehTgts;
					_locArray = [_loc];
					_vehTgts = _vehTgts - _locArray;
					_unitType = ["O_APC_Tracked_02_cannon_F","CUP_O_BMP1_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP2_CSAT",
								"CUP_O_BRDM2_CSAT","CUP_O_BTR60_CSAT","O_APC_Wheeled_02_rcws_F","O_Truck_02_Ammo_F","O_Truck_02_fuel_F",
								"O_Truck_02_medical_F","O_Truck_02_box_F","O_Truck_02_transport_F","O_Truck_02_covered_F","O_MRAP_02_F",
								"O_LSV_02_unarmed_F","O_Truck_03_ammo_F","O_Truck_03_device_F","O_Truck_03_fuel_F","O_Truck_03_medical_F",
								"O_Truck_03_repair_F","O_Truck_03_transport_F","CUP_O_UAZ_Unarmed_CSAT"	];
					_unit = _unitType call BIS_fnc_selectRandom;
					[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
					{
						GW_TrainingGround_spawnedOPFOR pushBack _x;
					} foreach units _group;
					sleep 30;
				};
			};
			case 11:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_B_Ridgback_HMG_GB_D", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				for "_i" from 1 to 5 do
				{
					_group = createGroup east;
					_loc = selectRandom _vehTgts;
					_locArray = [_loc];
					_vehTgts = _vehTgts - _locArray;
					_unitType = ["O_APC_Tracked_02_cannon_F","CUP_O_BMP1_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP2_CSAT",
								"CUP_O_BRDM2_CSAT","CUP_O_BTR60_CSAT","O_APC_Wheeled_02_rcws_F","O_Truck_02_Ammo_F","O_Truck_02_fuel_F",
								"O_Truck_02_medical_F","O_Truck_02_box_F","O_Truck_02_transport_F","O_Truck_02_covered_F","O_MRAP_02_F",
								"O_LSV_02_unarmed_F","O_Truck_03_ammo_F","O_Truck_03_device_F","O_Truck_03_fuel_F","O_Truck_03_medical_F",
								"O_Truck_03_repair_F","O_Truck_03_transport_F","CUP_O_UAZ_Unarmed_CSAT"	];
					_unit = _unitType call BIS_fnc_selectRandom;
					[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
					{
						GW_TrainingGround_spawnedOPFOR pushBack _x;
					} foreach units _group;
					sleep 30;
				};
			};
			case 12:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_B_Ridgback_GMG_GB_D", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				for "_i" from 1 to 5 do
				{
					_group = createGroup east;
					_loc = selectRandom _vehTgts;
					_locArray = [_loc];
					_vehTgts = _vehTgts - _locArray;
					_unitType = ["O_APC_Tracked_02_cannon_F","CUP_O_BMP1_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP2_CSAT",
								"CUP_O_BRDM2_CSAT","CUP_O_BTR60_CSAT","O_APC_Wheeled_02_rcws_F","O_Truck_02_Ammo_F","O_Truck_02_fuel_F",
								"O_Truck_02_medical_F","O_Truck_02_box_F","O_Truck_02_transport_F","O_Truck_02_covered_F","O_MRAP_02_F",
								"O_LSV_02_unarmed_F","O_Truck_03_ammo_F","O_Truck_03_device_F","O_Truck_03_fuel_F","O_Truck_03_medical_F",
								"O_Truck_03_repair_F","O_Truck_03_transport_F","CUP_O_UAZ_Unarmed_CSAT"	];
					_unit = _unitType call BIS_fnc_selectRandom;
					[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
					{
						GW_TrainingGround_spawnedOPFOR pushBack _x;
					} foreach units _group;
					sleep 30;
				};
			};
			case 13:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_B_Wolfhound_HMG_GB_D", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				for "_i" from 1 to 5 do
				{
					_group = createGroup east;
					_loc = selectRandom _vehTgts;
					_locArray = [_loc];
					_vehTgts = _vehTgts - _locArray;
					_unitType = ["O_APC_Tracked_02_cannon_F","CUP_O_BMP1_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP2_CSAT",
								"CUP_O_BRDM2_CSAT","CUP_O_BTR60_CSAT","O_APC_Wheeled_02_rcws_F","O_Truck_02_Ammo_F","O_Truck_02_fuel_F",
								"O_Truck_02_medical_F","O_Truck_02_box_F","O_Truck_02_transport_F","O_Truck_02_covered_F","O_MRAP_02_F",
								"O_LSV_02_unarmed_F","O_Truck_03_ammo_F","O_Truck_03_device_F","O_Truck_03_fuel_F","O_Truck_03_medical_F",
								"O_Truck_03_repair_F","O_Truck_03_transport_F","CUP_O_UAZ_Unarmed_CSAT"	];
					_unit = _unitType call BIS_fnc_selectRandom;
					[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
					{
						GW_TrainingGround_spawnedOPFOR pushBack _x;
					} foreach units _group;
					sleep 30;
				};
			};
			case 14:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_B_Wolfhound_GMG_GB_D", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				for "_i" from 1 to 5 do
				{
					_group = createGroup east;
					_loc = selectRandom _vehTgts;
					_locArray = [_loc];
					_vehTgts = _vehTgts - _locArray;
					_unitType = ["O_APC_Tracked_02_cannon_F","CUP_O_BMP1_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP2_CSAT",
								"CUP_O_BRDM2_CSAT","CUP_O_BTR60_CSAT","O_APC_Wheeled_02_rcws_F","O_Truck_02_Ammo_F","O_Truck_02_fuel_F",
								"O_Truck_02_medical_F","O_Truck_02_box_F","O_Truck_02_transport_F","O_Truck_02_covered_F","O_MRAP_02_F",
								"O_LSV_02_unarmed_F","O_Truck_03_ammo_F","O_Truck_03_device_F","O_Truck_03_fuel_F","O_Truck_03_medical_F",
								"O_Truck_03_repair_F","O_Truck_03_transport_F","CUP_O_UAZ_Unarmed_CSAT"	];
					_unit = _unitType call BIS_fnc_selectRandom;
					[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
					{
						GW_TrainingGround_spawnedOPFOR pushBack _x;
					} foreach units _group;
					sleep 30;
				};
			};
			case 15:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_B_Challenger2_Desert_BAF", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				for "_i" from 1 to 5 do
				{
					_group = createGroup east;
					_loc = selectRandom _vehTgts;
					_locArray = [_loc];
					_vehTgts = _vehTgts - _locArray;
					_unitType = ["O_APC_Tracked_02_cannon_F","CUP_O_BMP1_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP2_CSAT",
								"CUP_O_BRDM2_CSAT","CUP_O_BTR60_CSAT","O_APC_Wheeled_02_rcws_F","O_Truck_02_Ammo_F","O_Truck_02_fuel_F",
								"O_Truck_02_medical_F","O_Truck_02_box_F","O_Truck_02_transport_F","O_Truck_02_covered_F","O_MRAP_02_F",
								"O_LSV_02_unarmed_F","O_Truck_03_ammo_F","O_Truck_03_device_F","O_Truck_03_fuel_F","O_Truck_03_medical_F",
								"O_Truck_03_repair_F","O_Truck_03_transport_F","CUP_O_UAZ_Unarmed_CSAT"	];
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
				hint "CODE FAIL. vehicleDrivingCourse.sqf Callsign/Exercise Switch";
			};
		};
	};
	case "USMCD":
	{
		switch (_exerciseID) do
		{
			case 0:
			{};
			case 1:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_B_AAV_USMC", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				for "_i" from 1 to 5 do
				{
					_group = createGroup east;
					_loc = selectRandom _vehTgts;
					_locArray = [_loc];
					_vehTgts = _vehTgts - _locArray;
					_unitType = ["O_APC_Tracked_02_cannon_F","CUP_O_BMP1_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP2_CSAT",
								"CUP_O_BRDM2_CSAT","CUP_O_BTR60_CSAT","O_APC_Wheeled_02_rcws_F","O_Truck_02_Ammo_F","O_Truck_02_fuel_F",
								"O_Truck_02_medical_F","O_Truck_02_box_F","O_Truck_02_transport_F","O_Truck_02_covered_F","O_MRAP_02_F",
								"O_LSV_02_unarmed_F","O_Truck_03_ammo_F","O_Truck_03_device_F","O_Truck_03_fuel_F","O_Truck_03_medical_F",
								"O_Truck_03_repair_F","O_Truck_03_transport_F","CUP_O_UAZ_Unarmed_CSAT"	];
					_unit = _unitType call BIS_fnc_selectRandom;
					[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
					{
						GW_TrainingGround_spawnedOPFOR pushBack _x;
					} foreach units _group;
					sleep 30;
				};
			};
			case 2:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_B_LAV25M240_desert_USMC", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				for "_i" from 1 to 5 do
				{
					_group = createGroup east;
					_loc = selectRandom _vehTgts;
					_locArray = [_loc];
					_vehTgts = _vehTgts - _locArray;
					_unitType = ["O_APC_Tracked_02_cannon_F","CUP_O_BMP1_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP2_CSAT",
								"CUP_O_BRDM2_CSAT","CUP_O_BTR60_CSAT","O_APC_Wheeled_02_rcws_F","O_Truck_02_Ammo_F","O_Truck_02_fuel_F",
								"O_Truck_02_medical_F","O_Truck_02_box_F","O_Truck_02_transport_F","O_Truck_02_covered_F","O_MRAP_02_F",
								"O_LSV_02_unarmed_F","O_Truck_03_ammo_F","O_Truck_03_device_F","O_Truck_03_fuel_F","O_Truck_03_medical_F",
								"O_Truck_03_repair_F","O_Truck_03_transport_F","CUP_O_UAZ_Unarmed_CSAT"	];
					_unit = _unitType call BIS_fnc_selectRandom;
					[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
					{
						GW_TrainingGround_spawnedOPFOR pushBack _x;
					} foreach units _group;
					sleep 30;
				};
			};
			case 3:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_B_HMMWV_M2_USMC", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				for "_i" from 1 to 5 do
				{
					_group = createGroup east;
					_loc = selectRandom _vehTgts;
					_locArray = [_loc];
					_vehTgts = _vehTgts - _locArray;
					_unitType = ["O_APC_Tracked_02_cannon_F","CUP_O_BMP1_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP2_CSAT",
								"CUP_O_BRDM2_CSAT","CUP_O_BTR60_CSAT","O_APC_Wheeled_02_rcws_F","O_Truck_02_Ammo_F","O_Truck_02_fuel_F",
								"O_Truck_02_medical_F","O_Truck_02_box_F","O_Truck_02_transport_F","O_Truck_02_covered_F","O_MRAP_02_F",
								"O_LSV_02_unarmed_F","O_Truck_03_ammo_F","O_Truck_03_device_F","O_Truck_03_fuel_F","O_Truck_03_medical_F",
								"O_Truck_03_repair_F","O_Truck_03_transport_F","CUP_O_UAZ_Unarmed_CSAT"	];
					_unit = _unitType call BIS_fnc_selectRandom;
					[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
					{
						GW_TrainingGround_spawnedOPFOR pushBack _x;
					} foreach units _group;
					sleep 30;
				};
			};
			case 4:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_B_RG31_M2_OD_USMC", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				for "_i" from 1 to 5 do
				{
					_group = createGroup east;
					_loc = selectRandom _vehTgts;
					_locArray = [_loc];
					_vehTgts = _vehTgts - _locArray;
					_unitType = ["O_APC_Tracked_02_cannon_F","CUP_O_BMP1_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP2_CSAT",
								"CUP_O_BRDM2_CSAT","CUP_O_BTR60_CSAT","O_APC_Wheeled_02_rcws_F","O_Truck_02_Ammo_F","O_Truck_02_fuel_F",
								"O_Truck_02_medical_F","O_Truck_02_box_F","O_Truck_02_transport_F","O_Truck_02_covered_F","O_MRAP_02_F",
								"O_LSV_02_unarmed_F","O_Truck_03_ammo_F","O_Truck_03_device_F","O_Truck_03_fuel_F","O_Truck_03_medical_F",
								"O_Truck_03_repair_F","O_Truck_03_transport_F","CUP_O_UAZ_Unarmed_CSAT"	];
					_unit = _unitType call BIS_fnc_selectRandom;
					[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
					{
						GW_TrainingGround_spawnedOPFOR pushBack _x;
					} foreach units _group;
					sleep 30;
				};
			};
			case 5:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_B_M1A2_TUSK_MG_DES_USMC", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				for "_i" from 1 to 5 do
				{
					_group = createGroup east;
					_loc = selectRandom _vehTgts;
					_locArray = [_loc];
					_vehTgts = _vehTgts - _locArray;
					_unitType = ["O_APC_Tracked_02_cannon_F","CUP_O_BMP1_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP2_CSAT",
								"CUP_O_BRDM2_CSAT","CUP_O_BTR60_CSAT","O_APC_Wheeled_02_rcws_F","O_Truck_02_Ammo_F","O_Truck_02_fuel_F",
								"O_Truck_02_medical_F","O_Truck_02_box_F","O_Truck_02_transport_F","O_Truck_02_covered_F","O_MRAP_02_F",
								"O_LSV_02_unarmed_F","O_Truck_03_ammo_F","O_Truck_03_device_F","O_Truck_03_fuel_F","O_Truck_03_medical_F",
								"O_Truck_03_repair_F","O_Truck_03_transport_F","CUP_O_UAZ_Unarmed_CSAT"	];
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
				hint "CODE FAIL. vehicleDrivingCourse.sqf Callsign/Exercise Switch";
			};
		};
	};
	case "USMCW":
	{
		switch (_exerciseID) do
		{
			case 0:
			{};
			case 1:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_B_AAV_USMC", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				for "_i" from 1 to 5 do
				{
					_group = createGroup east;
					_loc = selectRandom _vehTgts;
					_locArray = [_loc];
					_vehTgts = _vehTgts - _locArray;
					_unitType = ["O_APC_Tracked_02_cannon_F","CUP_O_BMP1_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP2_CSAT",
								"CUP_O_BRDM2_CSAT","CUP_O_BTR60_CSAT","O_APC_Wheeled_02_rcws_F","O_Truck_02_Ammo_F","O_Truck_02_fuel_F",
								"O_Truck_02_medical_F","O_Truck_02_box_F","O_Truck_02_transport_F","O_Truck_02_covered_F","O_MRAP_02_F",
								"O_LSV_02_unarmed_F","O_Truck_03_ammo_F","O_Truck_03_device_F","O_Truck_03_fuel_F","O_Truck_03_medical_F",
								"O_Truck_03_repair_F","O_Truck_03_transport_F","CUP_O_UAZ_Unarmed_CSAT"	];
					_unit = _unitType call BIS_fnc_selectRandom;
					[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
					{
						GW_TrainingGround_spawnedOPFOR pushBack _x;
					} foreach units _group;
					sleep 30;
				};
			};
			case 2:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_B_LAV25M240_USMC", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				for "_i" from 1 to 5 do
				{
					_group = createGroup east;
					_loc = selectRandom _vehTgts;
					_locArray = [_loc];
					_vehTgts = _vehTgts - _locArray;
					_unitType = ["O_APC_Tracked_02_cannon_F","CUP_O_BMP1_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP2_CSAT",
								"CUP_O_BRDM2_CSAT","CUP_O_BTR60_CSAT","O_APC_Wheeled_02_rcws_F","O_Truck_02_Ammo_F","O_Truck_02_fuel_F",
								"O_Truck_02_medical_F","O_Truck_02_box_F","O_Truck_02_transport_F","O_Truck_02_covered_F","O_MRAP_02_F",
								"O_LSV_02_unarmed_F","O_Truck_03_ammo_F","O_Truck_03_device_F","O_Truck_03_fuel_F","O_Truck_03_medical_F",
								"O_Truck_03_repair_F","O_Truck_03_transport_F","CUP_O_UAZ_Unarmed_CSAT"	];
					_unit = _unitType call BIS_fnc_selectRandom;
					[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
					{
						GW_TrainingGround_spawnedOPFOR pushBack _x;
					} foreach units _group;
					sleep 30;
				};
			};
			case 3:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_B_HMMWV_M2_USMC", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				for "_i" from 1 to 5 do
				{
					_group = createGroup east;
					_loc = selectRandom _vehTgts;
					_locArray = [_loc];
					_vehTgts = _vehTgts - _locArray;
					_unitType = ["O_APC_Tracked_02_cannon_F","CUP_O_BMP1_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP2_CSAT",
								"CUP_O_BRDM2_CSAT","CUP_O_BTR60_CSAT","O_APC_Wheeled_02_rcws_F","O_Truck_02_Ammo_F","O_Truck_02_fuel_F",
								"O_Truck_02_medical_F","O_Truck_02_box_F","O_Truck_02_transport_F","O_Truck_02_covered_F","O_MRAP_02_F",
								"O_LSV_02_unarmed_F","O_Truck_03_ammo_F","O_Truck_03_device_F","O_Truck_03_fuel_F","O_Truck_03_medical_F",
								"O_Truck_03_repair_F","O_Truck_03_transport_F","CUP_O_UAZ_Unarmed_CSAT"	];
					_unit = _unitType call BIS_fnc_selectRandom;
					[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
					{
						GW_TrainingGround_spawnedOPFOR pushBack _x;
					} foreach units _group;
					sleep 30;
				};
			};
			case 4:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_B_RG31_M2_OD_USMC", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				for "_i" from 1 to 5 do
				{
					_group = createGroup east;
					_loc = selectRandom _vehTgts;
					_locArray = [_loc];
					_vehTgts = _vehTgts - _locArray;
					_unitType = ["O_APC_Tracked_02_cannon_F","CUP_O_BMP1_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP2_CSAT",
								"CUP_O_BRDM2_CSAT","CUP_O_BTR60_CSAT","O_APC_Wheeled_02_rcws_F","O_Truck_02_Ammo_F","O_Truck_02_fuel_F",
								"O_Truck_02_medical_F","O_Truck_02_box_F","O_Truck_02_transport_F","O_Truck_02_covered_F","O_MRAP_02_F",
								"O_LSV_02_unarmed_F","O_Truck_03_ammo_F","O_Truck_03_device_F","O_Truck_03_fuel_F","O_Truck_03_medical_F",
								"O_Truck_03_repair_F","O_Truck_03_transport_F","CUP_O_UAZ_Unarmed_CSAT"	];
					_unit = _unitType call BIS_fnc_selectRandom;
					[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
					{
						GW_TrainingGround_spawnedOPFOR pushBack _x;
					} foreach units _group;
					sleep 30;
				};
			};
			case 5:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_B_M1A1_Woodland_USMC", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				for "_i" from 1 to 5 do
				{
					_group = createGroup east;
					_loc = selectRandom _vehTgts;
					_locArray = [_loc];
					_vehTgts = _vehTgts - _locArray;
					_unitType = ["O_APC_Tracked_02_cannon_F","CUP_O_BMP1_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP2_CSAT",
								"CUP_O_BRDM2_CSAT","CUP_O_BTR60_CSAT","O_APC_Wheeled_02_rcws_F","O_Truck_02_Ammo_F","O_Truck_02_fuel_F",
								"O_Truck_02_medical_F","O_Truck_02_box_F","O_Truck_02_transport_F","O_Truck_02_covered_F","O_MRAP_02_F",
								"O_LSV_02_unarmed_F","O_Truck_03_ammo_F","O_Truck_03_device_F","O_Truck_03_fuel_F","O_Truck_03_medical_F",
								"O_Truck_03_repair_F","O_Truck_03_transport_F","CUP_O_UAZ_Unarmed_CSAT"	];
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
				hint "CODE FAIL. vehicleDrivingCourse.sqf Callsign/Exercise Switch";
			};
		};
	};
	case "AAFW":
	{
		switch (_exerciseID) do
		{
			case 0:
			{};
			case 1:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["I_APC_tracked_03_cannon_F", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				for "_i" from 1 to 5 do
				{
					_group = createGroup east;
					_loc = selectRandom _vehTgts;
					_locArray = [_loc];
					_vehTgts = _vehTgts - _locArray;
					_unitType = ["O_APC_Tracked_02_cannon_F","CUP_O_BMP1_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP2_CSAT",
								"CUP_O_BRDM2_CSAT","CUP_O_BTR60_CSAT","O_APC_Wheeled_02_rcws_F","O_Truck_02_Ammo_F","O_Truck_02_fuel_F",
								"O_Truck_02_medical_F","O_Truck_02_box_F","O_Truck_02_transport_F","O_Truck_02_covered_F","O_MRAP_02_F",
								"O_LSV_02_unarmed_F","O_Truck_03_ammo_F","O_Truck_03_device_F","O_Truck_03_fuel_F","O_Truck_03_medical_F",
								"O_Truck_03_repair_F","O_Truck_03_transport_F","CUP_O_UAZ_Unarmed_CSAT"	];
					_unit = _unitType call BIS_fnc_selectRandom;
					[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
					{
						GW_TrainingGround_spawnedOPFOR pushBack _x;
					} foreach units _group;
					sleep 30;
				};
			};
			case 2:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["I_APC_Wheeled_03_cannon_F", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				for "_i" from 1 to 5 do
				{
					_group = createGroup east;
					_loc = selectRandom _vehTgts;
					_locArray = [_loc];
					_vehTgts = _vehTgts - _locArray;
					_unitType = ["O_APC_Tracked_02_cannon_F","CUP_O_BMP1_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP2_CSAT",
								"CUP_O_BRDM2_CSAT","CUP_O_BTR60_CSAT","O_APC_Wheeled_02_rcws_F","O_Truck_02_Ammo_F","O_Truck_02_fuel_F",
								"O_Truck_02_medical_F","O_Truck_02_box_F","O_Truck_02_transport_F","O_Truck_02_covered_F","O_MRAP_02_F",
								"O_LSV_02_unarmed_F","O_Truck_03_ammo_F","O_Truck_03_device_F","O_Truck_03_fuel_F","O_Truck_03_medical_F",
								"O_Truck_03_repair_F","O_Truck_03_transport_F","CUP_O_UAZ_Unarmed_CSAT"	];
					_unit = _unitType call BIS_fnc_selectRandom;
					[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
					{
						GW_TrainingGround_spawnedOPFOR pushBack _x;
					} foreach units _group;
					sleep 30;
				};
			};
			case 3:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["I_MRAP_03_hmg_F", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				for "_i" from 1 to 5 do
				{
					_group = createGroup east;
					_loc = selectRandom _vehTgts;
					_locArray = [_loc];
					_vehTgts = _vehTgts - _locArray;
					_unitType = ["O_APC_Tracked_02_cannon_F","CUP_O_BMP1_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP2_CSAT",
								"CUP_O_BRDM2_CSAT","CUP_O_BTR60_CSAT","O_APC_Wheeled_02_rcws_F","O_Truck_02_Ammo_F","O_Truck_02_fuel_F",
								"O_Truck_02_medical_F","O_Truck_02_box_F","O_Truck_02_transport_F","O_Truck_02_covered_F","O_MRAP_02_F",
								"O_LSV_02_unarmed_F","O_Truck_03_ammo_F","O_Truck_03_device_F","O_Truck_03_fuel_F","O_Truck_03_medical_F",
								"O_Truck_03_repair_F","O_Truck_03_transport_F","CUP_O_UAZ_Unarmed_CSAT"	];
					_unit = _unitType call BIS_fnc_selectRandom;
					[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
					{
						GW_TrainingGround_spawnedOPFOR pushBack _x;
					} foreach units _group;
					sleep 30;
				};
			};
			case 4:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["I_MRAP_03_gmg_F", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				for "_i" from 1 to 5 do
				{
					_group = createGroup east;
					_loc = selectRandom _vehTgts;
					_locArray = [_loc];
					_vehTgts = _vehTgts - _locArray;
					_unitType = ["O_APC_Tracked_02_cannon_F","CUP_O_BMP1_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP2_CSAT",
								"CUP_O_BRDM2_CSAT","CUP_O_BTR60_CSAT","O_APC_Wheeled_02_rcws_F","O_Truck_02_Ammo_F","O_Truck_02_fuel_F",
								"O_Truck_02_medical_F","O_Truck_02_box_F","O_Truck_02_transport_F","O_Truck_02_covered_F","O_MRAP_02_F",
								"O_LSV_02_unarmed_F","O_Truck_03_ammo_F","O_Truck_03_device_F","O_Truck_03_fuel_F","O_Truck_03_medical_F",
								"O_Truck_03_repair_F","O_Truck_03_transport_F","CUP_O_UAZ_Unarmed_CSAT"	];
					_unit = _unitType call BIS_fnc_selectRandom;
					[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
					{
						GW_TrainingGround_spawnedOPFOR pushBack _x;
					} foreach units _group;
					sleep 30;
				};
			};
			case 5:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_I_LR_MG_AAF", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				for "_i" from 1 to 5 do
				{
					_group = createGroup east;
					_loc = selectRandom _vehTgts;
					_locArray = [_loc];
					_vehTgts = _vehTgts - _locArray;
					_unitType = ["O_APC_Tracked_02_cannon_F","CUP_O_BMP1_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP2_CSAT",
								"CUP_O_BRDM2_CSAT","CUP_O_BTR60_CSAT","O_APC_Wheeled_02_rcws_F","O_Truck_02_Ammo_F","O_Truck_02_fuel_F",
								"O_Truck_02_medical_F","O_Truck_02_box_F","O_Truck_02_transport_F","O_Truck_02_covered_F","O_MRAP_02_F",
								"O_LSV_02_unarmed_F","O_Truck_03_ammo_F","O_Truck_03_device_F","O_Truck_03_fuel_F","O_Truck_03_medical_F",
								"O_Truck_03_repair_F","O_Truck_03_transport_F","CUP_O_UAZ_Unarmed_CSAT"	];
					_unit = _unitType call BIS_fnc_selectRandom;
					[getMarkerPos _loc,0,_unit,_group] call BIS_fnc_spawnVehicle;
					{
						GW_TrainingGround_spawnedOPFOR pushBack _x;
					} foreach units _group;
					sleep 30;
				};
			};
			case 6:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["I_MBT_03_cannon_F", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				for "_i" from 1 to 5 do
				{
					_group = createGroup east;
					_loc = selectRandom _vehTgts;
					_locArray = [_loc];
					_vehTgts = _vehTgts - _locArray;
					_unitType = ["O_APC_Tracked_02_cannon_F","CUP_O_BMP1_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP2_CSAT",
								"CUP_O_BRDM2_CSAT","CUP_O_BTR60_CSAT","O_APC_Wheeled_02_rcws_F","O_Truck_02_Ammo_F","O_Truck_02_fuel_F",
								"O_Truck_02_medical_F","O_Truck_02_box_F","O_Truck_02_transport_F","O_Truck_02_covered_F","O_MRAP_02_F",
								"O_LSV_02_unarmed_F","O_Truck_03_ammo_F","O_Truck_03_device_F","O_Truck_03_fuel_F","O_Truck_03_medical_F",
								"O_Truck_03_repair_F","O_Truck_03_transport_F","CUP_O_UAZ_Unarmed_CSAT"	];
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
				hint "CODE FAIL. vehicleDrivingCourse.sqf Callsign/Exercise Switch";
			};
		};
	};
	default
	{
		hint "CODE FAIL. vehicleDrivingCourse.sqf Callsign Switch";
	};
};

removeAllActions Laptop_4;

Laptop_4 addAction ["<t color='#FFFF00'>Driving Course</t>","Modules\TrainingGround\scripts\spawnAircraft.sqf",["Vehicle",1],1,false,false,"",""];
Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
Laptop_4 addAction ["<t color='#FFFF00'>Weapons Range</t>","Modules\TrainingGround\scripts\spawnAircraft.sqf",["Vehicle",2],1,false,false,"",""];
