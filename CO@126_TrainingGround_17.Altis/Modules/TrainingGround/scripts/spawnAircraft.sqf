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
							case 1:
							{
								_position = getmarkerpos "ravenSolo";
								if(isServer) then
								{
									_heli = createVehicle ["O_Heli_Light_02_F", _position, [], 0, "CAN_COLLIDE"];
									GW_TrainingGround_soloBird = _heli;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								};
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Callsign/Exercise Switch";
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
								if(isServer) then
								{
									_heli = createVehicle ["O_Heli_Light_02_v2_F", _position, [], 0, "CAN_COLLIDE"];
									GW_TrainingGround_soloBird = _heli;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								};
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Callsign/Exercise Switch";
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
								if(isServer) then
								{
									_heli = createVehicle ["O_Heli_Light_02_v2_F", _position, [], 0, "CAN_COLLIDE"];
									GW_TrainingGround_soloBird = _heli;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								};
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Callsign/Exercise Switch";
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
								if(isServer) then
								{
									_heli = createVehicle ["JAS_CUP_O_Mi8_AAC", _position, [], 0, "CAN_COLLIDE"];
									GW_TrainingGround_soloBird = _heli;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								};
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Callsign/Exercise Switch";
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
								if(isServer) then
								{
									_heli = createVehicle ["JAS_CUP_O_Mi17_AAC", _position, [], 0, "CAN_COLLIDE"];
									GW_TrainingGround_soloBird = _heli;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								};
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Callsign/Exercise Switch";
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
								if(isServer) then
								{
									_heli = createVehicle ["JAS_CUP_O_Mi17_AAC", _position, [], 0, "CAN_COLLIDE"];
									GW_TrainingGround_soloBird = _heli;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								};
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Callsign/Exercise Switch";
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
								if(isServer) then
								{
									_heli = createVehicle ["JAS_CUP_O_Mi17_AAC", _position, [], 0, "CAN_COLLIDE"];
									GW_TrainingGround_soloBird = _heli;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								};
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Callsign/Exercise Switch";
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
								if(isServer) then
								{
									_heli = createVehicle ["O_Heli_Light_02_v2_F", _position, [], 0, "CAN_COLLIDE"];
									GW_TrainingGround_soloBird = _heli;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								};
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/OPFOR/Callsign/Exercise Switch";
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
								if(isServer) then
								{
									_heli = createVehicle ["B_Heli_Transport_01_F", _position, [], 0, "CAN_COLLIDE"];
									GW_TrainingGround_soloBird = _heli;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								};
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/BLUFOR/Callsign/Exercise Switch";
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
								if(isServer) then
								{
									_heli = createVehicle ["B_Heli_Transport_01_camo_F", _position, [], 0, "CAN_COLLIDE"];
									GW_TrainingGround_soloBird = _heli;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								};
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/BLUFOR/Callsign/Exercise Switch";
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
								if(isServer) then
								{
									_heli = createVehicle ["JAS_CUP_B_AW159_Unarmed_AAC", _position, [], 0, "CAN_COLLIDE"];
									GW_TrainingGround_soloBird = _heli;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								};
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/BLUFOR/Callsign/Exercise Switch";
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
								if(isServer) then
								{
									_heli = createVehicle ["JAS_CUP_B_AW159_Unarmed_AAC", _position, [], 0, "CAN_COLLIDE"];
									GW_TrainingGround_soloBird = _heli;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								};
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/BLUFOR/Callsign/Exercise Switch";
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
								if(isServer) then
								{
									_heli = createVehicle ["JAS_CUP_B_MH60S_FFV_AAC", _position, [], 0, "CAN_COLLIDE"];
									GW_TrainingGround_soloBird = _heli;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								};
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/BLUFOR/Callsign/Exercise Switch";
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
								if(isServer) then
								{
									_heli = createVehicle ["JAS_CUP_B_MH60S_FFV_AAC", _position, [], 0, "CAN_COLLIDE"];
									GW_TrainingGround_soloBird = _heli;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								};
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/BLUFOR/Callsign/Exercise Switch";
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
								if(isServer) then
								{
									_heli = createVehicle ["JAS_CUP_B_Mi17_AAC", _position, [], 0, "CAN_COLLIDE"];
									GW_TrainingGround_soloBird = _heli;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								};
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/BLUFOR/Callsign/Exercise Switch";
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
								if(isServer) then
								{
									_heli = createVehicle ["JAS_CUP_B_Mi17_AAC", _position, [], 0, "CAN_COLLIDE"];
									GW_TrainingGround_soloBird = _heli;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								};
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/BLUFOR/Callsign/Exercise Switch";
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
								if(isServer) then
								{
									_heli = createVehicle ["B_Heli_Transport_01_camo_F", _position, [], 0, "CAN_COLLIDE"];
									GW_TrainingGround_soloBird = _heli;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								};
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/BLUFOR/Callsign/Exercise Switch";
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
								if(isServer) then
								{
									_heli = createVehicle ["I_Heli_light_03_F", _position, [], 0, "CAN_COLLIDE"];
									GW_TrainingGround_soloBird = _heli;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								};
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/INDEP/Callsign/Exercise Switch";
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
								if(isServer) then
								{
									_heli = createVehicle ["CUP_I_Ka60_GL_Blk_ION", _position, [], 0, "CAN_COLLIDE"];
									GW_TrainingGround_soloBird = _heli;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								};
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/INDEP/Callsign/Exercise Switch";
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
								if(isServer) then
								{
									_heli = createVehicle ["JAS_CUP_I_SA330_Puma_HC2_AAC", _position, [], 0, "CAN_COLLIDE"];
									GW_TrainingGround_soloBird = _heli;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								};
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/INDEP/Callsign/Exercise Switch";
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
								if(isServer) then
								{
									_heli = createVehicle ["JAS_CUP_I_SA330_Puma_HC2_AAC", _position, [], 0, "CAN_COLLIDE"];
									GW_TrainingGround_soloBird = _heli;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								};
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/INDEP/Callsign/Exercise Switch";
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
								if(isServer) then
								{
									_heli = createVehicle ["B_Heli_Transport_01_camo_F", _position, [], 0, "CAN_COLLIDE"];
									GW_TrainingGround_soloBird = _heli;
									GW_TrainingGround_spawnedAssets pushBack _heli;
								};
								GW_TrainingGround_SoloFSM = [_caller,_side,6,GW_TrainingGround_soloBird] execFSM "Modules\TrainingGround\FSM\soloFlight.fsm";
							};
							default
							{
								hint "CODE FAIL. spawnAircraft.sqf Main/INDEP/Callsign/Exercise Switch";
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
 