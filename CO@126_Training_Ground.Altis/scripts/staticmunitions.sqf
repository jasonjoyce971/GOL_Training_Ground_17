// 
// 
// 
// 
// 

if !(isServer) exitWith {False};

_Box = [_This, 0, ObjNull, [ObjNull]] call BIS_FNC_Param;
_Type = [_This, 1, 0, [0]] call BIS_FNC_Param;

ClearItemCargoGlobal _Box;
ClearWeaponCargoGlobal _Box;
ClearMagazineCargoGlobal _Box;
_Box AllowDamage False;

// Cleaning up around the box
[[[_Box], 
{
	_Box = _This select 0;
	_Box addAction ["<t color='#FF8000'>Clean ground around box</t>",
	{
		_Box = _This select 3 select 0;
		[[[_Box],
		{
			_Box = _This select 0;
			{ deleteVehicle _x; } forEach nearestObjects [getpos _Box,["WeaponHolder","GroundWeaponHolder"],5];
		}], "BIS_FNC_SPAWN", false] call BIS_FNC_MP;
		SystemChat "Cleaning up your mess...";
	}, [_Box], 0.9, false, true, "", "((_target distance _this) < 5)"];
}], "BIS_FNC_SPAWN", true] call BIS_FNC_MP;

// Selection of content
Switch (_Type) do
{
	case 1:
	{
		//// HMG's
		// Vanilla
		_Box addBackPackCargoGlobal ["B_HMG_01_support_F",10]; _Box AddBackPackCargoGlobal ["B_HMG_01_weapon_F",10]; // HMG Tripod
		_Box AddBackPackCargoGlobal ["B_HMG_01_support_high_F",10]; _Box AddBackPackCargoGlobal ["B_HMG_01_high_weapon_F",10]; // HMG Raised
		// Modded
		//_Box AddBackPackCargoGlobal ["RHS_M2_Tripod_Bag",10]; _Box AddBackPackCargoGlobal ["RHS_M2_Gun_Bag",10]; // M2 Raised
		//_Box AddBackPackCargoGlobal ["RHS_M2_MiniTripod_Bag",10]; _Box AddBackPackCargoGlobal ["RHS_M2_Gun_Bag",10]; // M2 Tripod
		//_Box AddBackPackCargoGlobal ["RDS_DShkM_TripodHigh_Bag",10]; _Box AddBackPackCargoGlobal ["RDS_DShkM_TripodHigh_Bag",10]; // DShkM Raised
		//_Box AddBackPackCargoGlobal ["RDS_DShkM_TripodLow_Bag",10]; _Box AddBackPackCargoGlobal ["RDS_DShkM_Gun_Bag",10]; // DShkM Tripod
		//_Box AddBackPackCargoGlobal ["RDS_Kord_Tripod_Bag",10]; _Box AddBackPackCargoGlobal ["RDS_Kord_Gun_Bag",10]; // KORD Tripod
	};
	
	case 2:
	{
		//// GMG's
		// Vanilla
		_Box addBackPackCargoGlobal ["B_HMG_01_support_F",10]; _Box addBackPackCargoGlobal ["B_GMG_01_A_weapon_F",10]; // GMG Tripod
		_Box addBackPackCargoGlobal ["B_HMG_01_support_high_F",10]; _Box addBackPackCargoGlobal ["B_GMG_01_high_weapon_F",10]; // GMG Raised
		// Modded
		//_Box AddBackPackCargoGlobal ["RHS_Mk19_Tripod_Bag",10]; _Box AddBackPackCargoGlobal ["RHS_Mk19_Gun_Bag",10]; // Mk19
	};
	
	case 3:
	{
		//// AT && AA
		// Vanilla
		_Box AddBackPackCargoGlobal ["B_HMG_01_support_F",10]; _Box addBackPackCargoGlobal ["B_AA_01_weapon_F",10]; // Mini-Spike AA
		_Box AddBackPackCargoGlobal ["B_HMG_01_support_F",10]; _Box AddBackPackCargoGlobal ["B_AT_01_weapon_F",10]; // Mini-Spike AT
		// Modded
		//_Box AddBackPackCargoGlobal ["RDS_Metis_Tripod_Bag",10]; _Box AddBackPackCargoGlobal ["RDS_Metis_Gun_Bag",10]; // Metis
		//_Box AddBackPackCargoGlobal ["RDS_TOW_Tripod_Bag",10]; _Box AddBackPackCargoGlobal ["RDS_Tow_Gun_Bag",10]; // TOW
	};
	
	case 4:
	{
		//// Mortar
		// Vanilla
		_Box AddBackPackCargoGlobal ["B_Mortar_01_support_F",10]; _Box AddBackPackCargoGlobal ["B_Mortar_01_weapon_F",10]; // Mk6
		// Modded
		//_Box AddBackPackCargoGlobal	["RDS_Podnos_Bipod_Bag",10]; _Box AddBackPackCargoGlobal ["RDS_Podnos_Gun_Bag",10]; // Podnos
	};
};