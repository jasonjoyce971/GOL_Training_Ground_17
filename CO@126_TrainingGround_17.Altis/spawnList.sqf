/*
	AUTHOR: GuzzenVonLidl
	Description:
		What case tha should be called for the zone player is in
	Usage:
		null = [1] spawn GW_Fnc_spawnList;
	Parameters:
		#0: Number:	Activate zone
	Returning Value:
		None
*/
#include "scriptComponent.hpp"
#define	COMPONENT spawnList
params [
	"_case"
];

switch (_case) do {
	case 1: {
//		_group = [[[98,154,0],0],[[100,158,0],0]] call GW_Common_fnc_spawnStatic;
	};
	case 2: {
	};
	case 3: {
	};

	default {
		ERROR(FORMAT_1("Case missing: %1", _case));
	};
};
