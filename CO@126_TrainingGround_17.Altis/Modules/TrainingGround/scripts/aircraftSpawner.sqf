/*
 * Module Script that confirms the exercise requested and spawns the relevant aircraft
 * 
 */
 
 #include "..\scriptComponent.hpp"
 #define bullShit nil,1,false,false,"",""
 
 // Store Incoming Data
 _caller = _this select 1;
 _callsign = _this select 3 select 0;
 _aircraftID = _this select 3 select 1;
 
 _side = getNumber(configfile >> "CfgVehicles" >> (typeOf _caller) >> "side"); // 0 = OPFOR, 1 = BLUFOR, 2 = INDEP, 3 = CIV
 _blufor = GW_Gear_Blufor;
 _opfor = GW_Gear_Opfor;
 _indep = GW_Gear_Independent;
 
 removeAllActions Laptop_1;
 
 // Main Switch
switch (_callsign) do
{
	case "Angel":
	{
		switch (_aircraftID) do
		{
			case 0:
			{};
			case 1:
			{
				_parkingSlots = ["VTOLPark","VTOLPark_1","VTOLPark_2","VTOLPark_3","VTOLPark_4","VTOLPark_5","VTOLPark_6","VTOLPark_7"];
				{
					_position = getMarkerPos _x;
					_heli = createVehicle ["JAS_CUP_B_AH6J_AAC", _position, [], 0, "CAN_COLLIDE"];
					_heli setDir 130;
					GW_TrainingGround_spawnedAssets pushBack _heli;
					_pad = createVehicle ["Land_HelipadCivil_F", _position, [], 0, "CAN_COLLIDE"];
					_pad setDir 130;
					GW_TrainingGround_spawnedAssets pushBack _pad;
				}foreach _parkingSlots;
			};
			case 2:
			{
				_parkingSlots = ["VTOLPark","VTOLPark_1","VTOLPark_2","VTOLPark_3","VTOLPark_4","VTOLPark_5","VTOLPark_6","VTOLPark_7"];
				{
					_position = getMarkerPos _x;
					_heli = createVehicle ["B_Heli_Light_01_armed_F", _position, [], 0, "CAN_COLLIDE"];
					_heli setDir 130;
					GW_TrainingGround_spawnedAssets pushBack _heli;
					_pad = createVehicle ["Land_HelipadCivil_F", _position, [], 0, "CAN_COLLIDE"];
					_pad setDir 130;
					GW_TrainingGround_spawnedAssets pushBack _pad;
				}foreach _parkingSlots;
			};
			case 3:
			{
				_parkingSlots = ["VTOLPark","VTOLPark_1","VTOLPark_2","VTOLPark_3","VTOLPark_4","VTOLPark_5","VTOLPark_6","VTOLPark_7"];
				{
					_position = getMarkerPos _x;
					_heli = createVehicle ["JAS_CUP_B_AW159_Unarmed_AAC", _position, [], 0, "CAN_COLLIDE"];
					_heli setDir 130;
					GW_TrainingGround_spawnedAssets pushBack _heli;
					_pad = createVehicle ["Land_HelipadCivil_F", _position, [], 0, "CAN_COLLIDE"];
					_pad setDir 130;
					GW_TrainingGround_spawnedAssets pushBack _pad;
				}foreach _parkingSlots;
			};
			case 4:
			{
				_parkingSlots = ["VTOLPark","VTOLPark_1","VTOLPark_2","VTOLPark_3","VTOLPark_4","VTOLPark_5","VTOLPark_6","VTOLPark_7"];
				{
					_position = getMarkerPos _x;
					_heli = createVehicle ["JAS_CUP_O_Ka50_AAC", _position, [], 0, "CAN_COLLIDE"];
					_heli setDir 130;
					GW_TrainingGround_spawnedAssets pushBack _heli;
					_pad = createVehicle ["Land_HelipadCivil_F", _position, [], 0, "CAN_COLLIDE"];
					_pad setDir 130;
					GW_TrainingGround_spawnedAssets pushBack _pad;
				}foreach _parkingSlots;
			};
			case 5:
			{
				_parkingSlots = ["VTOLPark","VTOLPark_1","VTOLPark_2","VTOLPark_3","VTOLPark_4","VTOLPark_5","VTOLPark_6","VTOLPark_7"];
				{
					_position = getMarkerPos _x;
					_heli = createVehicle ["JAS_CUP_O_Ka52_AAC", _position, [], 0, "CAN_COLLIDE"];
					_heli setDir 130;
					GW_TrainingGround_spawnedAssets pushBack _heli;
					_pad = createVehicle ["Land_HelipadCivil_F", _position, [], 0, "CAN_COLLIDE"];
					_pad setDir 130;
					GW_TrainingGround_spawnedAssets pushBack _pad;
				}foreach _parkingSlots;
			};
			case 6:
			{
				_parkingSlots = ["VTOLPark","VTOLPark_1","VTOLPark_2","VTOLPark_3","VTOLPark_4","VTOLPark_5","VTOLPark_6","VTOLPark_7"];
				{
					_position = getMarkerPos _x;
					_heli = createVehicle ["O_Heli_Light_02_F", _position, [], 0, "CAN_COLLIDE"];
					_heli setDir 130;
					GW_TrainingGround_spawnedAssets pushBack _heli;
					_pad = createVehicle ["Land_HelipadCivil_F", _position, [], 0, "CAN_COLLIDE"];
					_pad setDir 130;
					GW_TrainingGround_spawnedAssets pushBack _pad;
				}foreach _parkingSlots;
			};
			case 7:
			{
				_parkingSlots = ["VTOLPark","VTOLPark_1","VTOLPark_2","VTOLPark_3","VTOLPark_4","VTOLPark_5","VTOLPark_6","VTOLPark_7"];
				{
					_position = getMarkerPos _x;
					_heli = createVehicle ["JAS_CUP_O_Mi8_AAC", _position, [], 0, "CAN_COLLIDE"];
					_heli setDir 130;
					GW_TrainingGround_spawnedAssets pushBack _heli;
					_pad = createVehicle ["Land_HelipadCivil_F", _position, [], 0, "CAN_COLLIDE"];
					_pad setDir 130;
					GW_TrainingGround_spawnedAssets pushBack _pad;
				}foreach _parkingSlots;
			};
			case 8:
			{
				_parkingSlots = ["VTOLPark","VTOLPark_1","VTOLPark_2","VTOLPark_3","VTOLPark_4","VTOLPark_5","VTOLPark_6","VTOLPark_7"];
				{
					_position = getMarkerPos _x;
					_heli = createVehicle ["JAS_CUP_O_Mi17_AAC", _position, [], 0, "CAN_COLLIDE"];
					_heli setDir 130;
					GW_TrainingGround_spawnedAssets pushBack _heli;
					_pad = createVehicle ["Land_HelipadCivil_F", _position, [], 0, "CAN_COLLIDE"];
					_pad setDir 130;
					GW_TrainingGround_spawnedAssets pushBack _pad;
				}foreach _parkingSlots;
			};
			case 9:
			{
				_parkingSlots = ["VTOLPark","VTOLPark_1","VTOLPark_2","VTOLPark_3","VTOLPark_4","VTOLPark_5","VTOLPark_6","VTOLPark_7"];
				{
					_position = getMarkerPos _x;
					_heli = createVehicle ["CUP_B_UH1Y_GUNSHIP_USMC", _position, [], 0, "CAN_COLLIDE"];
					_heli setDir 130;
					GW_TrainingGround_spawnedAssets pushBack _heli;
					_pad = createVehicle ["Land_HelipadCivil_F", _position, [], 0, "CAN_COLLIDE"];
					_pad setDir 130;
					GW_TrainingGround_spawnedAssets pushBack _pad;
				}foreach _parkingSlots;
			};
		};
		default
		{
			hint "CODE FAIL. aircraftSpawner.sqf Angel/aircraftID Switch";
		};
	};
	case "Zeus":
	{
		switch (_aircraftID) do
		{
			case 0:
			{};
			case 1:
			{
				_parkingSlots = ["VTOLPark","VTOLPark_1","VTOLPark_2","VTOLPark_3","VTOLPark_4","VTOLPark_5","VTOLPark_6","VTOLPark_7"];
				{
					_position = getMarkerPos _x;
					_heli = createVehicle ["JAS_CUP_B_AH1_BAF", _position, [], 0, "CAN_COLLIDE"];
					_heli setDir 130;
					GW_TrainingGround_spawnedAssets pushBack _heli;
					_pad = createVehicle ["Land_HelipadCivil_F", _position, [], 0, "CAN_COLLIDE"];
					_pad setDir 130;
					GW_TrainingGround_spawnedAssets pushBack _pad;
				}foreach _parkingSlots;
			};
			case 2:
			{
				_parkingSlots = ["VTOLPark","VTOLPark_1","VTOLPark_2","VTOLPark_3","VTOLPark_4","VTOLPark_5","VTOLPark_6","VTOLPark_7"];
				{
					_position = getMarkerPos _x;
					_heli = createVehicle ["JAS_CUP_B_AH1Z_USMC", _position, [], 0, "CAN_COLLIDE"];
					_heli setDir 130;
					GW_TrainingGround_spawnedAssets pushBack _heli;
					_pad = createVehicle ["Land_HelipadCivil_F", _position, [], 0, "CAN_COLLIDE"];
					_pad setDir 130;
					GW_TrainingGround_spawnedAssets pushBack _pad;
				}foreach _parkingSlots;
			};
			case 3:
			{
				_parkingSlots = ["VTOLPark","VTOLPark_1","VTOLPark_2","VTOLPark_3","VTOLPark_4","VTOLPark_5","VTOLPark_6","VTOLPark_7"];
				{
					_position = getMarkerPos _x;
					_heli = createVehicle ["JAS_CUP_B_AH64D_USA", _position, [], 0, "CAN_COLLIDE"];
					_heli setDir 130;
					GW_TrainingGround_spawnedAssets pushBack _heli;
					_pad = createVehicle ["Land_HelipadCivil_F", _position, [], 0, "CAN_COLLIDE"];
					_pad setDir 130;
					GW_TrainingGround_spawnedAssets pushBack _pad;
				}foreach _parkingSlots;
			};
			case 4:
			{
				_parkingSlots = ["VTOLPark","VTOLPark_1","VTOLPark_2","VTOLPark_3","VTOLPark_4","VTOLPark_5","VTOLPark_6","VTOLPark_7"];
				{
					_position = getMarkerPos _x;
					_heli = createVehicle ["JAS_CUP_B_Mi24_D_CDF", _position, [], 0, "CAN_COLLIDE"];
					_heli setDir 130;
					GW_TrainingGround_spawnedAssets pushBack _heli;
					_pad = createVehicle ["Land_HelipadCivil_F", _position, [], 0, "CAN_COLLIDE"];
					_pad setDir 130;
					GW_TrainingGround_spawnedAssets pushBack _pad;
				}foreach _parkingSlots;
			};
			case 5:
			{
				_parkingSlots = ["VTOLPark","VTOLPark_1","VTOLPark_2","VTOLPark_3","VTOLPark_4","VTOLPark_5","VTOLPark_6","VTOLPark_7"];
				{
					_position = getMarkerPos _x;
					_heli = createVehicle ["JAS_CUP_O_Mi24_P_RU", _position, [], 0, "CAN_COLLIDE"];
					_heli setDir 130;
					GW_TrainingGround_spawnedAssets pushBack _heli;
					_pad = createVehicle ["Land_HelipadCivil_F", _position, [], 0, "CAN_COLLIDE"];
					_pad setDir 130;
					GW_TrainingGround_spawnedAssets pushBack _pad;
				}foreach _parkingSlots;
			};
			case 6:
			{
				_parkingSlots = ["VTOLPark","VTOLPark_1","VTOLPark_2","VTOLPark_3","VTOLPark_4","VTOLPark_5","VTOLPark_6","VTOLPark_7"];
				{
					_position = getMarkerPos _x;
					_heli = createVehicle ["JAS_CUP_O_Mi24_V_RU", _position, [], 0, "CAN_COLLIDE"];
					_heli setDir 130;
					GW_TrainingGround_spawnedAssets pushBack _heli;
					_pad = createVehicle ["Land_HelipadCivil_F", _position, [], 0, "CAN_COLLIDE"];
					_pad setDir 130;
					GW_TrainingGround_spawnedAssets pushBack _pad;
				}foreach _parkingSlots;
			};
			case 7:
			{
				_parkingSlots = ["VTOLPark","VTOLPark_1","VTOLPark_2","VTOLPark_3","VTOLPark_4","VTOLPark_5","VTOLPark_6","VTOLPark_7"];
				{
					_position = getMarkerPos _x;
					_heli = createVehicle ["JAS_CUP_I_Mi24_Mk3_ION", _position, [], 0, "CAN_COLLIDE"];
					_heli setDir 130;
					GW_TrainingGround_spawnedAssets pushBack _heli;
					_pad = createVehicle ["Land_HelipadCivil_F", _position, [], 0, "CAN_COLLIDE"];
					_pad setDir 130;
					GW_TrainingGround_spawnedAssets pushBack _pad;
				}foreach _parkingSlots;
			};
			case 8:
			{
				_parkingSlots = ["VTOLPark","VTOLPark_1","VTOLPark_2","VTOLPark_3","VTOLPark_4","VTOLPark_5","VTOLPark_6","VTOLPark_7"];
				{
					_position = getMarkerPos _x;
					_heli = createVehicle ["JAS_CUP_I_Mi24_Mk4_ION", _position, [], 0, "CAN_COLLIDE"];
					_heli setDir 130;
					GW_TrainingGround_spawnedAssets pushBack _heli;
					_pad = createVehicle ["Land_HelipadCivil_F", _position, [], 0, "CAN_COLLIDE"];
					_pad setDir 130;
					GW_TrainingGround_spawnedAssets pushBack _pad;
				}foreach _parkingSlots;
			};
			case 9:
			{
				_parkingSlots = ["VTOLPark","VTOLPark_1","VTOLPark_2","VTOLPark_3","VTOLPark_4","VTOLPark_5","VTOLPark_6","VTOLPark_7"];
				{
					_position = getMarkerPos _x;
					_heli = createVehicle ["JAS_CUP_B_Mi35_CZ", _position, [], 0, "CAN_COLLIDE"];
					_heli setDir 130;
					GW_TrainingGround_spawnedAssets pushBack _heli;
					_pad = createVehicle ["Land_HelipadCivil_F", _position, [], 0, "CAN_COLLIDE"];
					_pad setDir 130;
					GW_TrainingGround_spawnedAssets pushBack _pad;
				}foreach _parkingSlots;
			};
			case 10:
			{
				_parkingSlots = ["VTOLPark","VTOLPark_1","VTOLPark_2","VTOLPark_3","VTOLPark_4","VTOLPark_5","VTOLPark_6","VTOLPark_7"];
				{
					_position = getMarkerPos _x;
					_heli = createVehicle ["O_Heli_Attack_02_F", _position, [], 0, "CAN_COLLIDE"];
					_heli setDir 130;
					GW_TrainingGround_spawnedAssets pushBack _heli;
					_pad = createVehicle ["Land_HelipadCivil_F", _position, [], 0, "CAN_COLLIDE"];
					_pad setDir 130;
					GW_TrainingGround_spawnedAssets pushBack _pad;
				}foreach _parkingSlots;
			};
			case 11:
			{
				_parkingSlots = ["VTOLPark","VTOLPark_1","VTOLPark_2","VTOLPark_3","VTOLPark_4","VTOLPark_5","VTOLPark_6","VTOLPark_7"];
				{
					_position = getMarkerPos _x;
					_heli = createVehicle ["B_Heli_Attack_01_F", _position, [], 0, "CAN_COLLIDE"];
					_heli setDir 130;
					GW_TrainingGround_spawnedAssets pushBack _heli;
					_pad = createVehicle ["Land_HelipadCivil_F", _position, [], 0, "CAN_COLLIDE"];
					_pad setDir 130;
					GW_TrainingGround_spawnedAssets pushBack _pad;
				}foreach _parkingSlots;
			};
		};
		default
		{
			hint "CODE FAIL. aircraftSpawner.sqf Zeus/aircraftID Switch";
		};
	};
	case "Phantom":
	{
		switch (_aircraftID) do
		{
			case 0:
			{};
			case 1:
			{
				_parkingSlots = ["VTOLPark","VTOLPark_1","VTOLPark_2","VTOLPark_3","VTOLPark_4","VTOLPark_5","VTOLPark_6","VTOLPark_7"];
				{
					_position = getMarkerPos _x;
					_heli = createVehicle ["JAS_CUP_B_A10_USA", _position, [], 0, "CAN_COLLIDE"];
					_heli setDir 130;
					GW_TrainingGround_spawnedAssets pushBack _heli;
					_pad = createVehicle ["Land_HelipadCivil_F", _position, [], 0, "CAN_COLLIDE"];
					_pad setDir 130;
					GW_TrainingGround_spawnedAssets pushBack _pad;
				}foreach _parkingSlots;
			};
			case 2:
			{
				_parkingSlots = ["VTOLPark","VTOLPark_1","VTOLPark_2","VTOLPark_3","VTOLPark_4","VTOLPark_5","VTOLPark_6","VTOLPark_7"];
				{
					_position = getMarkerPos _x;
					_heli = createVehicle ["JAS_FIR_A143R", _position, [], 0, "CAN_COLLIDE"];
					_heli setDir 130;
					GW_TrainingGround_spawnedAssets pushBack _heli;
					_pad = createVehicle ["Land_HelipadCivil_F", _position, [], 0, "CAN_COLLIDE"];
					_pad setDir 130;
					GW_TrainingGround_spawnedAssets pushBack _pad;
				}foreach _parkingSlots;
			};
			case 3:
			{
				_parkingSlots = ["VTOLPark","VTOLPark_1","VTOLPark_2","VTOLPark_3","VTOLPark_4","VTOLPark_5","VTOLPark_6","VTOLPark_7"];
				{
					_position = getMarkerPos _x;
					_heli = createVehicle ["JAS_FIR_A164J", _position, [], 0, "CAN_COLLIDE"];
					_heli setDir 130;
					GW_TrainingGround_spawnedAssets pushBack _heli;
					_pad = createVehicle ["Land_HelipadCivil_F", _position, [], 0, "CAN_COLLIDE"];
					_pad setDir 130;
					GW_TrainingGround_spawnedAssets pushBack _pad;
				}foreach _parkingSlots;
			};
			case 4:
			{
				_parkingSlots = ["VTOLPark","VTOLPark_1","VTOLPark_2","VTOLPark_3","VTOLPark_4","VTOLPark_5","VTOLPark_6","VTOLPark_7"];
				{
					_position = getMarkerPos _x;
					_heli = createVehicle ["JAS_CUP_B_AV8B_USMC", _position, [], 0, "CAN_COLLIDE"];
					_heli setDir 130;
					GW_TrainingGround_spawnedAssets pushBack _heli;
					_pad = createVehicle ["Land_HelipadCivil_F", _position, [], 0, "CAN_COLLIDE"];
					_pad setDir 130;
					GW_TrainingGround_spawnedAssets pushBack _pad;
				}foreach _parkingSlots;
			};
			case 5:
			{
				_parkingSlots = ["VTOLPark","VTOLPark_1","VTOLPark_2","VTOLPark_3","VTOLPark_4","VTOLPark_5","VTOLPark_6","VTOLPark_7"];
				{
					_position = getMarkerPos _x;
					_heli = createVehicle ["JAS_CUP_B_F35B_RAF", _position, [], 0, "CAN_COLLIDE"];
					_heli setDir 130;
					GW_TrainingGround_spawnedAssets pushBack _heli;
					_pad = createVehicle ["Land_HelipadCivil_F", _position, [], 0, "CAN_COLLIDE"];
					_pad setDir 130;
					GW_TrainingGround_spawnedAssets pushBack _pad;
				}foreach _parkingSlots;
			};
			case 6:
			{
				_parkingSlots = ["VTOLPark","VTOLPark_1","VTOLPark_2","VTOLPark_3","VTOLPark_4","VTOLPark_5","VTOLPark_6","VTOLPark_7"];
				{
					_position = getMarkerPos _x;
					_heli = createVehicle ["JAS_CUP_B_F35B_USMC", _position, [], 0, "CAN_COLLIDE"];
					_heli setDir 130;
					GW_TrainingGround_spawnedAssets pushBack _heli;
					_pad = createVehicle ["Land_HelipadCivil_F", _position, [], 0, "CAN_COLLIDE"];
					_pad setDir 130;
					GW_TrainingGround_spawnedAssets pushBack _pad;
				}foreach _parkingSlots;
			};
			case 7:
			{
				_parkingSlots = ["VTOLPark","VTOLPark_1","VTOLPark_2","VTOLPark_3","VTOLPark_4","VTOLPark_5","VTOLPark_6","VTOLPark_7"];
				{
					_position = getMarkerPos _x;
					_heli = createVehicle ["JS_JC_FA18E", _position, [], 0, "CAN_COLLIDE"];
					_heli setDir 130;
					GW_TrainingGround_spawnedAssets pushBack _heli;
					_pad = createVehicle ["Land_HelipadCivil_F", _position, [], 0, "CAN_COLLIDE"];
					_pad setDir 130;
					GW_TrainingGround_spawnedAssets pushBack _pad;
				}foreach _parkingSlots;
			};
			case 8:
			{
				_parkingSlots = ["VTOLPark","VTOLPark_1","VTOLPark_2","VTOLPark_3","VTOLPark_4","VTOLPark_5","VTOLPark_6","VTOLPark_7"];
				{
					_position = getMarkerPos _x;
					_heli = createVehicle ["JS_JC_FA18F", _position, [], 0, "CAN_COLLIDE"];
					_heli setDir 130;
					GW_TrainingGround_spawnedAssets pushBack _heli;
					_pad = createVehicle ["Land_HelipadCivil_F", _position, [], 0, "CAN_COLLIDE"];
					_pad setDir 130;
					GW_TrainingGround_spawnedAssets pushBack _pad;
				}foreach _parkingSlots;
			};
			case 9:
			{
				_parkingSlots = ["VTOLPark","VTOLPark_1","VTOLPark_2","VTOLPark_3","VTOLPark_4","VTOLPark_5","VTOLPark_6","VTOLPark_7"];
				{
					_position = getMarkerPos _x;
					_heli = createVehicle ["JAS_CUP_B_GR9_GB", _position, [], 0, "CAN_COLLIDE"];
					_heli setDir 130;
					GW_TrainingGround_spawnedAssets pushBack _heli;
					_pad = createVehicle ["Land_HelipadCivil_F", _position, [], 0, "CAN_COLLIDE"];
					_pad setDir 130;
					GW_TrainingGround_spawnedAssets pushBack _pad;
				}foreach _parkingSlots;
			};
			case 10:
			{
				_parkingSlots = ["VTOLPark","VTOLPark_1","VTOLPark_2","VTOLPark_3","VTOLPark_4","VTOLPark_5","VTOLPark_6","VTOLPark_7"];
				{
					_position = getMarkerPos _x;
					_heli = createVehicle ["JAS_CUP_B_L39_CZ", _position, [], 0, "CAN_COLLIDE"];
					_heli setDir 130;
					GW_TrainingGround_spawnedAssets pushBack _heli;
					_pad = createVehicle ["Land_HelipadCivil_F", _position, [], 0, "CAN_COLLIDE"];
					_pad setDir 130;
					GW_TrainingGround_spawnedAssets pushBack _pad;
				}foreach _parkingSlots;
			};
			case 11:
			{
				_parkingSlots = ["VTOLPark","VTOLPark_1","VTOLPark_2","VTOLPark_3","VTOLPark_4","VTOLPark_5","VTOLPark_6","VTOLPark_7"];
				{
					_position = getMarkerPos _x;
					_heli = createVehicle ["JAS_CUP_B_Su25_CDF", _position, [], 0, "CAN_COLLIDE"];
					_heli setDir 130;
					GW_TrainingGround_spawnedAssets pushBack _heli;
					_pad = createVehicle ["Land_HelipadCivil_F", _position, [], 0, "CAN_COLLIDE"];
					_pad setDir 130;
					GW_TrainingGround_spawnedAssets pushBack _pad;
				}foreach _parkingSlots;
			};
			case 12:
			{
				_parkingSlots = ["VTOLPark","VTOLPark_1","VTOLPark_2","VTOLPark_3","VTOLPark_4","VTOLPark_5","VTOLPark_6","VTOLPark_7"];
				{
					_position = getMarkerPos _x;
					_heli = createVehicle ["JAS_CUP_O_SU34_RU", _position, [], 0, "CAN_COLLIDE"];
					_heli setDir 130;
					GW_TrainingGround_spawnedAssets pushBack _heli;
					_pad = createVehicle ["Land_HelipadCivil_F", _position, [], 0, "CAN_COLLIDE"];
					_pad setDir 130;
					GW_TrainingGround_spawnedAssets pushBack _pad;
				}foreach _parkingSlots;
			};
			case 13:
			{
				_parkingSlots = ["VTOLPark","VTOLPark_1","VTOLPark_2","VTOLPark_3","VTOLPark_4","VTOLPark_5","VTOLPark_6","VTOLPark_7"];
				{
					_position = getMarkerPos _x;
					_heli = createVehicle ["JAS_O_Plane_CAS_02_F", _position, [], 0, "CAN_COLLIDE"];
					_heli setDir 130;
					GW_TrainingGround_spawnedAssets pushBack _heli;
					_pad = createVehicle ["Land_HelipadCivil_F", _position, [], 0, "CAN_COLLIDE"];
					_pad setDir 130;
					GW_TrainingGround_spawnedAssets pushBack _pad;
				}foreach _parkingSlots;
			};
		};
		default
		{
			hint "CODE FAIL. aircraftSpawner.sqf Phantom/aircraftID Switch";
		};
	};
	case "Banshee":
	{
		switch (_aircraftID) do
		{
			case 0:
			{};
			case 1:
			{
				_parkingSlots = ["VTOLPark","VTOLPark_1","VTOLPark_2","VTOLPark_3","VTOLPark_4","VTOLPark_5","VTOLPark_6","VTOLPark_7"];
				{
					_position = getMarkerPos _x;
					_heli = createVehicle ["JAS_FIR_A143R", _position, [], 0, "CAN_COLLIDE"];
					_heli setDir 130;
					GW_TrainingGround_spawnedAssets pushBack _heli;
					_pad = createVehicle ["Land_HelipadCivil_F", _position, [], 0, "CAN_COLLIDE"];
					_pad setDir 130;
					GW_TrainingGround_spawnedAssets pushBack _pad;
				}foreach _parkingSlots;
			};
			case 2:
			{
				_parkingSlots = ["VTOLPark","VTOLPark_1","VTOLPark_2","VTOLPark_3","VTOLPark_4","VTOLPark_5","VTOLPark_6","VTOLPark_7"];
				{
					_position = getMarkerPos _x;
					_heli = createVehicle ["JAS_CUP_B_AV8B_USMC", _position, [], 0, "CAN_COLLIDE"];
					_heli setDir 130;
					GW_TrainingGround_spawnedAssets pushBack _heli;
					_pad = createVehicle ["Land_HelipadCivil_F", _position, [], 0, "CAN_COLLIDE"];
					_pad setDir 130;
					GW_TrainingGround_spawnedAssets pushBack _pad;
				}foreach _parkingSlots;
			};
			case 3:
			{
				_parkingSlots = ["VTOLPark","VTOLPark_1","VTOLPark_2","VTOLPark_3","VTOLPark_4","VTOLPark_5","VTOLPark_6","VTOLPark_7"];
				{
					_position = getMarkerPos _x;
					_heli = createVehicle ["JAS_CUP_B_F35B_USMC", _position, [], 0, "CAN_COLLIDE"];
					_heli setDir 130;
					GW_TrainingGround_spawnedAssets pushBack _heli;
					_pad = createVehicle ["Land_HelipadCivil_F", _position, [], 0, "CAN_COLLIDE"];
					_pad setDir 130;
					GW_TrainingGround_spawnedAssets pushBack _pad;
				}foreach _parkingSlots;
			};
			case 4:
			{
				_parkingSlots = ["VTOLPark","VTOLPark_1","VTOLPark_2","VTOLPark_3","VTOLPark_4","VTOLPark_5","VTOLPark_6","VTOLPark_7"];
				{
					_position = getMarkerPos _x;
					_heli = createVehicle ["JS_JC_FA18E", _position, [], 0, "CAN_COLLIDE"];
					_heli setDir 130;
					GW_TrainingGround_spawnedAssets pushBack _heli;
					_pad = createVehicle ["Land_HelipadCivil_F", _position, [], 0, "CAN_COLLIDE"];
					_pad setDir 130;
					GW_TrainingGround_spawnedAssets pushBack _pad;
				}foreach _parkingSlots;
			};
			case 5:
			{
				_parkingSlots = ["VTOLPark","VTOLPark_1","VTOLPark_2","VTOLPark_3","VTOLPark_4","VTOLPark_5","VTOLPark_6","VTOLPark_7"];
				{
					_position = getMarkerPos _x;
					_heli = createVehicle ["JS_JC_FA18F", _position, [], 0, "CAN_COLLIDE"];
					_heli setDir 130;
					GW_TrainingGround_spawnedAssets pushBack _heli;
					_pad = createVehicle ["Land_HelipadCivil_F", _position, [], 0, "CAN_COLLIDE"];
					_pad setDir 130;
					GW_TrainingGround_spawnedAssets pushBack _pad;
				}foreach _parkingSlots;
			};
			case 6:
			{
				_parkingSlots = ["VTOLPark","VTOLPark_1","VTOLPark_2","VTOLPark_3","VTOLPark_4","VTOLPark_5","VTOLPark_6","VTOLPark_7"];
				{
					_position = getMarkerPos _x;
					_heli = createVehicle ["JAS_CUP_O_SU34_RU", _position, [], 0, "CAN_COLLIDE"];
					_heli setDir 130;
					GW_TrainingGround_spawnedAssets pushBack _heli;
					_pad = createVehicle ["Land_HelipadCivil_F", _position, [], 0, "CAN_COLLIDE"];
					_pad setDir 130;
					GW_TrainingGround_spawnedAssets pushBack _pad;
				}foreach _parkingSlots;
			};
			case 7:
			{
				_parkingSlots = ["VTOLPark","VTOLPark_1","VTOLPark_2","VTOLPark_3","VTOLPark_4","VTOLPark_5","VTOLPark_6","VTOLPark_7"];
				{
					_position = getMarkerPos _x;
					_heli = createVehicle ["JAS_O_Plane_CAS_02_F", _position, [], 0, "CAN_COLLIDE"];
					_heli setDir 130;
					GW_TrainingGround_spawnedAssets pushBack _heli;
					_pad = createVehicle ["Land_HelipadCivil_F", _position, [], 0, "CAN_COLLIDE"];
					_pad setDir 130;
					GW_TrainingGround_spawnedAssets pushBack _pad;
				}foreach _parkingSlots;
			};
		};
		default
		{
			hint "CODE FAIL. aircraftSpawner.sqf Banshee/aircraftID Switch";
		};
	};
	case "Spooky":
	{
		switch (_aircraftID) do
		{
			case 0:
			{};
			case 1:
			{
				_parkingSlots = ["VTOLPark","VTOLPark_1","VTOLPark_2","VTOLPark_3","VTOLPark_4","VTOLPark_5","VTOLPark_6","VTOLPark_7"];
				{
					_position = getMarkerPos _x;
					_heli = createVehicle ["CUP_B_AC47_Spooky_USA", _position, [], 0, "CAN_COLLIDE"];
					_heli setDir 130;
					GW_TrainingGround_spawnedAssets pushBack _heli;
					_pad = createVehicle ["Land_HelipadCivil_F", _position, [], 0, "CAN_COLLIDE"];
					_pad setDir 130;
					GW_TrainingGround_spawnedAssets pushBack _pad;
				}foreach _parkingSlots;
			};
			case 2:
			{
				_parkingSlots = ["VTOLPark","VTOLPark_1","VTOLPark_2","VTOLPark_3","VTOLPark_4","VTOLPark_5","VTOLPark_6","VTOLPark_7"];
				{
					_position = getMarkerPos _x;
					_heli = createVehicle ["B_T_VTOL_01_armed_F", _position, [], 0, "CAN_COLLIDE"];
					_heli setDir 130;
					GW_TrainingGround_spawnedAssets pushBack _heli;
					_pad = createVehicle ["Land_HelipadCivil_F", _position, [], 0, "CAN_COLLIDE"];
					_pad setDir 130;
					GW_TrainingGround_spawnedAssets pushBack _pad;
				}foreach _parkingSlots;
			};
			case 3:
			{
				_parkingSlots = ["VTOLPark","VTOLPark_1","VTOLPark_2","VTOLPark_3","VTOLPark_4","VTOLPark_5","VTOLPark_6","VTOLPark_7"];
				{
					_position = getMarkerPos _x;
					_heli = createVehicle ["O_T_VTOL_02_infantry_F", _position, [], 0, "CAN_COLLIDE"];
					_heli setDir 130;
					GW_TrainingGround_spawnedAssets pushBack _heli;
					_pad = createVehicle ["Land_HelipadCivil_F", _position, [], 0, "CAN_COLLIDE"];
					_pad setDir 130;
					GW_TrainingGround_spawnedAssets pushBack _pad;
				}foreach _parkingSlots;
			};
		};
		default
		{
			hint "CODE FAIL. aircraftSpawner.sqf Spooky/aircraftID Switch";
		};
	};
	case "Raven":
	{
		switch (_aircraftID) do
		{
			case 0:
			{};
			case 1:
			{
				_position = getmarkerpos "ravenSolo";
				_heli = createVehicle ["JAS_CUP_B_AW159_Unarmed_GB", _position, [], 0, "CAN_COLLIDE"];
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Raven"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 2:
			{
				_position = getmarkerpos "ravenSolo";
				_heli = createVehicle ["O_Heli_Light_02_unarmed_F", _position, [], 0, "CAN_COLLIDE"];
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Raven"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 3:
			{
				_position = getmarkerpos "ravenSolo";
				_heli = createVehicle ["JAS_CUP_B_MH6J_SOAR", _position, [], 0, "CAN_COLLIDE"];
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Raven"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 4:
			{
				_position = getmarkerpos "ravenSolo";
				_heli = createVehicle ["B_Heli_Light_01_F", _position, [], 0, "CAN_COLLIDE"];
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Raven"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 5:
			{
				_position = getmarkerpos "ravenSolo";
				_heli = createVehicle ["JAS_CUP_B_MH60L_DAP_4x_AT_USN_AAC", _position, [], 0, "CAN_COLLIDE"];
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Raven"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 6:
			{
				_position = getmarkerpos "ravenSolo";
				_heli = createVehicle ["JAS_CUP_O_Mi8_CHDKZ", _position, [], 0, "CAN_COLLIDE"];
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Raven"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 7:
			{
				_position = getmarkerpos "ravenSolo";
				_heli = createVehicle ["JAS_CUP_B_Mi17_CDF", _position, [], 0, "CAN_COLLIDE"];
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Raven"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 8:
			{
				_position = getmarkerpos "ravenSolo";
				_heli = createVehicle ["JAS_CUP_B_Mi24_D_CDF", _position, [], 0, "CAN_COLLIDE"];
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Raven"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 9:
			{
				_position = getmarkerpos "ravenSolo";
				_heli = createVehicle ["JAS_CUP_B_SA330_Puma_HC2_BAF", _position, [], 0, "CAN_COLLIDE"];
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Raven"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 10:
			{
				_position = getmarkerpos "ravenSolo";
				_heli = createVehicle ["CUP_B_UH1Y_UNA_USMC", _position, [], 0, "CAN_COLLIDE"];
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Raven"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 11:
			{
				_position = getmarkerpos "ravenSolo";
				_heli = createVehicle ["CUP_B_UH60L_FFV_US", _position, [], 0, "CAN_COLLIDE"];
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Raven"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 12:
			{
				_position = getmarkerpos "ravenSolo";
				_heli = createVehicle ["B_Heli_Transport_01_F", _position, [], 0, "CAN_COLLIDE"];
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Raven"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
		};
		default
		{
			hint "CODE FAIL. aircraftSpawner.sqf Raven/aircraftID Switch";
		};
	};
	case "Giant":
	{
		switch (_aircraftID) do
		{
			case 0:
			{};
			case 1:
			{
				_position = getmarkerpos "ravenSolo";
				_heli = createVehicle ["B_Heli_Transport_03_unarmed_F", _position, [], 0, "CAN_COLLIDE"];
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Giant"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 2:
			{
				_position = getmarkerpos "ravenSolo";
				_heli = createVehicle ["JAS_CUP_B_CH53E_USMC", _position, [], 0, "CAN_COLLIDE"];
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Giant"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 3:
			{
				_position = getmarkerpos "ravenSolo";
				_heli = createVehicle ["JAS_CUP_B_Merlin_HC3_GB_Armed", _position, [], 0, "CAN_COLLIDE"];
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Giant"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 4:
			{
				_position = getmarkerpos "ravenSolo";
				_heli = createVehicle ["JAS_CUP_B_CH47F_GB", _position, [], 0, "CAN_COLLIDE"];
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Giant"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 5:
			{
				_position = getmarkerpos "ravenSolo";
				_heli = createVehicle ["JAS_CUP_O_Mi8_CHDKZ", _position, [], 0, "CAN_COLLIDE"];
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Giant"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 6:
			{
				_position = getmarkerpos "ravenSolo";
				_heli = createVehicle ["JAS_CUP_B_Mi17_CDF", _position, [], 0, "CAN_COLLIDE"];
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Giant"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 7:
			{
				_position = getmarkerpos "ravenSolo";
				_heli = createVehicle ["O_Heli_Transport_04_bench_F", _position, [], 0, "CAN_COLLIDE"];
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Giant"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
		};
		default
		{
			hint "CODE FAIL. aircraftSpawner.sqf Giant/aircraftID Switch";
		};
	};
	case "Condor":
	{
		switch (_aircraftID) do
		{
			case 0:
			{};
			case 1:
			{
				_position = getmarkerpos "ravenSolo";
				_heli = createVehicle ["CUP_B_MV22_USMC_RAMPGUN", _position, [], 0, "CAN_COLLIDE"];
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Condor"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 2:
			{
				_position = getmarkerpos "ravenSolo";
				_heli = createVehicle ["B_T_VTOL_01_infantry_F", _position, [], 0, "CAN_COLLIDE"];
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Condor"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
			case 3:
			{
				_position = getmarkerpos "ravenSolo";
				_heli = createVehicle ["O_T_VTOL_02_infantry_F", _position, [], 0, "CAN_COLLIDE"];
				GW_TrainingGround_soloBird = _heli;
				GW_TrainingGround_spawnedAssets pushBack _heli;
				GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird,"Condor"] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
			};
		};
		default
		{
			hint "CODE FAIL. aircraftSpawner.sqf Condor/aircraftID Switch";
		};
	};
	default
	{
		hint "CODE FAIL. aircraftSpawner.sqf Callsign Switch";
	};
 };
 
 Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",bullShit,5];
 Laptop_1 addAction ["<t color='#FFFF00'>Reset Training Area","[] call GW_TrainingGround_Fnc_resetTraining;",bullShit,5];
 Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",bullShit,5];
 Laptop_1 addAction ["<t color='#FFFF00'>Raven Normal Ops Exercise</t>","Modules\TrainingGround\scripts\spawnAircraft.sqf",["Raven",2],1,false,false,"",""];
 Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
 Laptop_1 addAction ["<t color='#FFFF00'>Raven Urban Ops Exercise</t>","Modules\TrainingGround\scripts\spawnAircraft.sqf",["Raven",3],1,false,false,"",""];
 Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
 Laptop_1 addAction ["<t color='#FFFF00'>Raven Special Ops Exercise</t>","Modules\TrainingGround\scripts\spawnAircraft.sqf",["Raven",4],1,false,false,"",""];
 Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
 Laptop_1 addAction ["<t color='#FFFF00'>Raven Air Assault Exercise</t>","Modules\TrainingGround\scripts\spawnAircraft.sqf",["Raven",5],1,false,false,"",""];
 Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
 Laptop_1 addAction ["<t color='#FFFF00'>Giant Insertions Ops Exercise</t>","Modules\TrainingGround\scripts\spawnAircraft.sqf",["Giant",2],1,false,false,"",""];
 Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
 Laptop_1 addAction ["<t color='#FFFF00'>Giant Sling Load Ops Exercise</t>","Modules\TrainingGround\scripts\spawnAircraft.sqf",["Giant",3],1,false,false,"",""];
 Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
 Laptop_1 addAction ["<t color='#FFFF00'>Condor VTOL HLS Exercise</t>","Modules\TrainingGround\scripts\spawnAircraft.sqf",["Condor",2],1,false,false,"",""];
 Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
 Laptop_1 addAction ["<t color='#FFFF00'>Condor Paradrop Exercise</t>","Modules\TrainingGround\scripts\spawnAircraft.sqf",["Condor",3],1,false,false,"",""];
 Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
 Laptop_1 addAction ["<t color='#FF00FF'>Angel Options</t>","Modules\TrainingGround\scripts\aircraftOptions.sqf",[1],1,false,false,"",""];
 Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
 Laptop_1 addAction ["<t color='#FF00FF'>Zeus Options</t>","Modules\TrainingGround\scripts\aircraftOptions.sqf",[2],1,false,false,"",""];
 Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
 Laptop_1 addAction ["<t color='#FF00FF'>Phantom Options</t>","Modules\TrainingGround\scripts\aircraftOptions.sqf",[3],1,false,false,"",""];
 Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
 Laptop_1 addAction ["<t color='#FF00FF'>Banshee Options</t>","Modules\TrainingGround\scripts\aircraftOptions.sqf",[4],1,false,false,"",""];
 Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
 Laptop_1 addAction ["<t color='#FF00FF'>Spooky Options</t>","Modules\TrainingGround\scripts\aircraftOptions.sqf",[5],1,false,false,"",""];
 Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
 Laptop_1 addAction ["<t color='#42c5f4'>Raven Solo HLS Generator</t>","Modules\TrainingGround\scripts\aircraftOptions.sqf",[6],1,false,false,"",""];
 Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
 Laptop_1 addAction ["<t color='#42c5f4'>Giant Solo HLS Generator</t>","Modules\TrainingGround\scripts\aircraftOptions.sqf",[7],1,false,false,"",""];
 Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
 Laptop_1 addAction ["<t color='#42c5f4'>Condor VTOL Solo HLS Generator</t>","Modules\TrainingGround\scripts\aircraftOptions.sqf",[8],1,false,false,"",""];
 Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
 