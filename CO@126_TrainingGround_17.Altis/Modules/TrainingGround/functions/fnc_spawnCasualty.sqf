/*
 * Module Function that spawns badguys on the relevant ranges
 * 
 */
 
 #include "..\scriptComponent.hpp"
 
 _side = _this select 0;
 _target = _this select 1;
 _exercise = _this select 2;
 
 {
	deleteVehicle _x;
 }foreach GW_TrainingGround_spawnedOPFOR;
 
 switch (_side) do
 {
	case "WEST":
	{
		switch (_exercise) do
		{
			case "HLS":
			{
				_group = createGroup west;
				'B_Soldier_F' createUnit [_target, _group,'pat1=this; dostop pat1'];
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
			default
			{
				hint "CODE BREAK. spawnCasualty side/west/exercise sub-switch";
			};
		};
	};
	case "EAST":
	{
		switch (_exercise) do
		{
			case "HLS":
			{
				_group = createGroup east;
				'O_Soldier_F' createUnit [_target, _group,'pat1=this; dostop pat1'];
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
			default
			{
				hint "CODE BREAK. spawnCasualty side/east/exercise sub-switch";
			};
		};
	};
	case "GUER":
	{
		switch (_exercise) do
		{
			case "HLS":
			{
				_group = createGroup independent;
				'I_soldier_F' createUnit [_target, _group,'pat1=this; dostop pat1'];
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
			default
			{
				hint "CODE BREAK. spawnCasualty side/guer/exercise sub-switch";
			};
		};
	};
	default
	{
		hint "CODE BREAK. spawnCasualty side switch";
	};
 };
 