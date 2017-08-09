 #include "..\scriptComponent.hpp"
 #define bullShit nil,1,false,false,"",""
 
 // Store Incoming Data
 _caller = _this select 1;
 _callsign = _this select 3 select 0;
 _exerciseID = _this select 3 select 1;
 _side = getNumber(configfile >> "CfgVehicles" >> (typeOf _caller) >> "side"); // 0 = OPFOR, 1 = BLUFOR, 2 = INDEP, 3 = CIV
 
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
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,east,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 2:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["O_APC_Wheeled_02_rcws_F", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 3:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["O_Truck_02_transport_F", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 4:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["O_MRAP_02_F", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 5:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["O_LSV_02_unarmed_F", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 6:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["O_Quadbike_01_F", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 7:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["O_Truck_03_transport_F", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 8:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["O_MBT_02_cannon_F", _position, [], 0, "CAN_COLLIDE"];
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
				hint "CODE FAIL. vehicleDrivingCourse.sqf CSATH Callsign/Exercise Switch";
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
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,east,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 2:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["O_APC_Wheeled_02_rcws_F", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 3:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["O_Truck_02_transport_F", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 4:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["O_T_MRAP_02_ghex_F", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 5:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["O_T_LSV_02_unarmed_F", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 6:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["O_T_Quadbike_01_ghex_F", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 7:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["O_T_Truck_03_transport_ghex_F", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 8:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["O_T_MBT_02_cannon_ghex_F", _position, [], 0, "CAN_COLLIDE"];
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
				hint "CODE FAIL. vehicleDrivingCourse.sqf CSATW Callsign/Exercise Switch";
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
				_heli = createVehicle ["O_APC_Tracked_02_cannon_F", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,east,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 2:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["O_APC_Wheeled_02_rcws_F", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 3:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["O_Truck_02_transport_F", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 4:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["O_MRAP_02_F", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 5:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["O_LSV_02_unarmed_F", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 6:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["O_Quadbike_01_F", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 7:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["O_Truck_03_transport_F", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 8:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["O_MBT_02_cannon_F", _position, [], 0, "CAN_COLLIDE"];
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
				hint "CODE FAIL. vehicleDrivingCourse.sqf CSATU Callsign/Exercise Switch";
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
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,east,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 2:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_O_BMP3_RU", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 3:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_O_BRDM2_RUS", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 4:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_O_BTR90_RU", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 5:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_O_GAZ_Vodnik_PK_RU", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 6:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_O_UAZ_Unarmed_RU", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 7:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_O_Ural_RU", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 8:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_O_T72_RU", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 9:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_O_T90_RU", _position, [], 0, "CAN_COLLIDE"];
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
				hint "CODE FAIL. vehicleDrivingCourse.sqf RUS Callsign/Exercise Switch";
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
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,east,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 2:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_O_BMP2_TKA", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 3:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_O_BRDM2_TKA", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 4:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_O_BTR40_TKA", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 5:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_O_BTR60_TK", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 6:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_O_M113_TKA", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 7:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_O_LR_Transport_TKA", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 8:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_O_V3S_Open_TKA", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 9:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_O_SUV_TKA", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 10:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_O_UAZ_Unarmed_TKA", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 11:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_O_Ural_TKA", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 12:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_O_T34_TKA", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 13:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_O_T55_TK", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 14:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_O_T72_TKA", _position, [], 0, "CAN_COLLIDE"];
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
				hint "CODE FAIL. vehicleDrivingCourse.sqf TKA Callsign/Exercise Switch";
			};
		};
	};
	case "TKM":
	{
		switch (_exerciseID) do
		{
			case 0:
			{};
			case 1:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_O_BTR40_TKM", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,east,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 2:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_O_LR_Transport_TKM", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 3:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_O_V3S_Open_TKM", _position, [], 0, "CAN_COLLIDE"];
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
				hint "CODE FAIL. vehicleDrivingCourse.sqf TKM Callsign/Exercise Switch";
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
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,east,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 2:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["B_APC_Tracked_01_rcws_F", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 3:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["B_Truck_01_mover_F", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 4:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["B_MRAP_01_F", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 5:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["B_LSV_01_unarmed_F", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 6:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["B_Quadbike_01_F", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 7:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_B_Challenger2_NATO", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 8:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["B_MBT_01_TUSK_F", _position, [], 0, "CAN_COLLIDE"];
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
				hint "CODE FAIL. vehicleDrivingCourse.sqf NATOD Callsign/Exercise Switch";
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
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,east,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 2:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_B_M2Bradley_NATO_T", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 3:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["B_T_APC_Tracked_01_rcws_F", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 4:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["B_T_Truck_01_mover_F", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 5:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_B_HMMWV_Unarmed_NATO_T", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 6:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["B_T_MRAP_01_F", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 7:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["B_T_LSV_01_unarmed_F", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 8:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["B_T_Quadbike_01_F", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 9:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_B_M1A1_NATO_T", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 9:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["B_T_MBT_01_TUSK_F", _position, [], 0, "CAN_COLLIDE"];
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
				hint "CODE FAIL. vehicleDrivingCourse.sqf NATOW Callsign/Exercise Switch";
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
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,east,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 2:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_B_FV510_GB_D", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 3:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_B_BAF_Coyote_GMG_D", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 4:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_B_Jackal2_GMG_GB_D", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 5:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_B_LR_Transport_GB_D", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 6:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_B_Mastiff_GMG_GB_D", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 7:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_B_Ridgback_GMG_GB_D", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 8:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_B_Wolfhound_LMG_GB_D", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 9:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_B_Challenger2_Desert_BAF", _position, [], 0, "CAN_COLLIDE"];
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
				hint "CODE FAIL. vehicleDrivingCourse.sqf BAFD Callsign/Exercise Switch";
			};
		};
	};
	case "BAFW":
	{
		switch (_exerciseID) do
		{
			case 0:
			{};
			case 1:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_B_FV432_Bulldog_GB_W_RWS", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,east,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 2:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_B_FV510_GB_W_SLAT", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 3:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_B_BAF_Coyote_GMG_W", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 4:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_B_Jackal2_GMG_GB_W", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 5:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_B_LR_Transport_GB_W", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 6:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_B_Mastiff_GMG_GB_W", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 7:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_B_Ridgback_GMG_GB_W", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 8:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_B_Wolfhound_GMG_GB_W", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 9:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_B_Challenger2_2CW_BAF", _position, [], 0, "CAN_COLLIDE"];
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
				hint "CODE FAIL. vehicleDrivingCourse.sqf BAFW Callsign/Exercise Switch";
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
				_heli = createVehicle ["CUP_B_AAV_Unarmed_USMC", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,east,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 2:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_B_LAV25_desert_USMC", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 3:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_B_M1030_USMC", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 4:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_B_HMMWV_Unarmed_USMC", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 5:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_B_MTVR_USMC", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 6:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_B_RG31E_M2_USMC", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 7:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_B_M1A2_TUSK_MG_DES_USMC", _position, [], 0, "CAN_COLLIDE"];
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
				hint "CODE FAIL. vehicleDrivingCourse.sqf BAFW Callsign/Exercise Switch";
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
				_heli = createVehicle ["CUP_B_AAV_Unarmed_USMC", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,east,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 2:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_B_LAV25_USMC", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 3:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_B_M1030_USMC", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 4:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_B_HMMWV_Unarmed_USMC", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 5:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_B_MTVR_USMC", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 6:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_B_RG31_M2_OD_USMC", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 7:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_B_M1A2_TUSK_MG_USMC", _position, [], 0, "CAN_COLLIDE"];
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
				hint "CODE FAIL. vehicleDrivingCourse.sqf BAFW Callsign/Exercise Switch";
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
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,east,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 2:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_I_M113_AAF", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 3:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["I_APC_Wheeled_03_cannon_F", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 4:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["I_MRAP_03_F", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 5:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["I_Truck_02_transport_F", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 6:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_I_LR_Transport_AAF", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 7:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["I_Quadbike_01_F", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 8:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["I_MBT_03_cannon_F", _position, [], 0, "CAN_COLLIDE"];
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
				hint "CODE FAIL. vehicleDrivingCourse.sqf BAFW Callsign/Exercise Switch";
			};
		};
	};
	case "PMC":
	{
		switch (_exerciseID) do
		{
			case 0:
			{};
			case 1:
			{
				_position = getmarkerpos "jaegerWP_21";
				_heli = createVehicle ["CUP_I_SUV_Armored_ION", _position, [], 0, "CAN_COLLIDE"];
				_heli setDir 180;
				null = [[monitor1],["spotter","spotter_1","spotter_2","spotter_3","spotter_4"]] execVM "LFC\feedInit.sqf";
				null = [[monitor2],["spotter_5","spotter_6","spotter_7","spotter_8","spotter_9"]] execVM "LFC\feedInit.sqf";
				null = [[monitor3],["spotter_10","spotter_11","spotter_12","spotter_13","spotter_14"]] execVM "LFC\feedInit.sqf";
				null = [[monitor4],["spotter_15","spotter_16","spotter_17","spotter_18","spotter_19"]] execVM "LFC\feedInit.sqf";
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,east,6,GW_TrainingGround_soloBird,"Tank"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			default
			{
				hint "CODE FAIL. vehicleDrivingCourse.sqf BAFW Callsign/Exercise Switch";
			};
		};
	};
	default
	{
		hint "CODE FAIL. vehicleDrivingCourse.sqf Callsign Switch";
	};
};

removeAllActions Laptop_4;
Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",bullShit,5];
Laptop_4 addAction ["<t color='#FFFF00'>Reset Training Area","[] call GW_TrainingGround_Fnc_resetTraining;",bullShit,5];
Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",bullShit,5];
Laptop_4 addAction ["<t color='#FFFF00'>Driving Course</t>","Modules\TrainingGround\scripts\spawnAircraft.sqf",["Vehicle",1],1,false,false,"",""];
Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
Laptop_4 addAction ["<t color='#FFFF00'>Weapons Range</t>","Modules\TrainingGround\scripts\spawnAircraft.sqf",["Vehicle",2],1,false,false,"",""];
Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",bullShit,5];
