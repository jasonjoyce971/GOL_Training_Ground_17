// Set inside trigger flag
BIS_insideTrigger = true;

// Range FSM Handler
_handler = 	[
			// Player
			player,
			
			// Object? -> suspect scoreboard
			BIS_weaponsFiringRange_board,
			
			// targets by object var name
			[BIS_weaponsFiringRange_1_target_1, BIS_weaponsFiringRange_1_target_2, BIS_weaponsFiringRange_1_target_3, BIS_weaponsFiringRange_1_target_4, BIS_weaponsFiringRange_1_target_5],
			
			// range ID
			"WeaponsFiringRangeLane1",
			
			// range name
			format["%1 %2", localize "STR_A3_MP_Bootcamp_Lane_WeaponsRange", 1],
			
			// trigger? -> suspect trigger to activate range. player must remain inside trigger area
			BIS_weaponsFiringRange_1_trigger,
			
			// time? -> suspect time duration of range
			60,
			
			// Start Delay -> time from entering trigger to first target
			5,
			
			// Primary Weapon Allowed Bool
			true,
			
			// Pistol Allowed Bool
			true,
			
			// Secondary Weapon Allowed Bool? -> Suspect Launcher
			false,
			
			// Throw Allowed? -> Suspect Grenades
			false,
			
			// Vehicle -> probably as object var name
			nil,
			
			// Observer -> Observer Object. Example uses soldiers
			BIS_weaponsFiringRange_1_observer
			
			] execFSM "fsms\firingRange.fsm";
			
if (isNil { BIS_weaponsFiringRange_1_observer getVariable "BIS_shooter" }) then 
{ 
	_handler = 	[
				// Object -> suspect target to move
				BIS_weaponsFiringRange_1_target_1,
				// Move positions -> defines range of movement
				[getPosASL BIS_weaponsFiringRange_1_target_1, getPosASL BIS_weaponsFiringRange_1_target_1_end],
				// Move times -> time to traverse distance?
				[3, 4],
				// Condition -? confirms player inTrigger as at start
				{ !isNil { BIS_insideTrigger } }
				] spawn BIS_fnc_targetSlide;
				
	_handler = 	[BIS_weaponsFiringRange_1_target_2, [getPosASL BIS_weaponsFiringRange_1_target_2, getPosASL BIS_weaponsFiringRange_1_target_2_end],
				[3, 4],
				{ !isNil { BIS_insideTrigger } }] spawn BIS_fnc_targetSlide;
				
	_handler = 	[BIS_weaponsFiringRange_1_target_3, [getPosASL BIS_weaponsFiringRange_1_target_3, getPosASL BIS_weaponsFiringRange_1_target_3_end],
				[3, 4],
				{ !isNil { BIS_insideTrigger } }] spawn BIS_fnc_targetSlide;
				
	_handler =	[BIS_weaponsFiringRange_1_target_4, [getPosASL BIS_weaponsFiringRange_1_target_4, getPosASL BIS_weaponsFiringRange_1_target_4_end],
				[3, 4], { !isNil { BIS_insideTrigger } }] spawn BIS_fnc_targetSlide;
				
	_handler = 	[BIS_weaponsFiringRange_1_target_5, [getPosASL BIS_weaponsFiringRange_1_target_5, getPosASL BIS_weaponsFiringRange_1_target_5_end],
				[3, 4],
				{ !isNil { BIS_insideTrigger } }] spawn BIS_fnc_targetSlide;
};

BIS_insideTrigger = true;_handler = [player, BIS_weaponsFiringRange_board, [BIS_weaponsFiringRange_1_target_1, BIS_weaponsFiringRange_1_target_2, BIS_weaponsFiringRange_1_target_3, BIS_weaponsFiringRange_1_target_4, BIS_weaponsFiringRange_1_target_5,BIS_weaponsFiringRange_1_target_6,BIS_weaponsFiringRange_1_target_7,BIS_weaponsFiringRange_1_target_8], "MarksmanRange", format["%1 %2", localize "STR_A3_MP_Bootcamp_Lane_WeaponsRange", 1], BIS_weaponsFiringRange_1_trigger, 60, 60, true, true, false, false, nil, BIS_weaponsFiringRange_1_observer] execFSM "Modules\TrainingGround\FSM\firingRange.fsm"; null = [[monitor5],["spotter_20"]] execVM "LFC\feedInit.sqf";


call GW_TrainingGround_fnc_firingRange;
