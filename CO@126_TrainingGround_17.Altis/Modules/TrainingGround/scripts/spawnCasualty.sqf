/*
 * Module Script that confirms the exercise requested and spawns the relevant aircraft
 * 
 */
 
 #include "..\scriptComponent.hpp"
 
 // Store Incoming Data
 _caller = _this select 1;
 _exerciseID = _this select 3 select 0;
 
 // Gather Relevant Variables
 _side = getNumber(configfile >> "CfgVehicles" >> (typeOf _caller) >> "side"); // 0 = OPFOR, 1 = BLUFOR, 2 = INDEP, 3 = CIV
 _blufor = GW_Gear_Blufor;
 _opfor = GW_Gear_Opfor;
 _indep = GW_Gear_Independent;
 
 // Clear global array
 {
	deleteVehicle _x;
 }foreach GW_TrainingGround_spawnedOPFOR;
 
 // Main Switch
 switch (_side) do
 {
	case 0: // OPFOR
	{
		switch (_opfor) do
		{
			case "CSAT-H":
			{
				switch (_exerciseID) do
				{
					case 1:
					{
						_group = createGroup east;
						'O_Soldier_F' createUnit [getmarkerPos 'PatientSpawn', _group,'pat1=this; dostop pat1'];
						_hitpoints = ["head","body","hand_l","hand_r","leg_l","leg_r"];
						{
							_hit = selectRandom ["true","false"];
							if(_hit == "true")then
							{
								[pat1, selectRandom[0.5,0.7,0.9], _x, selectrandom ["bullet","grenade","explosive","shell","vehiclecrash","backblast","stab","punch","falling""ropeburn"]] call ace_medical_fnc_addDamageToUnit;
							};
						}foreach _hitpoints;
						[pat1, 0.7, "body", "bullet"] call ace_medical_fnc_addDamageToUnit;
						[pat1] call ace_medical_fnc_handleDamage_advancedSetDamage;
						[pat1,true,600,true] call ace_medical_fnc_setUnconscious;
						GW_TrainingGround_spawnedOPFOR pushBack pat1;
					};
					case 2:
					{
						_group = group _caller;
						_heli = createVehicle ["O_Heli_Light_02_F", [8422.48,18207.7,4.57764e-005], [], 0, "CAN_COLLIDE"];
						_heli setDir 115;
						GW_TrainingGround_spawnedAssets pushBack _heli;
						GW_TrainingGround_AACFSM = [_caller,_side,6,"casevac",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
					};
					case 3:
					{
						_group = group _caller;
						_heli = createVehicle ["O_Heli_Light_02_F", [8422.48,18207.7,4.57764e-005], [], 0, "CAN_COLLIDE"];
						_heli setDir 115;
						GW_TrainingGround_spawnedAssets pushBack _heli;
						GW_TrainingGround_AACFSM = [_caller,_side,6,"casevacL",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
					};
					default
					{
						hint "CODE FAIL. spawnCasualty.sqf Main/OPFOR/Callsign/Exercise Switch";
					};
				};
			};
			case "CSAT-W":
			{
				switch (_exerciseID) do
				{
					case 1:
					{
						_group = createGroup east;
						'O_Soldier_F' createUnit [getmarkerPos 'PatientSpawn', _group,'pat1=this; dostop pat1'];
						_hitpoints = ["head","body","hand_l","hand_r","leg_l","leg_r"];
						{
							_hit = selectRandom ["true","false"];
							if(_hit == "true")then
							{
								[pat1, selectRandom[0.5,0.7,0.9], _x, selectrandom ["bullet","grenade","explosive","shell","vehiclecrash","backblast","stab","punch","falling""ropeburn"]] call ace_medical_fnc_addDamageToUnit;
							};
						}foreach _hitpoints;
						[pat1, 0.7, "body", "bullet"] call ace_medical_fnc_addDamageToUnit;
						[pat1] call ace_medical_fnc_handleDamage_advancedSetDamage;
						[pat1,true,600,true] call ace_medical_fnc_setUnconscious;
						GW_TrainingGround_spawnedOPFOR pushBack pat1;
					};
					case 2:
					{
						_group = group _caller;
						_heli = createVehicle ["O_Heli_Light_02_F", [8422.48,18207.7,4.57764e-005], [], 0, "CAN_COLLIDE"];
						_heli setDir 115;
						GW_TrainingGround_spawnedAssets pushBack _heli;
						GW_TrainingGround_AACFSM = [_caller,_side,6,"casevac",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
					};
					case 3:
					{
						_group = group _caller;
						_heli = createVehicle ["O_Heli_Light_02_F", [8422.48,18207.7,4.57764e-005], [], 0, "CAN_COLLIDE"];
						_heli setDir 115;
						GW_TrainingGround_spawnedAssets pushBack _heli;
						GW_TrainingGround_AACFSM = [_caller,_side,6,"casevacL",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
					};
					default
					{
						hint "CODE FAIL. spawnCasualty.sqf Main/OPFOR/Callsign/Exercise Switch";
					};
				};
			};
			case "CSAT-U":
			{
				switch (_exerciseID) do
				{
					case 1:
					{
						_group = createGroup east;
						'O_Soldier_F' createUnit [getmarkerPos 'PatientSpawn', _group,'pat1=this; dostop pat1'];
						_hitpoints = ["head","body","hand_l","hand_r","leg_l","leg_r"];
						{
							_hit = selectRandom ["true","false"];
							if(_hit == "true")then
							{
								[pat1, selectRandom[0.5,0.7,0.9], _x, selectrandom ["bullet","grenade","explosive","shell","vehiclecrash","backblast","stab","punch","falling""ropeburn"]] call ace_medical_fnc_addDamageToUnit;
							};
						}foreach _hitpoints;
						[pat1, 0.7, "body", "bullet"] call ace_medical_fnc_addDamageToUnit;
						[pat1] call ace_medical_fnc_handleDamage_advancedSetDamage;
						[pat1,true,600,true] call ace_medical_fnc_setUnconscious;
						GW_TrainingGround_spawnedOPFOR pushBack pat1;
					};
					case 2:
					{
						_group = group _caller;
						_heli = createVehicle ["O_Heli_Light_02_F", [8422.48,18207.7,4.57764e-005], [], 0, "CAN_COLLIDE"];
						_heli setDir 115;
						GW_TrainingGround_spawnedAssets pushBack _heli;
						GW_TrainingGround_AACFSM = [_caller,_side,6,"casevac",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
					};
					case 3:
					{
						_group = group _caller;
						_heli = createVehicle ["O_Heli_Light_02_F", [8422.48,18207.7,4.57764e-005], [], 0, "CAN_COLLIDE"];
						_heli setDir 115;
						GW_TrainingGround_spawnedAssets pushBack _heli;
						GW_TrainingGround_AACFSM = [_caller,_side,6,"casevacL",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
					};
					default
					{
						hint "CODE FAIL. spawnCasualty.sqf Main/OPFOR/Callsign/Exercise Switch";
					};
				};
			};
			case "CSAT-V":
			{
				switch (_exerciseID) do
				{
					case 1:
					{
						_group = createGroup east;
						'O_Soldier_F' createUnit [getmarkerPos 'PatientSpawn', _group,'pat1=this; dostop pat1'];
						_hitpoints = ["head","body","hand_l","hand_r","leg_l","leg_r"];
						{
							_hit = selectRandom ["true","false"];
							if(_hit == "true")then
							{
								[pat1, selectRandom[0.5,0.7,0.9], _x, selectrandom ["bullet","grenade","explosive","shell","vehiclecrash","backblast","stab","punch","falling""ropeburn"]] call ace_medical_fnc_addDamageToUnit;
							};
						}foreach _hitpoints;
						[pat1, 0.7, "body", "bullet"] call ace_medical_fnc_addDamageToUnit;
						[pat1] call ace_medical_fnc_handleDamage_advancedSetDamage;
						[pat1,true,600,true] call ace_medical_fnc_setUnconscious;
						GW_TrainingGround_spawnedOPFOR pushBack pat1;
					};
					case 2:
					{
						_group = group _caller;
						_heli = createVehicle ["O_Heli_Light_02_F", [8422.48,18207.7,4.57764e-005], [], 0, "CAN_COLLIDE"];
						_heli setDir 115;
						GW_TrainingGround_spawnedAssets pushBack _heli;
						GW_TrainingGround_AACFSM = [_caller,_side,6,"casevac",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
					};
					case 3:
					{
						_group = group _caller;
						_heli = createVehicle ["O_Heli_Light_02_F", [8422.48,18207.7,4.57764e-005], [], 0, "CAN_COLLIDE"];
						_heli setDir 115;
						GW_TrainingGround_spawnedAssets pushBack _heli;
						GW_TrainingGround_AACFSM = [_caller,_side,6,"casevacL",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
					};
					default
					{
						hint "CODE FAIL. spawnCasualty.sqf Main/OPFOR/Callsign/Exercise Switch";
					};
				};
			};
			case "RUSSIAN-W":
			{
				switch (_exerciseID) do
				{
					case 1:
					{
						_group = createGroup east;
						'O_Soldier_F' createUnit [getmarkerPos 'PatientSpawn', _group,'pat1=this; dostop pat1'];
						_hitpoints = ["head","body","hand_l","hand_r","leg_l","leg_r"];
						{
							_hit = selectRandom ["true","false"];
							if(_hit == "true")then
							{
								[pat1, selectRandom[0.5,0.7,0.9], _x, selectrandom ["bullet","grenade","explosive","shell","vehiclecrash","backblast","stab","punch","falling""ropeburn"]] call ace_medical_fnc_addDamageToUnit;
							};
						}foreach _hitpoints;
						[pat1, 0.7, "body", "bullet"] call ace_medical_fnc_addDamageToUnit;
						[pat1] call ace_medical_fnc_handleDamage_advancedSetDamage;
						[pat1,true,600,true] call ace_medical_fnc_setUnconscious;
						GW_TrainingGround_spawnedOPFOR pushBack pat1;
					};
					case 2:
					{
						_group = group _caller;
						_heli = createVehicle ["JAS_CUP_O_Mi8_RU", [8422.48,18207.7,4.57764e-005], [], 0, "CAN_COLLIDE"];
						_heli setDir 115;
						GW_TrainingGround_spawnedAssets pushBack _heli;
						GW_TrainingGround_AACFSM = [_caller,_side,6,"casevac",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
					};
					case 3:
					{
						_group = group _caller;
						_heli = createVehicle ["JAS_CUP_O_Mi8_RU", [8422.48,18207.7,4.57764e-005], [], 0, "CAN_COLLIDE"];
						_heli setDir 115;
						GW_TrainingGround_spawnedAssets pushBack _heli;
						GW_TrainingGround_AACFSM = [_caller,_side,6,"casevacL",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
					};
					default
					{
						hint "CODE FAIL. spawnCasualty.sqf Main/OPFOR/Callsign/Exercise Switch";
					};
				};
			};
			case "SPETSNAZ":
			{
				switch (_exerciseID) do
				{
					case 1:
					{
						_group = createGroup east;
						'O_Soldier_F' createUnit [getmarkerPos 'PatientSpawn', _group,'pat1=this; dostop pat1'];
						_hitpoints = ["head","body","hand_l","hand_r","leg_l","leg_r"];
						{
							_hit = selectRandom ["true","false"];
							if(_hit == "true")then
							{
								[pat1, selectRandom[0.5,0.7,0.9], _x, selectrandom ["bullet","grenade","explosive","shell","vehiclecrash","backblast","stab","punch","falling""ropeburn"]] call ace_medical_fnc_addDamageToUnit;
							};
						}foreach _hitpoints;
						[pat1, 0.7, "body", "bullet"] call ace_medical_fnc_addDamageToUnit;
						[pat1] call ace_medical_fnc_handleDamage_advancedSetDamage;
						[pat1,true,600,true] call ace_medical_fnc_setUnconscious;
						GW_TrainingGround_spawnedOPFOR pushBack pat1;
					};
					case 2:
					{
						_group = group _caller;
						_heli = createVehicle ["JAS_CUP_O_Mi8_RU", [8422.48,18207.7,4.57764e-005], [], 0, "CAN_COLLIDE"];
						_heli setDir 115;
						GW_TrainingGround_spawnedAssets pushBack _heli;
						GW_TrainingGround_AACFSM = [_caller,_side,6,"casevac",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
					};
					case 3:
					{
						_group = group _caller;
						_heli = createVehicle ["JAS_CUP_O_Mi8_RU", [8422.48,18207.7,4.57764e-005], [], 0, "CAN_COLLIDE"];
						_heli setDir 115;
						GW_TrainingGround_spawnedAssets pushBack _heli;
						GW_TrainingGround_AACFSM = [_caller,_side,6,"casevacL",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
					};
					default
					{
						hint "CODE FAIL. spawnCasualty.sqf Main/OPFOR/Callsign/Exercise Switch";
					};
				};
			};
			case "TAKIARMY-D":
			{
				switch (_exerciseID) do
				{
					case 1:
					{
						_group = createGroup east;
						'O_Soldier_F' createUnit [getmarkerPos 'PatientSpawn', _group,'pat1=this; dostop pat1'];
						_hitpoints = ["head","body","hand_l","hand_r","leg_l","leg_r"];
						{
							_hit = selectRandom ["true","false"];
							if(_hit == "true")then
							{
								[pat1, selectRandom[0.5,0.7,0.9], _x, selectrandom ["bullet","grenade","explosive","shell","vehiclecrash","backblast","stab","punch","falling""ropeburn"]] call ace_medical_fnc_addDamageToUnit;
							};
						}foreach _hitpoints;
						[pat1, 0.7, "body", "bullet"] call ace_medical_fnc_addDamageToUnit;
						[pat1] call ace_medical_fnc_handleDamage_advancedSetDamage;
						[pat1,true,600,true] call ace_medical_fnc_setUnconscious;
						GW_TrainingGround_spawnedOPFOR pushBack pat1;
					};
					case 2:
					{
						_group = group _caller;
						_heli = createVehicle ["JAS_CUP_O_Mi17_TK", [8422.48,18207.7,4.57764e-005], [], 0, "CAN_COLLIDE"];
						_heli setDir 115;
						GW_TrainingGround_spawnedAssets pushBack _heli;
						GW_TrainingGround_AACFSM = [_caller,_side,6,"casevac",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
					};
					case 3:
					{
						_group = group _caller;
						_heli = createVehicle ["JAS_CUP_O_Mi17_TK", [8422.48,18207.7,4.57764e-005], [], 0, "CAN_COLLIDE"];
						_heli setDir 115;
						GW_TrainingGround_spawnedAssets pushBack _heli;
						GW_TrainingGround_AACFSM = [_caller,_side,6,"casevacL",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
					};
					default
					{
						hint "CODE FAIL. spawnCasualty.sqf Main/OPFOR/Callsign/Exercise Switch";
					};
				};
			};
			case "SLA":
			{
				switch (_exerciseID) do
				{
					case 1:
					{
						_group = createGroup east;
						'O_Soldier_F' createUnit [getmarkerPos 'PatientSpawn', _group,'pat1=this; dostop pat1'];
						_hitpoints = ["head","body","hand_l","hand_r","leg_l","leg_r"];
						{
							_hit = selectRandom ["true","false"];
							if(_hit == "true")then
							{
								[pat1, selectRandom[0.5,0.7,0.9], _x, selectrandom ["bullet","grenade","explosive","shell","vehiclecrash","backblast","stab","punch","falling""ropeburn"]] call ace_medical_fnc_addDamageToUnit;
							};
						}foreach _hitpoints;
						[pat1, 0.7, "body", "bullet"] call ace_medical_fnc_addDamageToUnit;
						[pat1] call ace_medical_fnc_handleDamage_advancedSetDamage;
						[pat1,true,600,true] call ace_medical_fnc_setUnconscious;
						GW_TrainingGround_spawnedOPFOR pushBack pat1;
					};
					case 2:
					{
						_group = group _caller;
						_heli = createVehicle ["JAS_CUP_O_Mi8_SLA_2", [8422.48,18207.7,4.57764e-005], [], 0, "CAN_COLLIDE"];
						_heli setDir 115;
						GW_TrainingGround_spawnedAssets pushBack _heli;
						GW_TrainingGround_AACFSM = [_caller,_side,6,"casevac",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
					};
					case 3:
					{
						_group = group _caller;
						_heli = createVehicle ["JAS_CUP_O_Mi8_SLA_2", [8422.48,18207.7,4.57764e-005], [], 0, "CAN_COLLIDE"];
						_heli setDir 115;
						GW_TrainingGround_spawnedAssets pushBack _heli;
						GW_TrainingGround_AACFSM = [_caller,_side,6,"casevacL",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
					};
					default
					{
						hint "CODE FAIL. spawnCasualty.sqf Main/OPFOR/Callsign/Exercise Switch";
					};
				};
			};
			case "INSURGENT-D":
			{
				switch (_exerciseID) do
				{
					case 1:
					{
						_group = createGroup east;
						'O_Soldier_F' createUnit [getmarkerPos 'PatientSpawn', _group,'pat1=this; dostop pat1'];
						_hitpoints = ["head","body","hand_l","hand_r","leg_l","leg_r"];
						{
							_hit = selectRandom ["true","false"];
							if(_hit == "true")then
							{
								[pat1, selectRandom[0.5,0.7,0.9], _x, selectrandom ["bullet","grenade","explosive","shell","vehiclecrash","backblast","stab","punch","falling""ropeburn"]] call ace_medical_fnc_addDamageToUnit;
							};
						}foreach _hitpoints;
						[pat1, 0.7, "body", "bullet"] call ace_medical_fnc_addDamageToUnit;
						[pat1] call ace_medical_fnc_handleDamage_advancedSetDamage;
						[pat1,true,600,true] call ace_medical_fnc_setUnconscious;
						GW_TrainingGround_spawnedOPFOR pushBack pat1;
					};
					case 2:
					{
						_group = group _caller;
						_heli = createVehicle ["JAS_CUP_O_Mi17_TK", [8422.48,18207.7,4.57764e-005], [], 0, "CAN_COLLIDE"];
						_heli setDir 115;
						GW_TrainingGround_spawnedAssets pushBack _heli;
						GW_TrainingGround_AACFSM = [_caller,_side,6,"casevac",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
					};
					case 3:
					{
						_group = group _caller;
						_heli = createVehicle ["JAS_CUP_O_Mi17_TK", [8422.48,18207.7,4.57764e-005], [], 0, "CAN_COLLIDE"];
						_heli setDir 115;
						GW_TrainingGround_spawnedAssets pushBack _heli;
						GW_TrainingGround_AACFSM = [_caller,_side,6,"casevacL",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
					};
					default
					{
						hint "CODE FAIL. spawnCasualty.sqf Main/OPFOR/Callsign/Exercise Switch";
					};
				};
			};
			case "INSURGENT-W":
			{
				switch (_exerciseID) do
				{
					case 1:
					{
						_group = createGroup east;
						'O_Soldier_F' createUnit [getmarkerPos 'PatientSpawn', _group,'pat1=this; dostop pat1'];
						_hitpoints = ["head","body","hand_l","hand_r","leg_l","leg_r"];
						{
							_hit = selectRandom ["true","false"];
							if(_hit == "true")then
							{
								[pat1, selectRandom[0.5,0.7,0.9], _x, selectrandom ["bullet","grenade","explosive","shell","vehiclecrash","backblast","stab","punch","falling""ropeburn"]] call ace_medical_fnc_addDamageToUnit;
							};
						}foreach _hitpoints;
						[pat1, 0.7, "body", "bullet"] call ace_medical_fnc_addDamageToUnit;
						[pat1] call ace_medical_fnc_handleDamage_advancedSetDamage;
						[pat1,true,600,true] call ace_medical_fnc_setUnconscious;
						GW_TrainingGround_spawnedOPFOR pushBack pat1;
					};
					case 2:
					{
						_group = group _caller;
						_heli = createVehicle ["JAS_CUP_O_Mi17_TK", [8422.48,18207.7,4.57764e-005], [], 0, "CAN_COLLIDE"];
						_heli setDir 115;
						GW_TrainingGround_spawnedAssets pushBack _heli;
						GW_TrainingGround_AACFSM = [_caller,_side,6,"casevac",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
					};
					case 3:
					{
						_group = group _caller;
						_heli = createVehicle ["JAS_CUP_O_Mi17_TK", [8422.48,18207.7,4.57764e-005], [], 0, "CAN_COLLIDE"];
						_heli setDir 115;
						GW_TrainingGround_spawnedAssets pushBack _heli;
						GW_TrainingGround_AACFSM = [_caller,_side,6,"casevacL",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
					};
					default
					{
						hint "CODE FAIL. spawnCasualty.sqf Main/OPFOR/Callsign/Exercise Switch";
					};
				};
			};
			case "CAMPAIGN-E":
			{
				switch (_exerciseID) do
				{
					case 1:
					{
						_group = createGroup east;
						'O_Soldier_F' createUnit [getmarkerPos 'PatientSpawn', _group,'pat1=this; dostop pat1'];
						_hitpoints = ["head","body","hand_l","hand_r","leg_l","leg_r"];
						{
							_hit = selectRandom ["true","false"];
							if(_hit == "true")then
							{
								[pat1, selectRandom[0.5,0.7,0.9], _x, selectrandom ["bullet","grenade","explosive","shell","vehiclecrash","backblast","stab","punch","falling""ropeburn"]] call ace_medical_fnc_addDamageToUnit;
							};
						}foreach _hitpoints;
						[pat1, 0.7, "body", "bullet"] call ace_medical_fnc_addDamageToUnit;
						[pat1] call ace_medical_fnc_handleDamage_advancedSetDamage;
						[pat1,true,600,true] call ace_medical_fnc_setUnconscious;
						GW_TrainingGround_spawnedOPFOR pushBack pat1;
					};
					case 2:
					{
						_group = group _caller;
						_heli = createVehicle ["JAS_CUP_O_Mi17_TK", [8422.48,18207.7,4.57764e-005], [], 0, "CAN_COLLIDE"];
						_heli setDir 115;
						GW_TrainingGround_spawnedAssets pushBack _heli;
						GW_TrainingGround_AACFSM = [_caller,_side,6,"casevac",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
					};
					case 3:
					{
						_group = group _caller;
						_heli = createVehicle ["JAS_CUP_O_Mi17_TK", [8422.48,18207.7,4.57764e-005], [], 0, "CAN_COLLIDE"];
						_heli setDir 115;
						GW_TrainingGround_spawnedAssets pushBack _heli;
						GW_TrainingGround_AACFSM = [_caller,_side,6,"casevacL",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
					};
					default
					{
						hint "CODE FAIL. spawnCasualty.sqf Main/OPFOR/Callsign/Exercise Switch";
					};
				};
			};
			default
			{
				hint "CODE FAIL. spawnCasualty.sqf Main/OPFOR Switch";
			};
		};
	};
	case 1: // BLUFOR
	{
		switch (_blufor) do
		{
			case "NATO-D":
			{
				switch (_exerciseID) do
				{
					case 1:
					{
						_group = createGroup west;
						'B_Soldier_F' createUnit [getmarkerPos 'PatientSpawn', _group,'pat1=this; dostop pat1'];
						_hitpoints = ["head","body","hand_l","hand_r","leg_l","leg_r"];
						{
							_hit = selectRandom ["true","false"];
							if(_hit == "true")then
							{
								[pat1, selectRandom[0.5,0.7,0.9], _x, selectrandom ["bullet","grenade","explosive","shell","vehiclecrash","backblast","stab","punch","falling""ropeburn"]] call ace_medical_fnc_addDamageToUnit;
							};
						}foreach _hitpoints;
						[pat1, 0.7, "body", "bullet"] call ace_medical_fnc_addDamageToUnit;
						[pat1] call ace_medical_fnc_handleDamage_advancedSetDamage;
						[pat1,true,600,true] call ace_medical_fnc_setUnconscious;
						GW_TrainingGround_spawnedOPFOR pushBack pat1;
					};
					case 2:
					{
						_group = group _caller;
						_heli = createVehicle ["B_Heli_Transport_01_camo_F", [8422.48,18207.7,4.57764e-005], [], 0, "CAN_COLLIDE"];
						_heli setDir 115;
						GW_TrainingGround_spawnedAssets pushBack _heli;
						GW_TrainingGround_AACFSM = [_caller,_side,6,"casevac",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
					};
					case 3:
					{
						_group = group _caller;
						_heli = createVehicle ["B_Heli_Transport_01_camo_F", [8422.48,18207.7,4.57764e-005], [], 0, "CAN_COLLIDE"];
						_heli setDir 115;
						GW_TrainingGround_spawnedAssets pushBack _heli;
						GW_TrainingGround_AACFSM = [_caller,_side,6,"casevacL",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
					};
					default
					{
						hint "CODE FAIL. spawnCasualty.sqf Main/OPFOR/Callsign/Exercise Switch";
					};
				};
			};
			case "NATO-W":
			{
				switch (_exerciseID) do
				{
					case 1:
					{
						_group = createGroup west;
						'B_Soldier_F' createUnit [getmarkerPos 'PatientSpawn', _group,'pat1=this; dostop pat1'];
						_hitpoints = ["head","body","hand_l","hand_r","leg_l","leg_r"];
						{
							_hit = selectRandom ["true","false"];
							if(_hit == "true")then
							{
								[pat1, selectRandom[0.5,0.7,0.9], _x, selectrandom ["bullet","grenade","explosive","shell","vehiclecrash","backblast","stab","punch","falling""ropeburn"]] call ace_medical_fnc_addDamageToUnit;
							};
						}foreach _hitpoints;
						[pat1, 0.7, "body", "bullet"] call ace_medical_fnc_addDamageToUnit;
						[pat1] call ace_medical_fnc_handleDamage_advancedSetDamage;
						[pat1,true,600,true] call ace_medical_fnc_setUnconscious;
						GW_TrainingGround_spawnedOPFOR pushBack pat1;
					};
					case 2:
					{
						_group = group _caller;
						_heli = createVehicle ["B_Heli_Transport_01_camo_F", [8422.48,18207.7,4.57764e-005], [], 0, "CAN_COLLIDE"];
						_heli setDir 115;
						GW_TrainingGround_spawnedAssets pushBack _heli;
						GW_TrainingGround_AACFSM = [_caller,_side,6,"casevac",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
					};
					case 3:
					{
						_group = group _caller;
						_heli = createVehicle ["B_Heli_Transport_01_camo_F", [8422.48,18207.7,4.57764e-005], [], 0, "CAN_COLLIDE"];
						_heli setDir 115;
						GW_TrainingGround_spawnedAssets pushBack _heli;
						GW_TrainingGround_AACFSM = [_caller,_side,6,"casevacL",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
					};
					default
					{
						hint "CODE FAIL. spawnCasualty.sqf Main/OPFOR/Callsign/Exercise Switch";
					};
				};
			};
			case "NATO-CTRG":
			{
				switch (_exerciseID) do
				{
					case 1:
					{
						_group = createGroup west;
						'B_Soldier_F' createUnit [getmarkerPos 'PatientSpawn', _group,'pat1=this; dostop pat1'];
						_hitpoints = ["head","body","hand_l","hand_r","leg_l","leg_r"];
						{
							_hit = selectRandom ["true","false"];
							if(_hit == "true")then
							{
								[pat1, selectRandom[0.5,0.7,0.9], _x, selectrandom ["bullet","grenade","explosive","shell","vehiclecrash","backblast","stab","punch","falling""ropeburn"]] call ace_medical_fnc_addDamageToUnit;
							};
						}foreach _hitpoints;
						[pat1, 0.7, "body", "bullet"] call ace_medical_fnc_addDamageToUnit;
						[pat1] call ace_medical_fnc_handleDamage_advancedSetDamage;
						[pat1,true,600,true] call ace_medical_fnc_setUnconscious;
						GW_TrainingGround_spawnedOPFOR pushBack pat1;
					};
					case 2:
					{
						_group = group _caller;
						_heli = createVehicle ["B_Heli_Transport_01_camo_F", [8422.48,18207.7,4.57764e-005], [], 0, "CAN_COLLIDE"];
						_heli setDir 115;
						GW_TrainingGround_spawnedAssets pushBack _heli;
						GW_TrainingGround_AACFSM = [_caller,_side,6,"casevac",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
					};
					case 3:
					{
						_group = group _caller;
						_heli = createVehicle ["B_Heli_Transport_01_camo_F", [8422.48,18207.7,4.57764e-005], [], 0, "CAN_COLLIDE"];
						_heli setDir 115;
						GW_TrainingGround_spawnedAssets pushBack _heli;
						GW_TrainingGround_AACFSM = [_caller,_side,6,"casevacL",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
					};
					default
					{
						hint "CODE FAIL. spawnCasualty.sqf Main/OPFOR/Callsign/Exercise Switch";
					};
				};
			};
			case "BAF-D":
			{
				switch (_exerciseID) do
				{
					case 1:
					{
						_group = createGroup west;
						'B_Soldier_F' createUnit [getmarkerPos 'PatientSpawn', _group,'pat1=this; dostop pat1'];
						_hitpoints = ["head","body","hand_l","hand_r","leg_l","leg_r"];
						{
							_hit = selectRandom ["true","false"];
							if(_hit == "true")then
							{
								[pat1, selectRandom[0.5,0.7,0.9], _x, selectrandom ["bullet","grenade","explosive","shell","vehiclecrash","backblast","stab","punch","falling""ropeburn"]] call ace_medical_fnc_addDamageToUnit;
							};
						}foreach _hitpoints;
						[pat1, 0.7, "body", "bullet"] call ace_medical_fnc_addDamageToUnit;
						[pat1] call ace_medical_fnc_handleDamage_advancedSetDamage;
						[pat1,true,600,true] call ace_medical_fnc_setUnconscious;
						GW_TrainingGround_spawnedOPFOR pushBack pat1;
					};
					case 2:
					{
						_group = group _caller;
						_heli = createVehicle ["JAS_CUP_B_AW159_Unarmed_GB", [8422.48,18207.7,4.57764e-005], [], 0, "CAN_COLLIDE"];
						_heli setDir 115;
						GW_TrainingGround_spawnedAssets pushBack _heli;
						GW_TrainingGround_AACFSM = [_caller,_side,6,"casevac",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
					};
					case 3:
					{
						_group = group _caller;
						_heli = createVehicle ["JAS_CUP_B_AW159_Unarmed_GB", [8422.48,18207.7,4.57764e-005], [], 0, "CAN_COLLIDE"];
						_heli setDir 115;
						GW_TrainingGround_spawnedAssets pushBack _heli;
						GW_TrainingGround_AACFSM = [_caller,_side,6,"casevacL",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
					};
					default
					{
						hint "CODE FAIL. spawnCasualty.sqf Main/OPFOR/Callsign/Exercise Switch";
					};
				};
			};
			case "SAS":
			{
				switch (_exerciseID) do
				{
					case 1:
					{
						_group = createGroup west;
						'B_Soldier_F' createUnit [getmarkerPos 'PatientSpawn', _group,'pat1=this; dostop pat1'];
						_hitpoints = ["head","body","hand_l","hand_r","leg_l","leg_r"];
						{
							_hit = selectRandom ["true","false"];
							if(_hit == "true")then
							{
								[pat1, selectRandom[0.5,0.7,0.9], _x, selectrandom ["bullet","grenade","explosive","shell","vehiclecrash","backblast","stab","punch","falling""ropeburn"]] call ace_medical_fnc_addDamageToUnit;
							};
						}foreach _hitpoints;
						[pat1, 0.7, "body", "bullet"] call ace_medical_fnc_addDamageToUnit;
						[pat1] call ace_medical_fnc_handleDamage_advancedSetDamage;
						[pat1,true,600,true] call ace_medical_fnc_setUnconscious;
						GW_TrainingGround_spawnedOPFOR pushBack pat1;
					};
					case 2:
					{
						_group = group _caller;
						_heli = createVehicle ["JAS_CUP_B_AW159_Unarmed_GB", [8422.48,18207.7,4.57764e-005], [], 0, "CAN_COLLIDE"];
						_heli setDir 115;
						GW_TrainingGround_spawnedAssets pushBack _heli;
						GW_TrainingGround_AACFSM = [_caller,_side,6,"casevac",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
					};
					case 3:
					{
						_group = group _caller;
						_heli = createVehicle ["JAS_CUP_B_AW159_Unarmed_GB", [8422.48,18207.7,4.57764e-005], [], 0, "CAN_COLLIDE"];
						_heli setDir 115;
						GW_TrainingGround_spawnedAssets pushBack _heli;
						GW_TrainingGround_AACFSM = [_caller,_side,6,"casevacL",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
					};
					default
					{
						hint "CODE FAIL. spawnCasualty.sqf Main/OPFOR/Callsign/Exercise Switch";
					};
				};
			};
			case "USMC-D":
			{
				switch (_exerciseID) do
				{
					case 1:
					{
						_group = createGroup west;
						'B_Soldier_F' createUnit [getmarkerPos 'PatientSpawn', _group,'pat1=this; dostop pat1'];
						_hitpoints = ["head","body","hand_l","hand_r","leg_l","leg_r"];
						{
							_hit = selectRandom ["true","false"];
							if(_hit == "true")then
							{
								[pat1, selectRandom[0.5,0.7,0.9], _x, selectrandom ["bullet","grenade","explosive","shell","vehiclecrash","backblast","stab","punch","falling""ropeburn"]] call ace_medical_fnc_addDamageToUnit;
							};
						}foreach _hitpoints;
						[pat1, 0.7, "body", "bullet"] call ace_medical_fnc_addDamageToUnit;
						[pat1] call ace_medical_fnc_handleDamage_advancedSetDamage;
						[pat1,true,600,true] call ace_medical_fnc_setUnconscious;
						GW_TrainingGround_spawnedOPFOR pushBack pat1;
					};
					case 2:
					{
						_group = group _caller;
						_heli = createVehicle ["JAS_CUP_B_MH60S_FFV_USMC", [8422.48,18207.7,4.57764e-005], [], 0, "CAN_COLLIDE"];
						_heli setDir 115;
						GW_TrainingGround_spawnedAssets pushBack _heli;
						GW_TrainingGround_AACFSM = [_caller,_side,6,"casevac",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
					};
					case 3:
					{
						_group = group _caller;
						_heli = createVehicle ["JAS_CUP_B_MH60S_FFV_USMC", [8422.48,18207.7,4.57764e-005], [], 0, "CAN_COLLIDE"];
						_heli setDir 115;
						GW_TrainingGround_spawnedAssets pushBack _heli;
						GW_TrainingGround_AACFSM = [_caller,_side,6,"casevacL",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
					};
					default
					{
						hint "CODE FAIL. spawnCasualty.sqf Main/OPFOR/Callsign/Exercise Switch";
					};
				};
			};
			case "USMC-W":
			{
				switch (_exerciseID) do
				{
					case 1:
					{
						_group = createGroup west;
						'B_Soldier_F' createUnit [getmarkerPos 'PatientSpawn', _group,'pat1=this; dostop pat1'];
						_hitpoints = ["head","body","hand_l","hand_r","leg_l","leg_r"];
						{
							_hit = selectRandom ["true","false"];
							if(_hit == "true")then
							{
								[pat1, selectRandom[0.5,0.7,0.9], _x, selectrandom ["bullet","grenade","explosive","shell","vehiclecrash","backblast","stab","punch","falling""ropeburn"]] call ace_medical_fnc_addDamageToUnit;
							};
						}foreach _hitpoints;
						[pat1, 0.7, "body", "bullet"] call ace_medical_fnc_addDamageToUnit;
						[pat1] call ace_medical_fnc_handleDamage_advancedSetDamage;
						[pat1,true,600,true] call ace_medical_fnc_setUnconscious;
						GW_TrainingGround_spawnedOPFOR pushBack pat1;
					};
					case 2:
					{
						_group = group _caller;
						_heli = createVehicle ["JAS_CUP_B_MH60S_FFV_USMC", [8422.48,18207.7,4.57764e-005], [], 0, "CAN_COLLIDE"];
						_heli setDir 115;
						GW_TrainingGround_spawnedAssets pushBack _heli;
						GW_TrainingGround_AACFSM = [_caller,_side,6,"casevac",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
					};
					case 3:
					{
						_group = group _caller;
						_heli = createVehicle ["JAS_CUP_B_MH60S_FFV_USMC", [8422.48,18207.7,4.57764e-005], [], 0, "CAN_COLLIDE"];
						_heli setDir 115;
						GW_TrainingGround_spawnedAssets pushBack _heli;
						GW_TrainingGround_AACFSM = [_caller,_side,6,"casevacL",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
					};
					default
					{
						hint "CODE FAIL. spawnCasualty.sqf Main/OPFOR/Callsign/Exercise Switch";
					};
				};
			};
			case "MARSOC":
			{
				switch (_exerciseID) do
				{
					case 1:
					{
						_group = createGroup west;
						'B_Soldier_F' createUnit [getmarkerPos 'PatientSpawn', _group,'pat1=this; dostop pat1'];
						_hitpoints = ["head","body","hand_l","hand_r","leg_l","leg_r"];
						{
							_hit = selectRandom ["true","false"];
							if(_hit == "true")then
							{
								[pat1, selectRandom[0.5,0.7,0.9], _x, selectrandom ["bullet","grenade","explosive","shell","vehiclecrash","backblast","stab","punch","falling""ropeburn"]] call ace_medical_fnc_addDamageToUnit;
							};
						}foreach _hitpoints;
						[pat1, 0.7, "body", "bullet"] call ace_medical_fnc_addDamageToUnit;
						[pat1] call ace_medical_fnc_handleDamage_advancedSetDamage;
						[pat1,true,600,true] call ace_medical_fnc_setUnconscious;
						GW_TrainingGround_spawnedOPFOR pushBack pat1;
					};
					case 2:
					{
						_group = group _caller;
						_heli = createVehicle ["JAS_CUP_B_MH60S_FFV_USMC", [8422.48,18207.7,4.57764e-005], [], 0, "CAN_COLLIDE"];
						_heli setDir 115;
						GW_TrainingGround_spawnedAssets pushBack _heli;
						GW_TrainingGround_AACFSM = [_caller,_side,6,"casevac",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
					};
					case 3:
					{
						_group = group _caller;
						_heli = createVehicle ["JAS_CUP_B_MH60S_FFV_USMC", [8422.48,18207.7,4.57764e-005], [], 0, "CAN_COLLIDE"];
						_heli setDir 115;
						GW_TrainingGround_spawnedAssets pushBack _heli;
						GW_TrainingGround_AACFSM = [_caller,_side,6,"casevacL",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
					};
					default
					{
						hint "CODE FAIL. spawnCasualty.sqf Main/OPFOR/Callsign/Exercise Switch";
					};
				};
			};
			case "ACR":
			{
				switch (_exerciseID) do
				{
					case 1:
					{
						_group = createGroup west;
						'B_Soldier_F' createUnit [getmarkerPos 'PatientSpawn', _group,'pat1=this; dostop pat1'];
						_hitpoints = ["head","body","hand_l","hand_r","leg_l","leg_r"];
						{
							_hit = selectRandom ["true","false"];
							if(_hit == "true")then
							{
								[pat1, selectRandom[0.5,0.7,0.9], _x, selectrandom ["bullet","grenade","explosive","shell","vehiclecrash","backblast","stab","punch","falling""ropeburn"]] call ace_medical_fnc_addDamageToUnit;
							};
						}foreach _hitpoints;
						[pat1, 0.7, "body", "bullet"] call ace_medical_fnc_addDamageToUnit;
						[pat1] call ace_medical_fnc_handleDamage_advancedSetDamage;
						[pat1,true,600,true] call ace_medical_fnc_setUnconscious;
						GW_TrainingGround_spawnedOPFOR pushBack pat1;
					};
					case 2:
					{
						_group = group _caller;
						_heli = createVehicle ["JAS_CUP_B_Mi171Sh_ACR", [8422.48,18207.7,4.57764e-005], [], 0, "CAN_COLLIDE"];
						_heli setDir 115;
						GW_TrainingGround_spawnedAssets pushBack _heli;
						GW_TrainingGround_AACFSM = [_caller,_side,6,"casevac",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
					};
					case 3:
					{
						_group = group _caller;
						_heli = createVehicle ["JAS_CUP_B_Mi171Sh_ACR", [8422.48,18207.7,4.57764e-005], [], 0, "CAN_COLLIDE"];
						_heli setDir 115;
						GW_TrainingGround_spawnedAssets pushBack _heli;
						GW_TrainingGround_AACFSM = [_caller,_side,6,"casevacL",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
					};
					default
					{
						hint "CODE FAIL. spawnCasualty.sqf Main/OPFOR/Callsign/Exercise Switch";
					};
				};
			};
			case "601STSFG":
			{
				switch (_exerciseID) do
				{
					case 1:
					{
						_group = createGroup west;
						'B_Soldier_F' createUnit [getmarkerPos 'PatientSpawn', _group,'pat1=this; dostop pat1'];
						_hitpoints = ["head","body","hand_l","hand_r","leg_l","leg_r"];
						{
							_hit = selectRandom ["true","false"];
							if(_hit == "true")then
							{
								[pat1, selectRandom[0.5,0.7,0.9], _x, selectrandom ["bullet","grenade","explosive","shell","vehiclecrash","backblast","stab","punch","falling""ropeburn"]] call ace_medical_fnc_addDamageToUnit;
							};
						}foreach _hitpoints;
						[pat1, 0.7, "body", "bullet"] call ace_medical_fnc_addDamageToUnit;
						[pat1] call ace_medical_fnc_handleDamage_advancedSetDamage;
						[pat1,true,600,true] call ace_medical_fnc_setUnconscious;
						GW_TrainingGround_spawnedOPFOR pushBack pat1;
					};
					case 2:
					{
						_group = group _caller;
						_heli = createVehicle ["JAS_CUP_B_Mi171Sh_ACR", [8422.48,18207.7,4.57764e-005], [], 0, "CAN_COLLIDE"];
						_heli setDir 115;
						GW_TrainingGround_spawnedAssets pushBack _heli;
						GW_TrainingGround_AACFSM = [_caller,_side,6,"casevac",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
					};
					case 3:
					{
						_group = group _caller;
						_heli = createVehicle ["JAS_CUP_B_Mi171Sh_ACR", [8422.48,18207.7,4.57764e-005], [], 0, "CAN_COLLIDE"];
						_heli setDir 115;
						GW_TrainingGround_spawnedAssets pushBack _heli;
						GW_TrainingGround_AACFSM = [_caller,_side,6,"casevacL",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
					};
					default
					{
						hint "CODE FAIL. spawnCasualty.sqf Main/OPFOR/Callsign/Exercise Switch";
					};
				};
			};
			case "CDF-D":
			{
				switch (_exerciseID) do
				{
					case 1:
					{
						_group = createGroup west;
						'B_Soldier_F' createUnit [getmarkerPos 'PatientSpawn', _group,'pat1=this; dostop pat1'];
						_hitpoints = ["head","body","hand_l","hand_r","leg_l","leg_r"];
						{
							_hit = selectRandom ["true","false"];
							if(_hit == "true")then
							{
								[pat1, selectRandom[0.5,0.7,0.9], _x, selectrandom ["bullet","grenade","explosive","shell","vehiclecrash","backblast","stab","punch","falling""ropeburn"]] call ace_medical_fnc_addDamageToUnit;
							};
						}foreach _hitpoints;
						[pat1, 0.7, "body", "bullet"] call ace_medical_fnc_addDamageToUnit;
						[pat1] call ace_medical_fnc_handleDamage_advancedSetDamage;
						[pat1,true,600,true] call ace_medical_fnc_setUnconscious;
						GW_TrainingGround_spawnedOPFOR pushBack pat1;
					};
					case 2:
					{
						_group = group _caller;
						_heli = createVehicle ["JAS_CUP_B_Mi17_CDF", [8422.48,18207.7,4.57764e-005], [], 0, "CAN_COLLIDE"];
						_heli setDir 115;
						GW_TrainingGround_spawnedAssets pushBack _heli;
						GW_TrainingGround_AACFSM = [_caller,_side,6,"casevac",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
					};
					case 3:
					{
						_group = group _caller;
						_heli = createVehicle ["JAS_CUP_B_Mi17_CDF", [8422.48,18207.7,4.57764e-005], [], 0, "CAN_COLLIDE"];
						_heli setDir 115;
						GW_TrainingGround_spawnedAssets pushBack _heli;
						GW_TrainingGround_AACFSM = [_caller,_side,6,"casevacL",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
					};
					default
					{
						hint "CODE FAIL. spawnCasualty.sqf Main/OPFOR/Callsign/Exercise Switch";
					};
				};
			};
			case "CDF-F":
			{
				switch (_exerciseID) do
				{
					case 1:
					{
						_group = createGroup west;
						'B_Soldier_F' createUnit [getmarkerPos 'PatientSpawn', _group,'pat1=this; dostop pat1'];
						_hitpoints = ["head","body","hand_l","hand_r","leg_l","leg_r"];
						{
							_hit = selectRandom ["true","false"];
							if(_hit == "true")then
							{
								[pat1, selectRandom[0.5,0.7,0.9], _x, selectrandom ["bullet","grenade","explosive","shell","vehiclecrash","backblast","stab","punch","falling""ropeburn"]] call ace_medical_fnc_addDamageToUnit;
							};
						}foreach _hitpoints;
						[pat1, 0.7, "body", "bullet"] call ace_medical_fnc_addDamageToUnit;
						[pat1] call ace_medical_fnc_handleDamage_advancedSetDamage;
						[pat1,true,600,true] call ace_medical_fnc_setUnconscious;
						GW_TrainingGround_spawnedOPFOR pushBack pat1;
					};
					case 2:
					{
						_group = group _caller;
						_heli = createVehicle ["JAS_CUP_B_Mi17_CDF", [8422.48,18207.7,4.57764e-005], [], 0, "CAN_COLLIDE"];
						_heli setDir 115;
						GW_TrainingGround_spawnedAssets pushBack _heli;
						GW_TrainingGround_AACFSM = [_caller,_side,6,"casevac",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
					};
					case 3:
					{
						_group = group _caller;
						_heli = createVehicle ["JAS_CUP_B_Mi17_CDF", [8422.48,18207.7,4.57764e-005], [], 0, "CAN_COLLIDE"];
						_heli setDir 115;
						GW_TrainingGround_spawnedAssets pushBack _heli;
						GW_TrainingGround_AACFSM = [_caller,_side,6,"casevacL",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
					};
					default
					{
						hint "CODE FAIL. spawnCasualty.sqf Main/OPFOR/Callsign/Exercise Switch";
					};
				};
			};
			case "CDF-M":
			{
				switch (_exerciseID) do
				{
					case 1:
					{
						_group = createGroup west;
						'B_Soldier_F' createUnit [getmarkerPos 'PatientSpawn', _group,'pat1=this; dostop pat1'];
						_hitpoints = ["head","body","hand_l","hand_r","leg_l","leg_r"];
						{
							_hit = selectRandom ["true","false"];
							if(_hit == "true")then
							{
								[pat1, selectRandom[0.5,0.7,0.9], _x, selectrandom ["bullet","grenade","explosive","shell","vehiclecrash","backblast","stab","punch","falling""ropeburn"]] call ace_medical_fnc_addDamageToUnit;
							};
						}foreach _hitpoints;
						[pat1, 0.7, "body", "bullet"] call ace_medical_fnc_addDamageToUnit;
						[pat1] call ace_medical_fnc_handleDamage_advancedSetDamage;
						[pat1,true,600,true] call ace_medical_fnc_setUnconscious;
						GW_TrainingGround_spawnedOPFOR pushBack pat1;
					};
					case 2:
					{
						_group = group _caller;
						_heli = createVehicle ["JAS_CUP_B_Mi17_CDF", [8422.48,18207.7,4.57764e-005], [], 0, "CAN_COLLIDE"];
						_heli setDir 115;
						GW_TrainingGround_spawnedAssets pushBack _heli;
						GW_TrainingGround_AACFSM = [_caller,_side,6,"casevac",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
					};
					case 3:
					{
						_group = group _caller;
						_heli = createVehicle ["JAS_CUP_B_Mi17_CDF", [8422.48,18207.7,4.57764e-005], [], 0, "CAN_COLLIDE"];
						_heli setDir 115;
						GW_TrainingGround_spawnedAssets pushBack _heli;
						GW_TrainingGround_AACFSM = [_caller,_side,6,"casevacL",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
					};
					default
					{
						hint "CODE FAIL. spawnCasualty.sqf Main/OPFOR/Callsign/Exercise Switch";
					};
				};
			};
			case "US-OCP":
			{
				switch (_exerciseID) do
				{
					case 1:
					{
						_group = createGroup west;
						'B_Soldier_F' createUnit [getmarkerPos 'PatientSpawn', _group,'pat1=this; dostop pat1'];
						_hitpoints = ["head","body","hand_l","hand_r","leg_l","leg_r"];
						{
							_hit = selectRandom ["true","false"];
							if(_hit == "true")then
							{
								[pat1, selectRandom[0.5,0.7,0.9], _x, selectrandom ["bullet","grenade","explosive","shell","vehiclecrash","backblast","stab","punch","falling""ropeburn"]] call ace_medical_fnc_addDamageToUnit;
							};
						}foreach _hitpoints;
						[pat1, 0.7, "body", "bullet"] call ace_medical_fnc_addDamageToUnit;
						[pat1] call ace_medical_fnc_handleDamage_advancedSetDamage;
						[pat1,true,600,true] call ace_medical_fnc_setUnconscious;
						GW_TrainingGround_spawnedOPFOR pushBack pat1;
					};
					case 2:
					{
						_group = group _caller;
						_heli = createVehicle ["JAS_MH60L_DAP", [8422.48,18207.7,4.57764e-005], [], 0, "CAN_COLLIDE"];
						_heli setDir 115;
						GW_TrainingGround_spawnedAssets pushBack _heli;
						GW_TrainingGround_AACFSM = [_caller,_side,6,"casevac",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
					};
					case 3:
					{
						_group = group _caller;
						_heli = createVehicle ["JAS_MH60L_DAP", [8422.48,18207.7,4.57764e-005], [], 0, "CAN_COLLIDE"];
						_heli setDir 115;
						GW_TrainingGround_spawnedAssets pushBack _heli;
						GW_TrainingGround_AACFSM = [_caller,_side,6,"casevacL",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
					};
					default
					{
						hint "CODE FAIL. spawnCasualty.sqf Main/OPFOR/Callsign/Exercise Switch";
					};
				};
			};
			case "US-UCP":
			{
				switch (_exerciseID) do
				{
					case 1:
					{
						_group = createGroup west;
						'B_Soldier_F' createUnit [getmarkerPos 'PatientSpawn', _group,'pat1=this; dostop pat1'];
						_hitpoints = ["head","body","hand_l","hand_r","leg_l","leg_r"];
						{
							_hit = selectRandom ["true","false"];
							if(_hit == "true")then
							{
								[pat1, selectRandom[0.5,0.7,0.9], _x, selectrandom ["bullet","grenade","explosive","shell","vehiclecrash","backblast","stab","punch","falling""ropeburn"]] call ace_medical_fnc_addDamageToUnit;
							};
						}foreach _hitpoints;
						[pat1, 0.7, "body", "bullet"] call ace_medical_fnc_addDamageToUnit;
						[pat1] call ace_medical_fnc_handleDamage_advancedSetDamage;
						[pat1,true,600,true] call ace_medical_fnc_setUnconscious;
						GW_TrainingGround_spawnedOPFOR pushBack pat1;
					};
					case 2:
					{
						_group = group _caller;
						_heli = createVehicle ["JAS_MH60L_DAP", [8422.48,18207.7,4.57764e-005], [], 0, "CAN_COLLIDE"];
						_heli setDir 115;
						GW_TrainingGround_spawnedAssets pushBack _heli;
						GW_TrainingGround_AACFSM = [_caller,_side,6,"casevac",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
					};
					case 3:
					{
						_group = group _caller;
						_heli = createVehicle ["JAS_MH60L_DAP", [8422.48,18207.7,4.57764e-005], [], 0, "CAN_COLLIDE"];
						_heli setDir 115;
						GW_TrainingGround_spawnedAssets pushBack _heli;
						GW_TrainingGround_AACFSM = [_caller,_side,6,"casevacL",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
					};
					default
					{
						hint "CODE FAIL. spawnCasualty.sqf Main/OPFOR/Callsign/Exercise Switch";
					};
				};
			};
			case "US-R":
			{
				switch (_exerciseID) do
				{
					case 1:
					{
						_group = createGroup west;
						'B_Soldier_F' createUnit [getmarkerPos 'PatientSpawn', _group,'pat1=this; dostop pat1'];
						_hitpoints = ["head","body","hand_l","hand_r","leg_l","leg_r"];
						{
							_hit = selectRandom ["true","false"];
							if(_hit == "true")then
							{
								[pat1, selectRandom[0.5,0.7,0.9], _x, selectrandom ["bullet","grenade","explosive","shell","vehiclecrash","backblast","stab","punch","falling""ropeburn"]] call ace_medical_fnc_addDamageToUnit;
							};
						}foreach _hitpoints;
						[pat1, 0.7, "body", "bullet"] call ace_medical_fnc_addDamageToUnit;
						[pat1] call ace_medical_fnc_handleDamage_advancedSetDamage;
						[pat1,true,600,true] call ace_medical_fnc_setUnconscious;
						GW_TrainingGround_spawnedOPFOR pushBack pat1;
					};
					case 2:
					{
						_group = group _caller;
						_heli = createVehicle ["JAS_MH60L_DAP", [8422.48,18207.7,4.57764e-005], [], 0, "CAN_COLLIDE"];
						_heli setDir 115;
						GW_TrainingGround_spawnedAssets pushBack _heli;
						GW_TrainingGround_AACFSM = [_caller,_side,6,"casevac",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
					};
					case 3:
					{
						_group = group _caller;
						_heli = createVehicle ["JAS_MH60L_DAP", [8422.48,18207.7,4.57764e-005], [], 0, "CAN_COLLIDE"];
						_heli setDir 115;
						GW_TrainingGround_spawnedAssets pushBack _heli;
						GW_TrainingGround_AACFSM = [_caller,_side,6,"casevacL",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
					};
					default
					{
						hint "CODE FAIL. spawnCasualty.sqf Main/OPFOR/Callsign/Exercise Switch";
					};
				};
			};
			case "SWAT":
			{
				switch (_exerciseID) do
				{
					case 1:
					{
						_group = createGroup west;
						'B_Soldier_F' createUnit [getmarkerPos 'PatientSpawn', _group,'pat1=this; dostop pat1'];
						_hitpoints = ["head","body","hand_l","hand_r","leg_l","leg_r"];
						{
							_hit = selectRandom ["true","false"];
							if(_hit == "true")then
							{
								[pat1, selectRandom[0.5,0.7,0.9], _x, selectrandom ["bullet","grenade","explosive","shell","vehiclecrash","backblast","stab","punch","falling""ropeburn"]] call ace_medical_fnc_addDamageToUnit;
							};
						}foreach _hitpoints;
						[pat1, 0.7, "body", "bullet"] call ace_medical_fnc_addDamageToUnit;
						[pat1] call ace_medical_fnc_handleDamage_advancedSetDamage;
						[pat1,true,600,true] call ace_medical_fnc_setUnconscious;
						GW_TrainingGround_spawnedOPFOR pushBack pat1;
					};
					case 2:
					{
						_group = group _caller;
						_heli = createVehicle ["JAS_MH60L_DAP", [8422.48,18207.7,4.57764e-005], [], 0, "CAN_COLLIDE"];
						_heli setDir 115;
						GW_TrainingGround_spawnedAssets pushBack _heli;
						GW_TrainingGround_AACFSM = [_caller,_side,6,"casevac",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
					};
					case 3:
					{
						_group = group _caller;
						_heli = createVehicle ["JAS_MH60L_DAP", [8422.48,18207.7,4.57764e-005], [], 0, "CAN_COLLIDE"];
						_heli setDir 115;
						GW_TrainingGround_spawnedAssets pushBack _heli;
						GW_TrainingGround_AACFSM = [_caller,_side,6,"casevacL",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
					};
					default
					{
						hint "CODE FAIL. spawnCasualty.sqf Main/OPFOR/Callsign/Exercise Switch";
					};
				};
			};
			case "INSURGENT-D":
			{
				switch (_exerciseID) do
				{
					case 1:
					{
						_group = createGroup west;
						'B_Soldier_F' createUnit [getmarkerPos 'PatientSpawn', _group,'pat1=this; dostop pat1'];
						_hitpoints = ["head","body","hand_l","hand_r","leg_l","leg_r"];
						{
							_hit = selectRandom ["true","false"];
							if(_hit == "true")then
							{
								[pat1, selectRandom[0.5,0.7,0.9], _x, selectrandom ["bullet","grenade","explosive","shell","vehiclecrash","backblast","stab","punch","falling""ropeburn"]] call ace_medical_fnc_addDamageToUnit;
							};
						}foreach _hitpoints;
						[pat1, 0.7, "body", "bullet"] call ace_medical_fnc_addDamageToUnit;
						[pat1] call ace_medical_fnc_handleDamage_advancedSetDamage;
						[pat1,true,600,true] call ace_medical_fnc_setUnconscious;
						GW_TrainingGround_spawnedOPFOR pushBack pat1;
					};
					case 2:
					{
						_group = group _caller;
						_heli = createVehicle ["JAS_CUP_B_Mi17_CDF", [8422.48,18207.7,4.57764e-005], [], 0, "CAN_COLLIDE"];
						_heli setDir 115;
						GW_TrainingGround_spawnedAssets pushBack _heli;
						GW_TrainingGround_AACFSM = [_caller,_side,6,"casevac",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
					};
					case 3:
					{
						_group = group _caller;
						_heli = createVehicle ["JAS_CUP_B_Mi17_CDF", [8422.48,18207.7,4.57764e-005], [], 0, "CAN_COLLIDE"];
						_heli setDir 115;
						GW_TrainingGround_spawnedAssets pushBack _heli;
						GW_TrainingGround_AACFSM = [_caller,_side,6,"casevacL",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
					};
					default
					{
						hint "CODE FAIL. spawnCasualty.sqf Main/OPFOR/Callsign/Exercise Switch";
					};
				};
			};
			case "INSURGENT-W":
			{
				switch (_exerciseID) do
				{
					case 1:
					{
						_group = createGroup west;
						'B_Soldier_F' createUnit [getmarkerPos 'PatientSpawn', _group,'pat1=this; dostop pat1'];
						_hitpoints = ["head","body","hand_l","hand_r","leg_l","leg_r"];
						{
							_hit = selectRandom ["true","false"];
							if(_hit == "true")then
							{
								[pat1, selectRandom[0.5,0.7,0.9], _x, selectrandom ["bullet","grenade","explosive","shell","vehiclecrash","backblast","stab","punch","falling""ropeburn"]] call ace_medical_fnc_addDamageToUnit;
							};
						}foreach _hitpoints;
						[pat1, 0.7, "body", "bullet"] call ace_medical_fnc_addDamageToUnit;
						[pat1] call ace_medical_fnc_handleDamage_advancedSetDamage;
						[pat1,true,600,true] call ace_medical_fnc_setUnconscious;
						GW_TrainingGround_spawnedOPFOR pushBack pat1;
					};
					case 2:
					{
						_group = group _caller;
						_heli = createVehicle ["JAS_CUP_B_Mi17_CDF", [8422.48,18207.7,4.57764e-005], [], 0, "CAN_COLLIDE"];
						_heli setDir 115;
						GW_TrainingGround_spawnedAssets pushBack _heli;
						GW_TrainingGround_AACFSM = [_caller,_side,6,"casevac",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
					};
					case 3:
					{
						_group = group _caller;
						_heli = createVehicle ["JAS_CUP_B_Mi17_CDF", [8422.48,18207.7,4.57764e-005], [], 0, "CAN_COLLIDE"];
						_heli setDir 115;
						GW_TrainingGround_spawnedAssets pushBack _heli;
						GW_TrainingGround_AACFSM = [_caller,_side,6,"casevacL",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
					};
					default
					{
						hint "CODE FAIL. spawnCasualty.sqf Main/OPFOR/Callsign/Exercise Switch";
					};
				};
			};
			case "CAMPAIGN-W":
			{
				switch (_exerciseID) do
				{
					case 1:
					{
						_group = createGroup west;
						'B_Soldier_F' createUnit [getmarkerPos 'PatientSpawn', _group,'pat1=this; dostop pat1'];
						_hitpoints = ["head","body","hand_l","hand_r","leg_l","leg_r"];
						{
							_hit = selectRandom ["true","false"];
							if(_hit == "true")then
							{
								[pat1, selectRandom[0.5,0.7,0.9], _x, selectrandom ["bullet","grenade","explosive","shell","vehiclecrash","backblast","stab","punch","falling""ropeburn"]] call ace_medical_fnc_addDamageToUnit;
							};
						}foreach _hitpoints;
						[pat1, 0.7, "body", "bullet"] call ace_medical_fnc_addDamageToUnit;
						[pat1] call ace_medical_fnc_handleDamage_advancedSetDamage;
						[pat1,true,600,true] call ace_medical_fnc_setUnconscious;
						GW_TrainingGround_spawnedOPFOR pushBack pat1;
					};
					case 2:
					{
						_group = group _caller;
						_heli = createVehicle ["JAS_CUP_B_Mi17_CDF", [8422.48,18207.7,4.57764e-005], [], 0, "CAN_COLLIDE"];
						_heli setDir 115;
						GW_TrainingGround_spawnedAssets pushBack _heli;
						GW_TrainingGround_AACFSM = [_caller,_side,6,"casevac",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
					};
					case 3:
					{
						_group = group _caller;
						_heli = createVehicle ["JAS_CUP_B_Mi17_CDF", [8422.48,18207.7,4.57764e-005], [], 0, "CAN_COLLIDE"];
						_heli setDir 115;
						GW_TrainingGround_spawnedAssets pushBack _heli;
						GW_TrainingGround_AACFSM = [_caller,_side,6,"casevacL",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
					};
					default
					{
						hint "CODE FAIL. spawnCasualty.sqf Main/OPFOR/Callsign/Exercise Switch";
					};
				};
			};
			default
			{
				hint "CODE FAIL. spawnCasualty.sqf Main/BLUFOR Switch";
			};
		};
	};
	case 2: // INDEP
	{
		switch (_indep) do
		{
			case "AAF-W":
			{
				switch (_exerciseID) do
				{
					case 1:
					{
						_group = createGroup independent;
						'I_soldier_F' createUnit [getmarkerPos 'PatientSpawn', _group,'pat1=this; dostop pat1'];
						_hitpoints = ["head","body","hand_l","hand_r","leg_l","leg_r"];
						{
							_hit = selectRandom ["true","false"];
							if(_hit == "true")then
							{
								[pat1, selectRandom[0.5,0.7,0.9], _x, selectrandom ["bullet","grenade","explosive","shell","vehiclecrash","backblast","stab","punch","falling""ropeburn"]] call ace_medical_fnc_addDamageToUnit;
							};
						}foreach _hitpoints;
						[pat1, 0.7, "body", "bullet"] call ace_medical_fnc_addDamageToUnit;
						[pat1] call ace_medical_fnc_handleDamage_advancedSetDamage;
						[pat1,true,600,true] call ace_medical_fnc_setUnconscious;
						GW_TrainingGround_spawnedOPFOR pushBack pat1;
					};
					case 2:
					{
						_group = group _caller;
						_heli = createVehicle ["I_Heli_light_03_F", [8422.48,18207.7,4.57764e-005], [], 0, "CAN_COLLIDE"];
						_heli setDir 115;
						GW_TrainingGround_spawnedAssets pushBack _heli;
						GW_TrainingGround_AACFSM = [_caller,_side,6,"casevac",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
					};
					case 3:
					{
						_group = group _caller;
						_heli = createVehicle ["I_Heli_light_03_F", [8422.48,18207.7,4.57764e-005], [], 0, "CAN_COLLIDE"];
						_heli setDir 115;
						GW_TrainingGround_spawnedAssets pushBack _heli;
						GW_TrainingGround_AACFSM = [_caller,_side,6,"casevacL",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
					};
					default
					{
						hint "CODE FAIL. spawnCasualty.sqf Main/OPFOR/Callsign/Exercise Switch";
					};
				};
			};
			case "PMC":
			{
				switch (_exerciseID) do
				{
					case 1:
					{
						_group = createGroup independent;
						'I_soldier_F' createUnit [getmarkerPos 'PatientSpawn', _group,'pat1=this; dostop pat1'];
						_hitpoints = ["head","body","hand_l","hand_r","leg_l","leg_r"];
						{
							_hit = selectRandom ["true","false"];
							if(_hit == "true")then
							{
								[pat1, selectRandom[0.5,0.7,0.9], _x, selectrandom ["bullet","grenade","explosive","shell","vehiclecrash","backblast","stab","punch","falling""ropeburn"]] call ace_medical_fnc_addDamageToUnit;
							};
						}foreach _hitpoints;
						[pat1, 0.7, "body", "bullet"] call ace_medical_fnc_addDamageToUnit;
						[pat1] call ace_medical_fnc_handleDamage_advancedSetDamage;
						[pat1,true,600,true] call ace_medical_fnc_setUnconscious;
						GW_TrainingGround_spawnedOPFOR pushBack pat1;
					};
					case 2:
					{
						_group = group _caller;
						_heli = createVehicle ["CUP_I_Ka60_GL_Blk_ION", [8422.48,18207.7,4.57764e-005], [], 0, "CAN_COLLIDE"];
						_heli setDir 115;
						GW_TrainingGround_spawnedAssets pushBack _heli;
						GW_TrainingGround_AACFSM = [_caller,_side,6,"casevac",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
					};
					case 3:
					{
						_group = group _caller;
						_heli = createVehicle ["CUP_I_Ka60_GL_Blk_ION", [8422.48,18207.7,4.57764e-005], [], 0, "CAN_COLLIDE"];
						_heli setDir 115;
						GW_TrainingGround_spawnedAssets pushBack _heli;
						GW_TrainingGround_AACFSM = [_caller,_side,6,"casevacL",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
					};
					default
					{
						hint "CODE FAIL. spawnCasualty.sqf Main/OPFOR/Callsign/Exercise Switch";
					};
				};
			};
			case "INSURGENT-D":
			{
				switch (_exerciseID) do
				{
					case 1:
					{
						_group = createGroup independent;
						'I_soldier_F' createUnit [getmarkerPos 'PatientSpawn', _group,'pat1=this; dostop pat1'];
						_hitpoints = ["head","body","hand_l","hand_r","leg_l","leg_r"];
						{
							_hit = selectRandom ["true","false"];
							if(_hit == "true")then
							{
								[pat1, selectRandom[0.5,0.7,0.9], _x, selectrandom ["bullet","grenade","explosive","shell","vehiclecrash","backblast","stab","punch","falling""ropeburn"]] call ace_medical_fnc_addDamageToUnit;
							};
						}foreach _hitpoints;
						[pat1, 0.7, "body", "bullet"] call ace_medical_fnc_addDamageToUnit;
						[pat1] call ace_medical_fnc_handleDamage_advancedSetDamage;
						[pat1,true,600,true] call ace_medical_fnc_setUnconscious;
						GW_TrainingGround_spawnedOPFOR pushBack pat1;
					};
					case 2:
					{
						_group = group _caller;
						_heli = createVehicle ["JAS_CUP_I_SA330_Puma_HC2_AAC", [8422.48,18207.7,4.57764e-005], [], 0, "CAN_COLLIDE"];
						_heli setDir 115;
						GW_TrainingGround_spawnedAssets pushBack _heli;
						GW_TrainingGround_AACFSM = [_caller,_side,6,"casevac",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
					};
					case 3:
					{
						_group = group _caller;
						_heli = createVehicle ["JAS_CUP_I_SA330_Puma_HC2_AAC", [8422.48,18207.7,4.57764e-005], [], 0, "CAN_COLLIDE"];
						_heli setDir 115;
						GW_TrainingGround_spawnedAssets pushBack _heli;
						GW_TrainingGround_AACFSM = [_caller,_side,6,"casevacL",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
					};
					default
					{
						hint "CODE FAIL. spawnCasualty.sqf Main/OPFOR/Callsign/Exercise Switch";
					};
				};
			};
			case "INSURGENT-W":
			{
				switch (_exerciseID) do
				{
					case 1:
					{
						_group = createGroup independent;
						'I_soldier_F' createUnit [getmarkerPos 'PatientSpawn', _group,'pat1=this; dostop pat1'];
						_hitpoints = ["head","body","hand_l","hand_r","leg_l","leg_r"];
						{
							_hit = selectRandom ["true","false"];
							if(_hit == "true")then
							{
								[pat1, selectRandom[0.5,0.7,0.9], _x, selectrandom ["bullet","grenade","explosive","shell","vehiclecrash","backblast","stab","punch","falling""ropeburn"]] call ace_medical_fnc_addDamageToUnit;
							};
						}foreach _hitpoints;
						[pat1, 0.7, "body", "bullet"] call ace_medical_fnc_addDamageToUnit;
						[pat1] call ace_medical_fnc_handleDamage_advancedSetDamage;
						[pat1,true,600,true] call ace_medical_fnc_setUnconscious;
						GW_TrainingGround_spawnedOPFOR pushBack pat1;
					};
					case 2:
					{
						_group = group _caller;
						_heli = createVehicle ["JAS_CUP_I_SA330_Puma_HC2_AAC", [8422.48,18207.7,4.57764e-005], [], 0, "CAN_COLLIDE"];
						_heli setDir 115;
						GW_TrainingGround_spawnedAssets pushBack _heli;
						GW_TrainingGround_AACFSM = [_caller,_side,6,"casevac",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
					};
					case 3:
					{
						_group = group _caller;
						_heli = createVehicle ["JAS_CUP_I_SA330_Puma_HC2_AAC", [8422.48,18207.7,4.57764e-005], [], 0, "CAN_COLLIDE"];
						_heli setDir 115;
						GW_TrainingGround_spawnedAssets pushBack _heli;
						GW_TrainingGround_AACFSM = [_caller,_side,6,"casevacL",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
					};
					default
					{
						hint "CODE FAIL. spawnCasualty.sqf Main/OPFOR/Callsign/Exercise Switch";
					};
				};
			};
			case "CAMPAIGN-I":
			{
				switch (_exerciseID) do
				{
					case 1:
					{
						_group = createGroup independent;
						'I_soldier_F' createUnit [getmarkerPos 'PatientSpawn', _group,'pat1=this; dostop pat1'];
						_hitpoints = ["head","body","hand_l","hand_r","leg_l","leg_r"];
						{
							_hit = selectRandom ["true","false"];
							if(_hit == "true")then
							{
								[pat1, selectRandom[0.5,0.7,0.9], _x, selectrandom ["bullet","grenade","explosive","shell","vehiclecrash","backblast","stab","punch","falling""ropeburn"]] call ace_medical_fnc_addDamageToUnit;
							};
						}foreach _hitpoints;
						[pat1, 0.7, "body", "bullet"] call ace_medical_fnc_addDamageToUnit;
						[pat1] call ace_medical_fnc_handleDamage_advancedSetDamage;
						[pat1,true,600,true] call ace_medical_fnc_setUnconscious;
						GW_TrainingGround_spawnedOPFOR pushBack pat1;
					};
					case 2:
					{
						_group = group _caller;
						_heli = createVehicle ["JAS_CUP_I_SA330_Puma_HC2_AAC", [8422.48,18207.7,4.57764e-005], [], 0, "CAN_COLLIDE"];
						_heli setDir 115;
						GW_TrainingGround_spawnedAssets pushBack _heli;
						GW_TrainingGround_AACFSM = [_caller,_side,6,"casevac",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
					};
					case 3:
					{
						_group = group _caller;
						_heli = createVehicle ["JAS_CUP_I_SA330_Puma_HC2_AAC", [8422.48,18207.7,4.57764e-005], [], 0, "CAN_COLLIDE"];
						_heli setDir 115;
						GW_TrainingGround_spawnedAssets pushBack _heli;
						GW_TrainingGround_AACFSM = [_caller,_side,6,"casevacL",_group] execFSM "Modules\TrainingGround\FSM\ravenFlight.fsm";
					};
					default
					{
						hint "CODE FAIL. spawnCasualty.sqf Main/OPFOR/Callsign/Exercise Switch";
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
 