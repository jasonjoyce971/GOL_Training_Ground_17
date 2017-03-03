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
 }foreach GW_TrainingGround_spawnedCasualty;
 
 switch (_side) do
 {
	case "WEST":
	{
		switch (_exercise) do
		{
			case "HLS":
			{
				if (isServer) then
				{
					for "_i" from 1 to 6 do
					{
						_group = createGroup east;
						for "_i" from 1 to 5 do
						{
							_unitType = ["O_Soldier_F","O_Soldier_AR_F","O_medic_F","O_Soldier_GL_F","O_HeavyGunner_F","O_soldier_M_F","O_Soldier_SL_F","O_Soldier_TL_F"];
							_unit = _unitType call BIS_fnc_selectRandom;
							_group createUnit [_unit, _target, [], 0, "NONE"];
							{
								GW_TrainingGround_spawnedOPFOR pushBack _x;
							} foreach units _group;
						};
						[_group,_group,200] spawn CBA_fnc_taskDefend;
						sleep 30;
					};
				};
			};
			default
			{
				hint "CODE BREAK. spawnBadGuys side/west/exercise sub-switch";
			};
		};
	};
	default
	{
		hint "CODE BREAK. spawnBadGuys side switch";
	};
 };
 