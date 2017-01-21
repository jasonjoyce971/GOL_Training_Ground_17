// Initialise locals
private ["_paramWest","_paramEast","_paramIndep","_paramCiv","_side"];

// Remove actions to prevent double running of scripts
removeAllActions LaptopJ1;

// THESE ACTIONS ARE NOT REMOVED HENCE THE SCRIPT DOES NOT PASS THIS FAR

// Detect Faction from mission params
// Detect West
if (("GOL_Params_Faction_West" call BIS_fnc_getParamValue) == 0) then {
	_paramWest = (["Gear", "Blufor"] call GOL_Fnc_GetConfig);
} else {
	_paramWest = ("GOL_Params_Faction_West" call BIS_fnc_getParamValue);
};
// Detect East
if (("GOL_Params_Faction_East" call BIS_fnc_getParamValue) == 0) then {
	_paramEast = (["Gear", "Opfor"] call GOL_Fnc_GetConfig);
} else {
	_paramEast = ("GOL_Params_Faction_East" call BIS_fnc_getParamValue);
};
// Detect Indep
if (("GOL_Params_Faction_Independent" call BIS_fnc_getParamValue) == 0) then {
	_paramIndep = (["Gear", "Independent"] call GOL_Fnc_GetConfig);
} else {
	_paramIndep = ("GOL_Params_Faction_Independent" call BIS_fnc_getParamValue);
};
// Detect Civ
if (("GOL_Params_Faction_Civilian" call BIS_fnc_getParamValue) == 0) then {
	_paramCiv = (["Gear", "Civilian"] call GOL_Fnc_GetConfig);
} else {
	_paramCiv = ("GOL_Params_Faction_Civilian" call BIS_fnc_getParamValue);
};

/* // Detect current side
_side = side player; */

// Get Side from incoming data
_side = _this select 0;

// Get marker positions for spawning
_parkingPos1 = getmarkerpos "parking1";
_parkingPos1a = getmarkerpos "parking1a";
_parkingPos2 = getmarkerpos "parking2";
_parkingPos2a = getmarkerpos "parking2a";
_parkingPos3 = getmarkerpos "parking3";
_parkingPos3a = getmarkerpos "parking3a";
_parkingPos4 = getmarkerpos "parking4";
_parkingPos4a = getmarkerpos "parking4a";
_parkingPos5 = getmarkerpos "parking5";
_parkingPos5a = getmarkerpos "parking5a";
_parkingPos6 = getmarkerpos "parking6";
_parkingPos6a = getmarkerpos "parking6a";
_condorParking1 = getmarkerpos "condorparking1";
_condorParking2 = getmarkerpos "condorparking2";
_condorParking3 = getmarkerpos "condorparking3";
_ammoPos1 = getmarkerpos "ammo1";
_ammoPos1a = getmarkerpos "ammo1a";
_ammoPos2 = getmarkerpos "ammo2";
_ammoPos2a = getmarkerpos "ammo2a";
_ammoPos3 = getmarkerpos "ammo3";
_ammoPos3a = getmarkerpos "ammo3a";
_ammoPos4 = getmarkerpos "ammo4";
_ammoPos4a = getmarkerpos "ammo4a";
_ammoPos5 = getmarkerpos "ammo5";
_ammoPos5a = getmarkerpos "ammo5a";
_ammoPos6 = getmarkerpos "ammo6";
_ammoPos6a = getmarkerpos "ammo6a";
_cratePos1 = getmarkerpos "crate1";
_cratePos2 = getmarkerpos "crate2";
_cratePos3 = getmarkerpos "crate3";
_cratePos4 = getmarkerpos "crate4";
_cratePos5 = getmarkerpos "crate5";
_cratePos6 = getmarkerpos "crate6";
_cratePos7 = getmarkerpos "crate7";
_mortarTGTpos1 = getmarkerpos "mor1";
_mortarTGTpos2 = getmarkerpos "mor2";
_mortarTGTpos3 = getmarkerpos "mor3";
_mortarTGTpos4 = getmarkerpos "mor4";
_mortarTGTpos5 = getmarkerpos "mor5";
_mortarTGTpos6 = getmarkerpos "mor6";
_casevacPos0 = getmarkerpos "casevac0";
_casevacPos1 = getmarkerpos "casevac1";
_casevacPos2 = getmarkerpos "casevac2";
_casevacPos3 = getmarkerpos "casevac3";
_casevacPos4 = getmarkerpos "casevac4";
_casevacPos5 = getmarkerpos "casevac5";
_casevacPos6 = getmarkerpos "casevac6";
_casevacPos7 = getmarkerpos "casevac7";

// Clear global arrays
{deleteVehicle _x} forEach aircraftArray;
aircraftArray = [];
publicVariable "aircraftArray";

{deleteMarker _x} forEach markerArray;
markerArray = [];
publicVariable "markerArray";

lzList = [];

{deleteVehicle _x} forEach ammoArray;
ammoArray = [];
publicVariable "ammoArray";

{deleteVehicle _x} forEach targetArray;
targetArray = [];
publicVariable "targetArray";

{deleteVehicle _x} forEach supplyArray;
supplyArray = [];
publicVariable "supplyArray";

// Pause to let everything settle
sleep 5;

// switch (side)
switch (_side) do
{
	case WEST:
	{
		// switch (faction)
		switch (_paramWest) do
		{
			case 1: // CDF
			{
				// detect callsign and exercise
				switch (exerciseCallsign) do
				{
					case "Raven":
					{
						switch (exerciseNumber) do
						{
							case "0":
							{
								// spawn aircraft
								_chopper1 = createVehicle ["JAS_CUP_B_Mi17_CDF", _parkingPos1a, [], 0, "CAN_COLLIDE"];
								_chopper1 setDir 310;
								aircraftArray pushBack _chopper1;
								
								_chopper2 = createVehicle ["JAS_CUP_B_Mi17_CDF", _parkingPos3a, [], 0, "CAN_COLLIDE"];
								_chopper2 setDir 310;
								aircraftArray pushBack _chopper2;
								
								_chopper3 = createVehicle ["JAS_CUP_B_Mi17_CDF", _parkingPos2, [], 0, "CAN_COLLIDE"];
								_chopper3 setDir 310;
								aircraftArray pushBack _chopper3;
								
								_chopper4 = createVehicle ["JAS_CUP_B_Mi17_CDF", _parkingPos5, [], 0, "CAN_COLLIDE"];
								_chopper4 setDir 310;
								aircraftArray pushBack _chopper4;
								
								_chopper5 = createVehicle ["JAS_CUP_B_Mi17_CDF", _parkingPos4a, [], 0, "CAN_COLLIDE"];
								_chopper5 setDir 310;
								aircraftArray pushBack _chopper5;
								
								_chopper6 = createVehicle ["JAS_CUP_B_Mi17_CDF", _parkingPos6a, [], 0, "CAN_COLLIDE"];
								_chopper6 setDir 310;
								aircraftArray pushBack _chopper6;
								
								// spawn ammo
								_ammo1 = createVehicle ["FIR_Baseplate", _ammoPos1a, [], 0, "CAN_COLLIDE"];
								_ammo1 setDir 310;
								ammoArray pushBack _ammo1;
								
								_ammo2 = createVehicle ["FIR_Baseplate", _ammoPos3a, [], 0, "CAN_COLLIDE"];
								_ammo2 setDir 310;
								ammoArray pushBack _ammo2;
								
								_ammo3 = createVehicle ["FIR_Baseplate", _ammoPos2, [], 0, "CAN_COLLIDE"];
								_ammo3 setDir 310;
								ammoArray pushBack _ammo3;
								
								_ammo4 = createVehicle ["FIR_Baseplate", _ammoPos5, [], 0, "CAN_COLLIDE"];
								_ammo4 setDir 310;
								ammoArray pushBack _ammo4;
								
								_ammo5 = createVehicle ["FIR_Baseplate", _ammoPos4a, [], 0, "CAN_COLLIDE"];
								_ammo5 setDir 310;
								ammoArray pushBack _ammo5;
								
								_ammo6 = createVehicle ["FIR_Baseplate", _ammoPos6a, [], 0, "CAN_COLLIDE"];
								_ammo6 setDir 310;
								ammoArray pushBack _ammo6;
	
								[[[_side], {_this execVM "Scripts\SoloLZGenerator\initSolo.sqf"}], "BIS_FNC_SPAWN", false] call BIS_FNC_MP;
								
							};
							case "1":
							{
								// spawn aircraft
								_chopper1 = createVehicle ["JAS_CUP_B_Mi17_CDF", _parkingPos1a, [], 0, "CAN_COLLIDE"];
								_chopper1 setDir 310;
								aircraftArray pushBack _chopper1;
								
								_chopper2 = createVehicle ["JAS_CUP_B_Mi17_CDF", _parkingPos3a, [], 0, "CAN_COLLIDE"];
								_chopper2 setDir 310;
								aircraftArray pushBack _chopper2;
								
								_chopper3 = createVehicle ["JAS_CUP_B_Mi17_CDF", _parkingPos2, [], 0, "CAN_COLLIDE"];
								_chopper3 setDir 310;
								aircraftArray pushBack _chopper3;
								
								_chopper4 = createVehicle ["JAS_CUP_B_Mi17_CDF", _parkingPos5, [], 0, "CAN_COLLIDE"];
								_chopper4 setDir 310;
								aircraftArray pushBack _chopper4;
								
								_chopper5 = createVehicle ["JAS_CUP_B_Mi17_CDF", _parkingPos4a, [], 0, "CAN_COLLIDE"];
								_chopper5 setDir 310;
								aircraftArray pushBack _chopper5;
								
								_chopper6 = createVehicle ["JAS_CUP_B_Mi17_CDF", _parkingPos6a, [], 0, "CAN_COLLIDE"];
								_chopper6 setDir 310;
								aircraftArray pushBack _chopper6;
								
								// spawn ammo
								_ammo1 = createVehicle ["FIR_Baseplate", _ammoPos1a, [], 0, "CAN_COLLIDE"];
								_ammo1 setDir 310;
								ammoArray pushBack _ammo1;
								
								_ammo2 = createVehicle ["FIR_Baseplate", _ammoPos3a, [], 0, "CAN_COLLIDE"];
								_ammo2 setDir 310;
								ammoArray pushBack _ammo2;
								
								_ammo3 = createVehicle ["FIR_Baseplate", _ammoPos2, [], 0, "CAN_COLLIDE"];
								_ammo3 setDir 310;
								ammoArray pushBack _ammo3;
								
								_ammo4 = createVehicle ["FIR_Baseplate", _ammoPos5, [], 0, "CAN_COLLIDE"];
								_ammo4 setDir 310;
								ammoArray pushBack _ammo4;
								
								_ammo5 = createVehicle ["FIR_Baseplate", _ammoPos4a, [], 0, "CAN_COLLIDE"];
								_ammo5 setDir 310;
								ammoArray pushBack _ammo5;
								
								_ammo6 = createVehicle ["FIR_Baseplate", _ammoPos6a, [], 0, "CAN_COLLIDE"];
								_ammo6 setDir 310;
								ammoArray pushBack _ammo6;
	
								// Replacement code from HeliPractice - leads to automated single flight
								_x = 0;
								while {(_x < 86)} do
								{
									// Generate HLS Pool
									_lz = missionNamespace getVariable ("lz" + format["%1", _x + 1]);
									lzList = lzList + [_lz];
									_x = _x + 1;
									
								};
								
								// Generate HLS for this exercise instance
								_x = 0;
								while {(_x < 6)} do
								{
									_hls = selectRandom lzList;
									lzList = lzList - [_hls];
									_LZMark = createMarker ["HLS" + format["%1",_x], getPos _hls];
									_LZMark setMarkerShape "ICON";
									_LZMark setMarkerType "mil_start";
									_LZMark setMarkerText "LZ";
									markerArray pushBack _LZMark;
									_x = _x + 1;
									
								};
							};
							case "2":
							{
								// spawn aircraft
								_chopper1 = createVehicle ["JAS_CUP_B_Mi17_CDF", _parkingPos1a, [], 0, "CAN_COLLIDE"];
								_chopper1 setDir 310;
								aircraftArray pushBack _chopper1;
								
								_chopper2 = createVehicle ["JAS_CUP_B_Mi17_CDF", _parkingPos3a, [], 0, "CAN_COLLIDE"];
								_chopper2 setDir 310;
								aircraftArray pushBack _chopper2;
								
								_chopper3 = createVehicle ["JAS_CUP_B_Mi17_CDF", _parkingPos2, [], 0, "CAN_COLLIDE"];
								_chopper3 setDir 310;
								aircraftArray pushBack _chopper3;
								
								_chopper4 = createVehicle ["JAS_CUP_B_Mi17_CDF", _parkingPos5, [], 0, "CAN_COLLIDE"];
								_chopper4 setDir 310;
								aircraftArray pushBack _chopper4;
								
								_chopper5 = createVehicle ["JAS_CUP_B_Mi17_CDF", _parkingPos4a, [], 0, "CAN_COLLIDE"];
								_chopper5 setDir 310;
								aircraftArray pushBack _chopper5;
								
								_chopper6 = createVehicle ["JAS_CUP_B_Mi17_CDF", _parkingPos6a, [], 0, "CAN_COLLIDE"];
								_chopper6 setDir 310;
								aircraftArray pushBack _chopper6;
								
								// spawn ammo
								_ammo1 = createVehicle ["FIR_Baseplate", _ammoPos1a, [], 0, "CAN_COLLIDE"];
								_ammo1 setDir 310;
								ammoArray pushBack _ammo1;
								
								_ammo2 = createVehicle ["FIR_Baseplate", _ammoPos3a, [], 0, "CAN_COLLIDE"];
								_ammo2 setDir 310;
								ammoArray pushBack _ammo2;
								
								_ammo3 = createVehicle ["FIR_Baseplate", _ammoPos2, [], 0, "CAN_COLLIDE"];
								_ammo3 setDir 310;
								ammoArray pushBack _ammo3;
								
								_ammo4 = createVehicle ["FIR_Baseplate", _ammoPos5, [], 0, "CAN_COLLIDE"];
								_ammo4 setDir 310;
								ammoArray pushBack _ammo4;
								
								_ammo5 = createVehicle ["FIR_Baseplate", _ammoPos4a, [], 0, "CAN_COLLIDE"];
								_ammo5 setDir 310;
								ammoArray pushBack _ammo5;
								
								_ammo6 = createVehicle ["FIR_Baseplate", _ammoPos6a, [], 0, "CAN_COLLIDE"];
								_ammo6 setDir 310;
								ammoArray pushBack _ammo6;
	
								// Replacement code from HeliPractice - leads to automated single flight
								_x = 97;
								while {(_x < 105)} do
								{
									// Generate HLS Pool
									_lz = missionNamespace getVariable ("lz" + format["%1", _x + 1]);
									lzList = lzList + [_lz];
									_x = _x + 1;
									
								};
								
								// Generate HLS for this exercise instance
								_x = 0;
								while {(_x < 6)} do
								{
									_hls = selectRandom lzList;
									lzList = lzList - [_hls];
									_LZMark = createMarker ["HLS" + format["%1",_x], getPos _hls];
									_LZMark setMarkerShape "ICON";
									_LZMark setMarkerType "mil_start";
									_LZMark setMarkerText "LZ";
									markerArray pushBack _LZMark;
									_x = _x + 1;
									
								};
							};
							case "3":
							{
								// spawn aircraft
								_chopper1 = createVehicle ["JAS_CUP_B_Mi17_CDF", _parkingPos1a, [], 0, "CAN_COLLIDE"];
								_chopper1 setDir 310;
								[_chopper1,["med_box","west"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _chopper1;
								
								_chopper2 = createVehicle ["JAS_CUP_B_Mi17_CDF", _parkingPos3a, [], 0, "CAN_COLLIDE"];
								_chopper2 setDir 310;
								[_chopper2,["med_box","west"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _chopper2;
								
								_chopper3 = createVehicle ["JAS_CUP_B_Mi17_CDF", _parkingPos2, [], 0, "CAN_COLLIDE"];
								_chopper3 setDir 310;
								[_chopper3,["med_box","west"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _chopper3;
								
								_chopper4 = createVehicle ["JAS_CUP_B_Mi17_CDF", _parkingPos5, [], 0, "CAN_COLLIDE"];
								_chopper4 setDir 310;
								[_chopper4,["med_box","west"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _chopper4;
								
								_chopper5 = createVehicle ["JAS_CUP_B_Mi17_CDF", _parkingPos4a, [], 0, "CAN_COLLIDE"];
								_chopper5 setDir 310;
								[_chopper5,["med_box","west"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _chopper5;
								
								_chopper6 = createVehicle ["JAS_CUP_B_Mi17_CDF", _parkingPos6a, [], 0, "CAN_COLLIDE"];
								_chopper6 setDir 310;
								[_chopper6,["med_box","west"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _chopper6;
								
								// spawn ammo
								_ammo1 = createVehicle ["FIR_Baseplate", _ammoPos1a, [], 0, "CAN_COLLIDE"];
								_ammo1 setDir 310;
								ammoArray pushBack _ammo1;
								
								_ammo2 = createVehicle ["FIR_Baseplate", _ammoPos3a, [], 0, "CAN_COLLIDE"];
								_ammo2 setDir 310;
								ammoArray pushBack _ammo2;
								
								_ammo3 = createVehicle ["FIR_Baseplate", _ammoPos2, [], 0, "CAN_COLLIDE"];
								_ammo3 setDir 310;
								ammoArray pushBack _ammo3;
								
								_ammo4 = createVehicle ["FIR_Baseplate", _ammoPos5, [], 0, "CAN_COLLIDE"];
								_ammo4 setDir 310;
								ammoArray pushBack _ammo4;
								
								_ammo5 = createVehicle ["FIR_Baseplate", _ammoPos4a, [], 0, "CAN_COLLIDE"];
								_ammo5 setDir 310;
								ammoArray pushBack _ammo5;
								
								_ammo6 = createVehicle ["FIR_Baseplate", _ammoPos6a, [], 0, "CAN_COLLIDE"];
								_ammo6 setDir 310;
								ammoArray pushBack _ammo6;
	
								// spawn cars with actions added to teleport from location to location eventually returning to start
								_car0 = createVehicle ["CUP_B_UAZ_Unarmed_CDF", _casevacPos0, [], 0, "CAN_COLLIDE"];
								_car0 setDir 135;
								_car0 setVehicleVarName "Car0";
								_car0 addAction ["<t color='#FFFF00'>Teleport to next CCP</t>","[player, 'casevac1'] call GOL_fnc_Teleport;"];
								[_car0,["med_box","west"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _car0;
								
								_car1 = createVehicle ["CUP_B_UAZ_Unarmed_CDF", _casevacPos1, [], 0, "CAN_COLLIDE"];
								_car1 setDir 290;
								_car1 setVehicleVarName "Car1";
								_car1 addAction ["<t color='#FFFF00'>Teleport to next CCP</t>","[player, 'casevac2'] call GOL_fnc_Teleport;"];
								[_car1,["med_box","west"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _car1;
								
								_car2 = createVehicle ["CUP_B_UAZ_Unarmed_CDF", _casevacPos2, [], 0, "CAN_COLLIDE"];
								_car2 setDir 338;
								_car2 setVehicleVarName "Car2";
								_car2 addAction ["<t color='#FFFF00'>Teleport to next CCP</t>","[player, 'casevac3'] call GOL_fnc_Teleport;"];
								[_car2,["med_box","west"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _car2;
								
								_car3 = createVehicle ["CUP_B_UAZ_Unarmed_CDF", _casevacPos3, [], 0, "CAN_COLLIDE"];
								_car3 setDir 0;
								_car3 setVehicleVarName "Car3";
								_car3 addAction ["<t color='#FFFF00'>Teleport to next CCP</t>","[player, 'casevac4'] call GOL_fnc_Teleport;"];
								[_car3,["med_box","west"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _car3;
								
								_car4 = createVehicle ["CUP_B_UAZ_Unarmed_CDF", _casevacPos4, [], 0, "CAN_COLLIDE"];
								_car4 setDir 39;
								_car4 setVehicleVarName "Car4";
								_car4 addAction ["<t color='#FFFF00'>Teleport to next CCP</t>","[player, 'casevac5'] call GOL_fnc_Teleport;"];
								[_car4,["med_box","west"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _car4;
								
								_car5 = createVehicle ["CUP_B_UAZ_Unarmed_CDF", _casevacPos5, [], 0, "CAN_COLLIDE"];
								_car5 setDir 178;
								_car5 setVehicleVarName "Car5";
								_car5 addAction ["<t color='#FFFF00'>Teleport to next CCP</t>","[player, 'casevac6'] call GOL_fnc_Teleport;"];
								[_car5,["med_box","west"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _car5;
								
								_car6 = createVehicle ["CUP_B_UAZ_Unarmed_CDF", _casevacPos6, [], 0, "CAN_COLLIDE"];
								_car6 setDir 69;
								_car6 setVehicleVarName "Car6";
								_car6 addAction ["<t color='#FFFF00'>Teleport to next CCP</t>","[player, 'casevac7'] call GOL_fnc_Teleport;"];
								[_car6,["med_box","west"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _car6;
								
								_car7 = createVehicle ["CUP_B_UAZ_Unarmed_CDF", _casevacPos7, [], 0, "CAN_COLLIDE"];
								_car7 setDir 78;
								_car7 setVehicleVarName "Car7";
								_car7 addAction ["<t color='#FFFF00'>Return To Start</t>","[player, 'casevac0'] call GOL_fnc_Teleport;"];
								[_car7,["med_box","west"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _car7;
								
							};
							default
							{
								hint "Code Break in rav1 _side west/_paramWest 1/callsign raven/exercise sub switch";
							};
						};
					};
					case "Giant":
					{
						switch (exerciseNumber) do
						{
							case "1":
							{
								// spawn aircraft
								_chopper1 = createVehicle ["JAS_CUP_B_MI6T_CDF", _parkingPos1a, [], 0, "CAN_COLLIDE"];
								_chopper1 setDir 310;
								aircraftArray pushBack _chopper1;
								
								_chopper2 = createVehicle ["JAS_CUP_B_MI6T_CDF", _parkingPos3a, [], 0, "CAN_COLLIDE"];
								_chopper2 setDir 310;
								aircraftArray pushBack _chopper2;
								
								_chopper3 = createVehicle ["JAS_CUP_B_MI6T_CDF", _parkingPos2, [], 0, "CAN_COLLIDE"];
								_chopper3 setDir 310;
								aircraftArray pushBack _chopper3;
								
								_chopper4 = createVehicle ["JAS_CUP_B_MI6T_CDF", _parkingPos5, [], 0, "CAN_COLLIDE"];
								_chopper4 setDir 310;
								aircraftArray pushBack _chopper4;
								
								_chopper5 = createVehicle ["JAS_CUP_B_MI6T_CDF", _parkingPos4a, [], 0, "CAN_COLLIDE"];
								_chopper5 setDir 310;
								aircraftArray pushBack _chopper5;
								
								_chopper6 = createVehicle ["JAS_CUP_B_MI6T_CDF", _parkingPos6a, [], 0, "CAN_COLLIDE"];
								_chopper6 setDir 310;
								aircraftArray pushBack _chopper6;
	
								// Replacement code from HeliPractice - leads to automated single flight
								_x = 86;
								while {(_x < 97)} do
								{
									// Generate HLS Pool
									_lz = missionNamespace getVariable ("lz" + format["%1", _x + 1]);
									lzList = lzList + [_lz];
									_x = _x + 1;
									
								};
								
								// Generate HLS for this exercise instance
								_x = 0;
								while {(_x < 6)} do
								{
									_hls = selectRandom lzList;
									lzList = lzList - [_hls];
									_LZMark = createMarker ["HLS" + format["%1",_x], getPos _hls];
									_LZMark setMarkerShape "ICON";
									_LZMark setMarkerType "mil_start";
									_LZMark setMarkerText "LZ";
									markerArray pushBack _LZMark;
									_x = _x + 1;
									
								};
							};
							case "2":
							{
								// spawn aircraft
								_chopper1 = createVehicle ["JAS_CUP_B_MI6T_CDF", _parkingPos1a, [], 0, "CAN_COLLIDE"];
								_chopper1 setDir 310;
								aircraftArray pushBack _chopper1;
								
								_chopper2 = createVehicle ["JAS_CUP_B_MI6T_CDF", _parkingPos3a, [], 0, "CAN_COLLIDE"];
								_chopper2 setDir 310;
								aircraftArray pushBack _chopper2;
								
								_chopper3 = createVehicle ["JAS_CUP_B_MI6T_CDF", _parkingPos2, [], 0, "CAN_COLLIDE"];
								_chopper3 setDir 310;
								aircraftArray pushBack _chopper3;
								
								_chopper4 = createVehicle ["JAS_CUP_B_MI6T_CDF", _parkingPos5, [], 0, "CAN_COLLIDE"];
								_chopper4 setDir 310;
								aircraftArray pushBack _chopper4;
								
								_chopper5 = createVehicle ["JAS_CUP_B_MI6T_CDF", _parkingPos4a, [], 0, "CAN_COLLIDE"];
								_chopper5 setDir 310;
								aircraftArray pushBack _chopper5;
								
								_chopper6 = createVehicle ["JAS_CUP_B_MI6T_CDF", _parkingPos6a, [], 0, "CAN_COLLIDE"];
								_chopper6 setDir 310;
								aircraftArray pushBack _chopper6;
								
								_crate1 = createVehicle ["B_CargoNet_01_ammo_F", _cratePos1, [], 0, "CAN_COLLIDE"];
								_crate1 setDir 310;
								[_crate1,["big_box","west"],[true,true]] call GOL_Fnc_GearHandler;
								supplyArray pushBack _crate1;
								
								_crate2 = createVehicle ["B_CargoNet_01_ammo_F", _cratePos2, [], 0, "CAN_COLLIDE"];
								_crate2 setDir 310;
								[_crate2,["big_box","west"],[true,true]] call GOL_Fnc_GearHandler;
								supplyArray pushBack _crate2;
								
								_crate3 = createVehicle ["B_CargoNet_01_ammo_F", _cratePos3, [], 0, "CAN_COLLIDE"];
								_crate3 setDir 310;
								[_crate3,["big_box","west"],[true,true]] call GOL_Fnc_GearHandler;
								supplyArray pushBack _crate3;
								
								_crate4 = createVehicle ["B_CargoNet_01_ammo_F", _cratePos4, [], 0, "CAN_COLLIDE"];
								_crate4 setDir 310;
								[_crate4,["big_box","west"],[true,true]] call GOL_Fnc_GearHandler;
								supplyArray pushBack _crate4;
								
								_crate5 = createVehicle ["B_CargoNet_01_ammo_F", _cratePos5, [], 0, "CAN_COLLIDE"];
								_crate5 setDir 310;
								[_crate5,["big_box","west"],[true,true]] call GOL_Fnc_GearHandler;
								supplyArray pushBack _crate5;
								
								_crate6 = createVehicle ["B_CargoNet_01_ammo_F", _cratePos6, [], 0, "CAN_COLLIDE"];
								_crate6 setDir 310;
								[_crate6,["big_box","west"],[true,true]] call GOL_Fnc_GearHandler;
								supplyArray pushBack _crate6;
								
								_crate7 = createVehicle ["B_CargoNet_01_ammo_F", _cratePos7, [], 0, "CAN_COLLIDE"];
								_crate7 setDir 310;
								[_crate7,["big_box","west"],[true,true]] call GOL_Fnc_GearHandler;
								supplyArray pushBack _crate7;
								
								{
									_LZMark = createMarker ["Crate" + format["%1",_x], getPos _x];
									_LZMark setMarkerShape "ICON";
									_LZMark setMarkerType "mil_destroy";
									_LZMark setMarkerText "Crate";
									markerArray pushBack _LZMark;
								} foreach supplyArray;
	
								// Replacement code from HeliPractice - leads to automated single flight
								_x = 97;
								while {(_x < 105)} do
								{
									// Generate HLS Pool
									_lz = missionNamespace getVariable ("lz" + format["%1", _x + 1]);
									lzList = lzList + [_lz];
									_x = _x + 1;
									
								};
								
								// Generate HLS for this exercise instance
								_x = 0;
								while {(_x < 6)} do
								{
									_hls = selectRandom lzList;
									lzList = lzList - [_hls];
									_LZMark = createMarker ["HLS" + format["%1",_x], getPos _hls];
									_LZMark setMarkerShape "ICON";
									_LZMark setMarkerType "mil_start";
									_LZMark setMarkerText "LZ";
									markerArray pushBack _LZMark;
									_x = _x + 1;
									
								};
							};
							default
							{
								hint "Code Break in rav1 _side west/_paramWest 1/callsign giant/exercise sub switch";
							};
						};
					};
					case "Condor":
					{
						switch (exerciseNumber) do
						{
							case "1":
							{
								// spawn aircraft
								_chopper1 = createVehicle ["CUP_B_C130J_USMC", _condorParking1, [], 0, "CAN_COLLIDE"];
								_chopper1 setDir 134;
								aircraftArray pushBack _chopper1;
								
								_chopper2 = createVehicle ["CUP_B_C130J_USMC", _condorParking2, [], 0, "CAN_COLLIDE"];
								_chopper2 setDir 134;
								aircraftArray pushBack _chopper2;
								
								_chopper3 = createVehicle ["CUP_B_C130J_USMC", _condorParking3, [], 0, "CAN_COLLIDE"];
								_chopper3 setDir 134;
								aircraftArray pushBack _chopper3;
								
								_dz = ["1","2","3"] call BIS_fnc_selectRandom;
								
								switch (_dz) do
								{
									case "1":
									{
										_LZMark = createMarker ["DZ", [20550.61,8248.738]];
										_LZMark setMarkerShape "RECTANGLE";
										_LZMark setMarkerSize [500,125];
										_LZMark setMarkerBrush "Solid";
										_LZMark setMarkerColor "ColorBlue";
										markerArray pushBack _LZMark;
										
										_LZMark2 = createMarker ["RedLight", [21562.7,8248.738]];
										_LZMark2 setMarkerShape "ICON";
										_LZMark2 setMarkerType "hd_dot";
										_LZMark2 setMarkerColor "ColorRed";
										_LZMark2 setMarkerText "Red Light";
										markerArray pushBack _LZMark2;
										
										_LZMark3 = createMarker ["GreenLight", [19561.7,8248.738]];
										_LZMark3 setMarkerShape "ICON";
										_LZMark3 setMarkerType "hd_dot";
										_LZMark3 setMarkerColor "ColorGreen";
										_LZMark3 setMarkerText "Green Light";
										markerArray pushBack _LZMark3;
									};
									case "2":
									{
										_LZMark = createMarker ["DZ", [26614.7,24067.2]];
										_LZMark setMarkerShape "RECTANGLE";
										_LZMark setMarkerSize [500,125];
										_LZMark setMarkerBrush "Solid";
										_LZMark setMarkerColor "ColorBlue";
										_LZMark setMarkerDir 310.475;
										markerArray pushBack _LZMark;
										
										_LZMark2 = createMarker ["RedLight", [27246.6,24833.1]];
										_LZMark2 setMarkerShape "ICON";
										_LZMark2 setMarkerType "hd_dot";
										_LZMark2 setMarkerColor "ColorRed";
										_LZMark2 setMarkerText "Red Light";
										markerArray pushBack _LZMark2;
										
										_LZMark3 = createMarker ["GreenLight", [25966.2,23320.7]];
										_LZMark3 setMarkerShape "ICON";
										_LZMark3 setMarkerType "hd_dot";
										_LZMark3 setMarkerColor "ColorGreen";
										_LZMark3 setMarkerText "Green Light";
										markerArray pushBack _LZMark3;
									};
									case "3":
									{
										_LZMark = createMarker ["DZ", [5914.52,15037.1]];
										_LZMark setMarkerShape "RECTANGLE";
										_LZMark setMarkerSize [500,125];
										_LZMark setMarkerBrush "Solid";
										_LZMark setMarkerColor "ColorBlue";
										_LZMark setMarkerDir 144.314;
										markerArray pushBack _LZMark;
										
										_LZMark2 = createMarker ["RedLight", [5117.79,14444.7]];
										_LZMark2 setMarkerShape "ICON";
										_LZMark2 setMarkerType "hd_dot";
										_LZMark2 setMarkerColor "ColorRed";
										_LZMark2 setMarkerText "Red Light";
										markerArray pushBack _LZMark2;
										
										_LZMark3 = createMarker ["GreenLight", [6722.77,15606.9]];
										_LZMark3 setMarkerShape "ICON";
										_LZMark3 setMarkerType "hd_dot";
										_LZMark3 setMarkerColor "ColorGreen";
										_LZMark3 setMarkerText "Green Light";
										markerArray pushBack _LZMark3;
									};
								};
							};
							default
							{
								hint "Code Break in rav1 _side west/_paramWest 1/callsign condor/exercise sub switch";
							};
						};
					};
					case "Dragon":
					{
						// Target Type Array
						_TGTType = ["O_Truck_02_Ammo_F","O_Truck_02_fuel_F","O_Truck_02_medical_F","O_Truck_02_box_F","O_Truck_02_transport_F","O_Truck_02_covered_F","O_MRAP_02_F","O_MRAP_02_gmg_F","O_MRAP_02_hmg_F","O_LSV_02_armed_F","O_LSV_02_unarmed_F","O_Truck_03_ammo_F","O_Truck_03_device_F","O_Truck_03_fuel_F","O_Truck_03_medical_F","O_Truck_03_repair_F","O_Truck_03_transport_F","O_Truck_03_covered_F"];
						// Target Pos Array
						_TGTPos = [_mortarTGTpos1,_mortarTGTpos2,_mortarTGTpos3,_mortarTGTpos4,_mortarTGTpos5];
						// Spawn Targets
						{
							_TGT = _TGTType call BIS_fnc_selectRandom;
							_chopper1 = createVehicle [_TGT, _x, [], 0, "CAN_COLLIDE"];
							_chopper1 setDir 270;
							targetArray pushBack _chopper1;
						} foreach _TGTPos;
						_chopper2 = createVehicle ["B_Mortar_01_F", _mortarTGTpos6, [], 0, "CAN_COLLIDE"];
						aircraftArray pushBack _chopper2;
					};
					default
					{
						hint "Code Break in rav1 _side west/_paramWest 1/callsign sub switch";
					};
				};
			};
			case 2: // ACR
			{
				// detect callsign and exercise
				switch (exerciseCallsign) do
				{
					case "Raven":
					{
						switch (exerciseNumber) do
						{
							case "1":
							{
								// spawn aircraft
								_chopper1 = createVehicle ["JAS_CUP_B_Mi171Sh_ACR", _parkingPos1a, [], 0, "CAN_COLLIDE"];
								_chopper1 setDir 310;
								[_chopper1,["med_box","west"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _chopper1;
								
								_chopper2 = createVehicle ["JAS_CUP_B_Mi171Sh_ACR", _parkingPos3a, [], 0, "CAN_COLLIDE"];
								_chopper2 setDir 310;
								[_chopper2,["med_box","west"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _chopper2;
								
								_chopper3 = createVehicle ["JAS_CUP_B_Mi171Sh_ACR", _parkingPos2, [], 0, "CAN_COLLIDE"];
								_chopper3 setDir 310;
								[_chopper3,["med_box","west"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _chopper3;
								
								_chopper4 = createVehicle ["JAS_CUP_B_Mi171Sh_ACR", _parkingPos5, [], 0, "CAN_COLLIDE"];
								_chopper4 setDir 310;
								[_chopper4,["med_box","west"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _chopper4;
								
								_chopper5 = createVehicle ["JAS_CUP_B_Mi171Sh_ACR", _parkingPos4a, [], 0, "CAN_COLLIDE"];
								_chopper5 setDir 310;
								[_chopper5,["med_box","west"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _chopper5;
								
								_chopper6 = createVehicle ["JAS_CUP_B_Mi171Sh_ACR", _parkingPos6a, [], 0, "CAN_COLLIDE"];
								_chopper6 setDir 310;
								[_chopper6,["med_box","west"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _chopper6;
								
								// spawn ammo
								_ammo1 = createVehicle ["FIR_Baseplate", _ammoPos1a, [], 0, "CAN_COLLIDE"];
								_ammo1 setDir 310;
								ammoArray pushBack _ammo1;
								
								_ammo2 = createVehicle ["FIR_Baseplate", _ammoPos3a, [], 0, "CAN_COLLIDE"];
								_ammo2 setDir 310;
								ammoArray pushBack _ammo2;
								
								_ammo3 = createVehicle ["FIR_Baseplate", _ammoPos2, [], 0, "CAN_COLLIDE"];
								_ammo3 setDir 310;
								ammoArray pushBack _ammo3;
								
								_ammo4 = createVehicle ["FIR_Baseplate", _ammoPos5, [], 0, "CAN_COLLIDE"];
								_ammo4 setDir 310;
								ammoArray pushBack _ammo4;
								
								_ammo5 = createVehicle ["FIR_Baseplate", _ammoPos4a, [], 0, "CAN_COLLIDE"];
								_ammo5 setDir 310;
								ammoArray pushBack _ammo5;
								
								_ammo6 = createVehicle ["FIR_Baseplate", _ammoPos6a, [], 0, "CAN_COLLIDE"];
								_ammo6 setDir 310;
								ammoArray pushBack _ammo6;
	
								// Replacement code from HeliPractice - leads to automated single flight
								_x = 0;
								while {(_x < 86)} do
								{
									// Generate HLS Pool
									_lz = missionNamespace getVariable ("lz" + format["%1", _x + 1]);
									lzList = lzList + [_lz];
									_x = _x + 1;
									
								};
								
								// Generate HLS for this exercise instance
								_x = 0;
								while {(_x < 6)} do
								{
									_hls = selectRandom lzList;
									lzList = lzList - [_hls];
									_LZMark = createMarker ["HLS" + format["%1",_x], getPos _hls];
									_LZMark setMarkerShape "ICON";
									_LZMark setMarkerType "mil_start";
									_LZMark setMarkerText "LZ";
									markerArray pushBack _LZMark;
									_x = _x + 1;
									
								};
							};
							case "2":
							{
								// spawn aircraft
								_chopper1 = createVehicle ["JAS_CUP_B_Mi171Sh_ACR", _parkingPos1a, [], 0, "CAN_COLLIDE"];
								_chopper1 setDir 310;
								[_chopper1,["med_box","west"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _chopper1;
								
								_chopper2 = createVehicle ["JAS_CUP_B_Mi171Sh_ACR", _parkingPos3a, [], 0, "CAN_COLLIDE"];
								_chopper2 setDir 310;
								[_chopper2,["med_box","west"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _chopper2;
								
								_chopper3 = createVehicle ["JAS_CUP_B_Mi171Sh_ACR", _parkingPos2, [], 0, "CAN_COLLIDE"];
								_chopper3 setDir 310;
								[_chopper3,["med_box","west"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _chopper3;
								
								_chopper4 = createVehicle ["JAS_CUP_B_Mi171Sh_ACR", _parkingPos5, [], 0, "CAN_COLLIDE"];
								_chopper4 setDir 310;
								[_chopper4,["med_box","west"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _chopper4;
								
								_chopper5 = createVehicle ["JAS_CUP_B_Mi171Sh_ACR", _parkingPos4a, [], 0, "CAN_COLLIDE"];
								_chopper5 setDir 310;
								[_chopper5,["med_box","west"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _chopper5;
								
								_chopper6 = createVehicle ["JAS_CUP_B_Mi171Sh_ACR", _parkingPos6a, [], 0, "CAN_COLLIDE"];
								_chopper6 setDir 310;
								[_chopper6,["med_box","west"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _chopper6;
								
								// spawn ammo
								_ammo1 = createVehicle ["FIR_Baseplate", _ammoPos1a, [], 0, "CAN_COLLIDE"];
								_ammo1 setDir 310;
								ammoArray pushBack _ammo1;
								
								_ammo2 = createVehicle ["FIR_Baseplate", _ammoPos3a, [], 0, "CAN_COLLIDE"];
								_ammo2 setDir 310;
								ammoArray pushBack _ammo2;
								
								_ammo3 = createVehicle ["FIR_Baseplate", _ammoPos2, [], 0, "CAN_COLLIDE"];
								_ammo3 setDir 310;
								ammoArray pushBack _ammo3;
								
								_ammo4 = createVehicle ["FIR_Baseplate", _ammoPos5, [], 0, "CAN_COLLIDE"];
								_ammo4 setDir 310;
								ammoArray pushBack _ammo4;
								
								_ammo5 = createVehicle ["FIR_Baseplate", _ammoPos4a, [], 0, "CAN_COLLIDE"];
								_ammo5 setDir 310;
								ammoArray pushBack _ammo5;
								
								_ammo6 = createVehicle ["FIR_Baseplate", _ammoPos6a, [], 0, "CAN_COLLIDE"];
								_ammo6 setDir 310;
								ammoArray pushBack _ammo6;
	
								// Replacement code from HeliPractice - leads to automated single flight
								_x = 97;
								while {(_x < 105)} do
								{
									// Generate HLS Pool
									_lz = missionNamespace getVariable ("lz" + format["%1", _x + 1]);
									lzList = lzList + [_lz];
									_x = _x + 1;
									
								};
								
								// Generate HLS for this exercise instance
								_x = 0;
								while {(_x < 6)} do
								{
									_hls = selectRandom lzList;
									lzList = lzList - [_hls];
									_LZMark = createMarker ["HLS" + format["%1",_x], getPos _hls];
									_LZMark setMarkerShape "ICON";
									_LZMark setMarkerType "mil_start";
									_LZMark setMarkerText "LZ";
									markerArray pushBack _LZMark;
									_x = _x + 1;
									
								};
							};
							case "3":
							{
								// spawn aircraft
								_chopper1 = createVehicle ["JAS_CUP_B_Mi171Sh_ACR", _parkingPos1a, [], 0, "CAN_COLLIDE"];
								_chopper1 setDir 310;
								[_chopper1,["med_box","west"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _chopper1;
								
								_chopper2 = createVehicle ["JAS_CUP_B_Mi171Sh_ACR", _parkingPos3a, [], 0, "CAN_COLLIDE"];
								_chopper2 setDir 310;
								[_chopper2,["med_box","west"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _chopper2;
								
								_chopper3 = createVehicle ["JAS_CUP_B_Mi171Sh_ACR", _parkingPos2, [], 0, "CAN_COLLIDE"];
								_chopper3 setDir 310;
								[_chopper3,["med_box","west"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _chopper3;
								
								_chopper4 = createVehicle ["JAS_CUP_B_Mi171Sh_ACR", _parkingPos5, [], 0, "CAN_COLLIDE"];
								_chopper4 setDir 310;
								[_chopper4,["med_box","west"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _chopper4;
								
								_chopper5 = createVehicle ["JAS_CUP_B_Mi171Sh_ACR", _parkingPos4a, [], 0, "CAN_COLLIDE"];
								_chopper5 setDir 310;
								[_chopper5,["med_box","west"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _chopper5;
								
								_chopper6 = createVehicle ["JAS_CUP_B_Mi171Sh_ACR", _parkingPos6a, [], 0, "CAN_COLLIDE"];
								_chopper6 setDir 310;
								[_chopper6,["med_box","west"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _chopper6;
								
								// spawn ammo
								_ammo1 = createVehicle ["FIR_Baseplate", _ammoPos1a, [], 0, "CAN_COLLIDE"];
								_ammo1 setDir 310;
								ammoArray pushBack _ammo1;
								
								_ammo2 = createVehicle ["FIR_Baseplate", _ammoPos3a, [], 0, "CAN_COLLIDE"];
								_ammo2 setDir 310;
								ammoArray pushBack _ammo2;
								
								_ammo3 = createVehicle ["FIR_Baseplate", _ammoPos2, [], 0, "CAN_COLLIDE"];
								_ammo3 setDir 310;
								ammoArray pushBack _ammo3;
								
								_ammo4 = createVehicle ["FIR_Baseplate", _ammoPos5, [], 0, "CAN_COLLIDE"];
								_ammo4 setDir 310;
								ammoArray pushBack _ammo4;
								
								_ammo5 = createVehicle ["FIR_Baseplate", _ammoPos4a, [], 0, "CAN_COLLIDE"];
								_ammo5 setDir 310;
								ammoArray pushBack _ammo5;
								
								_ammo6 = createVehicle ["FIR_Baseplate", _ammoPos6a, [], 0, "CAN_COLLIDE"];
								_ammo6 setDir 310;
								ammoArray pushBack _ammo6;
	
								// spawn cars with actions added to teleport from location to location eventually returning to start
								_car0 = createVehicle ["CUP_B_HMMWV_Ambulance_ACR", _casevacPos0, [], 0, "CAN_COLLIDE"];
								_car0 setDir 135;
								_car0 setVehicleVarName "Car0";
								_car0 addAction ["<t color='#FFFF00'>Teleport to next CCP</t>","[player, 'casevac1'] call GOL_fnc_Teleport;"];
								[_car0,["med_box","west"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _car0;
								
								_car1 = createVehicle ["CUP_B_HMMWV_Ambulance_ACR", _casevacPos1, [], 0, "CAN_COLLIDE"];
								_car1 setDir 290;
								_car1 setVehicleVarName "Car1";
								_car1 addAction ["<t color='#FFFF00'>Teleport to next CCP</t>","[player, 'casevac2'] call GOL_fnc_Teleport;"];
								[_car1,["med_box","west"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _car1;
								
								_car2 = createVehicle ["CUP_B_HMMWV_Ambulance_ACR", _casevacPos2, [], 0, "CAN_COLLIDE"];
								_car2 setDir 338;
								_car2 setVehicleVarName "Car2";
								_car2 addAction ["<t color='#FFFF00'>Teleport to next CCP</t>","[player, 'casevac3'] call GOL_fnc_Teleport;"];
								[_car2,["med_box","west"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _car2;
								
								_car3 = createVehicle ["CUP_B_HMMWV_Ambulance_ACR", _casevacPos3, [], 0, "CAN_COLLIDE"];
								_car3 setDir 0;
								_car3 setVehicleVarName "Car3";
								_car3 addAction ["<t color='#FFFF00'>Teleport to next CCP</t>","[player, 'casevac4'] call GOL_fnc_Teleport;"];
								[_car3,["med_box","west"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _car3;
								
								_car4 = createVehicle ["CUP_B_HMMWV_Ambulance_ACR", _casevacPos4, [], 0, "CAN_COLLIDE"];
								_car4 setDir 39;
								_car4 setVehicleVarName "Car4";
								_car4 addAction ["<t color='#FFFF00'>Teleport to next CCP</t>","[player, 'casevac5'] call GOL_fnc_Teleport;"];
								[_car4,["med_box","west"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _car4;
								
								_car5 = createVehicle ["CUP_B_HMMWV_Ambulance_ACR", _casevacPos5, [], 0, "CAN_COLLIDE"];
								_car5 setDir 178;
								_car5 setVehicleVarName "Car5";
								_car5 addAction ["<t color='#FFFF00'>Teleport to next CCP</t>","[player, 'casevac6'] call GOL_fnc_Teleport;"];
								[_car5,["med_box","west"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _car5;
								
								_car6 = createVehicle ["CUP_B_HMMWV_Ambulance_ACR", _casevacPos6, [], 0, "CAN_COLLIDE"];
								_car6 setDir 69;
								_car6 setVehicleVarName "Car6";
								_car6 addAction ["<t color='#FFFF00'>Teleport to next CCP</t>","[player, 'casevac7'] call GOL_fnc_Teleport;"];
								[_car6,["med_box","west"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _car6;
								
								_car7 = createVehicle ["CUP_B_HMMWV_Ambulance_ACR", _casevacPos7, [], 0, "CAN_COLLIDE"];
								_car7 setDir 78;
								_car7 setVehicleVarName "Car7";
								_car7 addAction ["<t color='#FFFF00'>Return To Start</t>","[player, 'casevac0'] call GOL_fnc_Teleport;"];
								[_car7,["med_box","west"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _car7;
								
							};
							default
							{
								hint "Code Break in rav1 _side west/_paramWest 2/callsign raven/exercise sub switch";
							};
						};
					};
					case "Giant":
					{
						switch (exerciseNumber) do
						{
							case "1":
							{
								// spawn aircraft
								_chopper1 = createVehicle ["JAS_CUP_B_Mi171Sh_ACR", _parkingPos1a, [], 0, "CAN_COLLIDE"];
								_chopper1 setDir 310;
								aircraftArray pushBack _chopper1;
								
								_chopper2 = createVehicle ["JAS_CUP_B_Mi171Sh_ACR", _parkingPos3a, [], 0, "CAN_COLLIDE"];
								_chopper2 setDir 310;
								aircraftArray pushBack _chopper2;
								
								_chopper3 = createVehicle ["JAS_CUP_B_Mi171Sh_ACR", _parkingPos2, [], 0, "CAN_COLLIDE"];
								_chopper3 setDir 310;
								aircraftArray pushBack _chopper3;
								
								_chopper4 = createVehicle ["JAS_CUP_B_Mi171Sh_ACR", _parkingPos5, [], 0, "CAN_COLLIDE"];
								_chopper4 setDir 310;
								aircraftArray pushBack _chopper4;
								
								_chopper5 = createVehicle ["JAS_CUP_B_Mi171Sh_ACR", _parkingPos4a, [], 0, "CAN_COLLIDE"];
								_chopper5 setDir 310;
								aircraftArray pushBack _chopper5;
								
								_chopper6 = createVehicle ["JAS_CUP_B_Mi171Sh_ACR", _parkingPos6a, [], 0, "CAN_COLLIDE"];
								_chopper6 setDir 310;
								aircraftArray pushBack _chopper6;
								
								// spawn ammo
								_ammo1 = createVehicle ["FIR_Baseplate", _ammoPos1a, [], 0, "CAN_COLLIDE"];
								_ammo1 setDir 310;
								ammoArray pushBack _ammo1;
								
								_ammo2 = createVehicle ["FIR_Baseplate", _ammoPos3a, [], 0, "CAN_COLLIDE"];
								_ammo2 setDir 310;
								ammoArray pushBack _ammo2;
								
								_ammo3 = createVehicle ["FIR_Baseplate", _ammoPos2, [], 0, "CAN_COLLIDE"];
								_ammo3 setDir 310;
								ammoArray pushBack _ammo3;
								
								_ammo4 = createVehicle ["FIR_Baseplate", _ammoPos5, [], 0, "CAN_COLLIDE"];
								_ammo4 setDir 310;
								ammoArray pushBack _ammo4;
								
								_ammo5 = createVehicle ["FIR_Baseplate", _ammoPos4a, [], 0, "CAN_COLLIDE"];
								_ammo5 setDir 310;
								ammoArray pushBack _ammo5;
								
								_ammo6 = createVehicle ["FIR_Baseplate", _ammoPos6a, [], 0, "CAN_COLLIDE"];
								_ammo6 setDir 310;
								ammoArray pushBack _ammo6;
	
								// Replacement code from HeliPractice - leads to automated single flight
								_x = 86;
								while {(_x < 97)} do
								{
									// Generate HLS Pool
									_lz = missionNamespace getVariable ("lz" + format["%1", _x + 1]);
									lzList = lzList + [_lz];
									_x = _x + 1;
									
								};
								
								// Generate HLS for this exercise instance
								_x = 0;
								while {(_x < 6)} do
								{
									_hls = selectRandom lzList;
									lzList = lzList - [_hls];
									_LZMark = createMarker ["HLS" + format["%1",_x], getPos _hls];
									_LZMark setMarkerShape "ICON";
									_LZMark setMarkerType "mil_start";
									_LZMark setMarkerText "LZ";
									markerArray pushBack _LZMark;
									_x = _x + 1;
									
								};
							};
							case "2":
							{
								// spawn aircraft
								_chopper1 = createVehicle ["JAS_CUP_B_Mi171Sh_ACR", _parkingPos1a, [], 0, "CAN_COLLIDE"];
								_chopper1 setDir 310;
								aircraftArray pushBack _chopper1;
								
								_chopper2 = createVehicle ["JAS_CUP_B_Mi171Sh_ACR", _parkingPos3a, [], 0, "CAN_COLLIDE"];
								_chopper2 setDir 310;
								aircraftArray pushBack _chopper2;
								
								_chopper3 = createVehicle ["JAS_CUP_B_Mi171Sh_ACR", _parkingPos2, [], 0, "CAN_COLLIDE"];
								_chopper3 setDir 310;
								aircraftArray pushBack _chopper3;
								
								_chopper4 = createVehicle ["JAS_CUP_B_Mi171Sh_ACR", _parkingPos5, [], 0, "CAN_COLLIDE"];
								_chopper4 setDir 310;
								aircraftArray pushBack _chopper4;
								
								_chopper5 = createVehicle ["JAS_CUP_B_Mi171Sh_ACR", _parkingPos4a, [], 0, "CAN_COLLIDE"];
								_chopper5 setDir 310;
								aircraftArray pushBack _chopper5;
								
								_chopper6 = createVehicle ["JAS_CUP_B_Mi171Sh_ACR", _parkingPos6a, [], 0, "CAN_COLLIDE"];
								_chopper6 setDir 310;
								aircraftArray pushBack _chopper6;
								
								// spawn ammo
								_ammo1 = createVehicle ["FIR_Baseplate", _ammoPos1a, [], 0, "CAN_COLLIDE"];
								_ammo1 setDir 310;
								ammoArray pushBack _ammo1;
								
								_ammo2 = createVehicle ["FIR_Baseplate", _ammoPos3a, [], 0, "CAN_COLLIDE"];
								_ammo2 setDir 310;
								ammoArray pushBack _ammo2;
								
								_ammo3 = createVehicle ["FIR_Baseplate", _ammoPos2, [], 0, "CAN_COLLIDE"];
								_ammo3 setDir 310;
								ammoArray pushBack _ammo3;
								
								_ammo4 = createVehicle ["FIR_Baseplate", _ammoPos5, [], 0, "CAN_COLLIDE"];
								_ammo4 setDir 310;
								ammoArray pushBack _ammo4;
								
								_ammo5 = createVehicle ["FIR_Baseplate", _ammoPos4a, [], 0, "CAN_COLLIDE"];
								_ammo5 setDir 310;
								ammoArray pushBack _ammo5;
								
								_ammo6 = createVehicle ["FIR_Baseplate", _ammoPos6a, [], 0, "CAN_COLLIDE"];
								_ammo6 setDir 310;
								ammoArray pushBack _ammo6;
								
								_crate1 = createVehicle ["B_CargoNet_01_ammo_F", _cratePos1, [], 0, "CAN_COLLIDE"];
								_crate1 setDir 310;
								[_crate1,["big_box","west"],[true,true]] call GOL_Fnc_GearHandler;
								supplyArray pushBack _crate1;
								
								_crate2 = createVehicle ["B_CargoNet_01_ammo_F", _cratePos2, [], 0, "CAN_COLLIDE"];
								_crate2 setDir 310;
								[_crate2,["big_box","west"],[true,true]] call GOL_Fnc_GearHandler;
								supplyArray pushBack _crate2;
								
								_crate3 = createVehicle ["B_CargoNet_01_ammo_F", _cratePos3, [], 0, "CAN_COLLIDE"];
								_crate3 setDir 310;
								[_crate3,["big_box","west"],[true,true]] call GOL_Fnc_GearHandler;
								supplyArray pushBack _crate3;
								
								_crate4 = createVehicle ["B_CargoNet_01_ammo_F", _cratePos4, [], 0, "CAN_COLLIDE"];
								_crate4 setDir 310;
								[_crate4,["big_box","west"],[true,true]] call GOL_Fnc_GearHandler;
								supplyArray pushBack _crate4;
								
								_crate5 = createVehicle ["B_CargoNet_01_ammo_F", _cratePos5, [], 0, "CAN_COLLIDE"];
								_crate5 setDir 310;
								[_crate5,["big_box","west"],[true,true]] call GOL_Fnc_GearHandler;
								supplyArray pushBack _crate5;
								
								_crate6 = createVehicle ["B_CargoNet_01_ammo_F", _cratePos6, [], 0, "CAN_COLLIDE"];
								_crate6 setDir 310;
								[_crate6,["big_box","west"],[true,true]] call GOL_Fnc_GearHandler;
								supplyArray pushBack _crate6;
								
								_crate7 = createVehicle ["B_CargoNet_01_ammo_F", _cratePos7, [], 0, "CAN_COLLIDE"];
								_crate7 setDir 310;
								[_crate7,["big_box","west"],[true,true]] call GOL_Fnc_GearHandler;
								supplyArray pushBack _crate7;
								
								{
									_LZMark = createMarker ["Crate" + format["%1",_x], getPos _x];
									_LZMark setMarkerShape "ICON";
									_LZMark setMarkerType "mil_destroy";
									_LZMark setMarkerText "Crate";
									markerArray pushBack _LZMark;
								} foreach supplyArray;
	
								// Replacement code from HeliPractice - leads to automated single flight
								_x = 97;
								while {(_x < 105)} do
								{
									// Generate HLS Pool
									_lz = missionNamespace getVariable ("lz" + format["%1", _x + 1]);
									lzList = lzList + [_lz];
									_x = _x + 1;
									
								};
								
								// Generate HLS for this exercise instance
								_x = 0;
								while {(_x < 6)} do
								{
									_hls = selectRandom lzList;
									lzList = lzList - [_hls];
									_LZMark = createMarker ["HLS" + format["%1",_x], getPos _hls];
									_LZMark setMarkerShape "ICON";
									_LZMark setMarkerType "mil_start";
									_LZMark setMarkerText "LZ";
									markerArray pushBack _LZMark;
									_x = _x + 1;
									
								};
							};
							default
							{
								hint "Code Break in rav1 _side west/_paramWest 1/callsign giant/exercise sub switch";
							};
						};
					};
					case "Condor":
					{
						switch (exerciseNumber) do
						{
							case "1":
							{
								// spawn aircraft
								_chopper1 = createVehicle ["CUP_B_C130J_USMC", _condorParking1, [], 0, "CAN_COLLIDE"];
								_chopper1 setDir 134;
								aircraftArray pushBack _chopper1;
								
								_chopper2 = createVehicle ["CUP_B_C130J_USMC", _condorParking2, [], 0, "CAN_COLLIDE"];
								_chopper2 setDir 134;
								aircraftArray pushBack _chopper2;
								
								_chopper3 = createVehicle ["CUP_B_C130J_USMC", _condorParking3, [], 0, "CAN_COLLIDE"];
								_chopper3 setDir 134;
								aircraftArray pushBack _chopper3;
								
								_dz = ["1","2","3"] call BIS_fnc_selectRandom;
								
								switch (_dz) do
								{
									case "1":
									{
										_LZMark = createMarker ["DZ", [20550.61,8248.738]];
										_LZMark setMarkerShape "RECTANGLE";
										_LZMark setMarkerSize [500,125];
										_LZMark setMarkerBrush "Solid";
										_LZMark setMarkerColor "ColorBlue";
										markerArray pushBack _LZMark;
										
										_LZMark2 = createMarker ["RedLight", [21562.7,8248.738]];
										_LZMark2 setMarkerShape "ICON";
										_LZMark2 setMarkerType "hd_dot";
										_LZMark2 setMarkerColor "ColorRed";
										_LZMark2 setMarkerText "Red Light";
										markerArray pushBack _LZMark2;
										
										_LZMark3 = createMarker ["GreenLight", [19561.7,8248.738]];
										_LZMark3 setMarkerShape "ICON";
										_LZMark3 setMarkerType "hd_dot";
										_LZMark3 setMarkerColor "ColorGreen";
										_LZMark3 setMarkerText "Green Light";
										markerArray pushBack _LZMark3;
									};
									case "2":
									{
										_LZMark = createMarker ["DZ", [26614.7,24067.2]];
										_LZMark setMarkerShape "RECTANGLE";
										_LZMark setMarkerSize [500,125];
										_LZMark setMarkerBrush "Solid";
										_LZMark setMarkerColor "ColorBlue";
										_LZMark setMarkerDir 310.475;
										markerArray pushBack _LZMark;
										
										_LZMark2 = createMarker ["RedLight", [27246.6,24833.1]];
										_LZMark2 setMarkerShape "ICON";
										_LZMark2 setMarkerType "hd_dot";
										_LZMark2 setMarkerColor "ColorRed";
										_LZMark2 setMarkerText "Red Light";
										markerArray pushBack _LZMark2;
										
										_LZMark3 = createMarker ["GreenLight", [25966.2,23320.7]];
										_LZMark3 setMarkerShape "ICON";
										_LZMark3 setMarkerType "hd_dot";
										_LZMark3 setMarkerColor "ColorGreen";
										_LZMark3 setMarkerText "Green Light";
										markerArray pushBack _LZMark3;
									};
									case "3":
									{
										_LZMark = createMarker ["DZ", [5914.52,15037.1]];
										_LZMark setMarkerShape "RECTANGLE";
										_LZMark setMarkerSize [500,125];
										_LZMark setMarkerBrush "Solid";
										_LZMark setMarkerColor "ColorBlue";
										_LZMark setMarkerDir 144.314;
										markerArray pushBack _LZMark;
										
										_LZMark2 = createMarker ["RedLight", [5117.79,14444.7]];
										_LZMark2 setMarkerShape "ICON";
										_LZMark2 setMarkerType "hd_dot";
										_LZMark2 setMarkerColor "ColorRed";
										_LZMark2 setMarkerText "Red Light";
										markerArray pushBack _LZMark2;
										
										_LZMark3 = createMarker ["GreenLight", [6722.77,15606.9]];
										_LZMark3 setMarkerShape "ICON";
										_LZMark3 setMarkerType "hd_dot";
										_LZMark3 setMarkerColor "ColorGreen";
										_LZMark3 setMarkerText "Green Light";
										markerArray pushBack _LZMark3;
									};
								};
							};
							default
							{
								hint "Code Break in rav1 _side west/_paramWest 1/callsign condor/exercise sub switch";
							};
						};
					};
					case "Dragon":
					{
						// Target Type Array
						_TGTType = ["O_Truck_02_Ammo_F","O_Truck_02_fuel_F","O_Truck_02_medical_F","O_Truck_02_box_F","O_Truck_02_transport_F","O_Truck_02_covered_F","O_MRAP_02_F","O_MRAP_02_gmg_F","O_MRAP_02_hmg_F","O_LSV_02_armed_F","O_LSV_02_unarmed_F","O_Truck_03_ammo_F","O_Truck_03_device_F","O_Truck_03_fuel_F","O_Truck_03_medical_F","O_Truck_03_repair_F","O_Truck_03_transport_F","O_Truck_03_covered_F"];
						// Target Pos Array
						_TGTPos = [_mortarTGTpos1,_mortarTGTpos2,_mortarTGTpos3,_mortarTGTpos4,_mortarTGTpos5];
						// Spawn Targets
						{
							_TGT = _TGTType call BIS_fnc_selectRandom;
							_chopper1 = createVehicle [_TGT, _x, [], 0, "CAN_COLLIDE"];
							_chopper1 setDir 270;
							targetArray pushBack _chopper1;
						} foreach _TGTPos;
						_chopper2 = createVehicle ["B_Mortar_01_F", _mortarTGTpos6, [], 0, "CAN_COLLIDE"];
						aircraftArray pushBack _chopper2;
					};
					default
					{
						hint "Code Break in rav1 _side west/_paramWest 2/callsign sub switch";
					};
				};
			};
			case 3: // NATO
			{
				// detect callsign and exercise
				switch (exerciseCallsign) do
				{
					case "Raven":
					{
						switch (exerciseNumber) do
						{
							case "1":
							{
								// spawn aircraft
								_chopper1 = createVehicle ["B_Heli_Transport_01_camo_F", _parkingPos1, [], 0, "CAN_COLLIDE"];
								_chopper1 setDir 310;
								aircraftArray pushBack _chopper1;
								
								_chopper2 = createVehicle ["B_Heli_Transport_01_camo_F", _parkingPos2, [], 0, "CAN_COLLIDE"];
								_chopper2 setDir 310;
								aircraftArray pushBack _chopper2;
								
								_chopper3 = createVehicle ["B_Heli_Transport_01_camo_F", _parkingPos3, [], 0, "CAN_COLLIDE"];
								_chopper3 setDir 310;
								aircraftArray pushBack _chopper3;
								
								_chopper4 = createVehicle ["B_Heli_Transport_01_camo_F", _parkingPos4, [], 0, "CAN_COLLIDE"];
								_chopper4 setDir 310;
								aircraftArray pushBack _chopper4;
								
								_chopper5 = createVehicle ["B_Heli_Transport_01_camo_F", _parkingPos5, [], 0, "CAN_COLLIDE"];
								_chopper5 setDir 310;
								aircraftArray pushBack _chopper5;
								
								_chopper6 = createVehicle ["B_Heli_Transport_01_camo_F", _parkingPos6, [], 0, "CAN_COLLIDE"];
								_chopper6 setDir 310;
								aircraftArray pushBack _chopper6;
								
								// Replacement code from HeliPractice - leads to automated single flight
								_x = 0;
								while {(_x < 86)} do
								{
									// Generate HLS Pool
									_lz = missionNamespace getVariable ("lz" + format["%1", _x + 1]);
									lzList = lzList + [_lz];
									_x = _x + 1;
									
								};
								
								// Generate HLS for this exercise instance
								_x = 0;
								while {(_x < 6)} do
								{
									_hls = selectRandom lzList;
									lzList = lzList - [_hls];
									_LZMark = createMarker ["HLS" + format["%1",_x], getPos _hls];
									_LZMark setMarkerShape "ICON";
									_LZMark setMarkerType "mil_start";
									_LZMark setMarkerText "LZ";
									markerArray pushBack _LZMark;
									_x = _x + 1;
									
								};
							};
							case "2":
							{
								// spawn aircraft
								_chopper1 = createVehicle ["B_Heli_Transport_01_camo_F", _parkingPos1, [], 0, "CAN_COLLIDE"];
								_chopper1 setDir 310;
								aircraftArray pushBack _chopper1;
								
								_chopper2 = createVehicle ["B_Heli_Transport_01_camo_F", _parkingPos2, [], 0, "CAN_COLLIDE"];
								_chopper2 setDir 310;
								aircraftArray pushBack _chopper2;
								
								_chopper3 = createVehicle ["B_Heli_Transport_01_camo_F", _parkingPos3, [], 0, "CAN_COLLIDE"];
								_chopper3 setDir 310;
								aircraftArray pushBack _chopper3;
								
								_chopper4 = createVehicle ["B_Heli_Transport_01_camo_F", _parkingPos4, [], 0, "CAN_COLLIDE"];
								_chopper4 setDir 310;
								aircraftArray pushBack _chopper4;
								
								_chopper5 = createVehicle ["B_Heli_Transport_01_camo_F", _parkingPos5, [], 0, "CAN_COLLIDE"];
								_chopper5 setDir 310;
								aircraftArray pushBack _chopper5;
								
								_chopper6 = createVehicle ["B_Heli_Transport_01_camo_F", _parkingPos6, [], 0, "CAN_COLLIDE"];
								_chopper6 setDir 310;
								aircraftArray pushBack _chopper6;
	
								// Replacement code from HeliPractice - leads to automated single flight
								_x = 97;
								while {(_x < 105)} do
								{
									// Generate HLS Pool
									_lz = missionNamespace getVariable ("lz" + format["%1", _x + 1]);
									lzList = lzList + [_lz];
									_x = _x + 1;
									
								};
								
								// Generate HLS for this exercise instance
								_x = 0;
								while {(_x < 6)} do
								{
									_hls = selectRandom lzList;
									lzList = lzList - [_hls];
									_LZMark = createMarker ["HLS" + format["%1",_x], getPos _hls];
									_LZMark setMarkerShape "ICON";
									_LZMark setMarkerType "mil_start";
									_LZMark setMarkerText "LZ";
									markerArray pushBack _LZMark;
									_x = _x + 1;
									
								};
							};
							case "3":
							{
								// spawn aircraft
								_chopper1 = createVehicle ["B_Heli_Transport_01_camo_F", _parkingPos1, [], 0, "CAN_COLLIDE"];
								_chopper1 setDir 310;
								aircraftArray pushBack _chopper1;
								
								_chopper2 = createVehicle ["B_Heli_Transport_01_camo_F", _parkingPos2, [], 0, "CAN_COLLIDE"];
								_chopper2 setDir 310;
								aircraftArray pushBack _chopper2;
								
								_chopper3 = createVehicle ["B_Heli_Transport_01_camo_F", _parkingPos3, [], 0, "CAN_COLLIDE"];
								_chopper3 setDir 310;
								aircraftArray pushBack _chopper3;
								
								_chopper4 = createVehicle ["B_Heli_Transport_01_camo_F", _parkingPos4, [], 0, "CAN_COLLIDE"];
								_chopper4 setDir 310;
								aircraftArray pushBack _chopper4;
								
								_chopper5 = createVehicle ["B_Heli_Transport_01_camo_F", _parkingPos5, [], 0, "CAN_COLLIDE"];
								_chopper5 setDir 310;
								aircraftArray pushBack _chopper5;
								
								_chopper6 = createVehicle ["B_Heli_Transport_01_camo_F", _parkingPos6, [], 0, "CAN_COLLIDE"];
								_chopper6 setDir 310;
								aircraftArray pushBack _chopper6;
	
								// spawn cars with actions added to teleport from location to location eventually returning to start
								_car0 = createVehicle ["B_MRAP_01_F", _casevacPos0, [], 0, "CAN_COLLIDE"];
								_car0 setDir 135;
								_car0 setVehicleVarName "Car0";
								_car0 addAction ["<t color='#FFFF00'>Teleport to next CCP</t>","[player, 'casevac1'] call GOL_fnc_Teleport;"];
								[_car0,["med_box","west"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _car0;
								
								_car1 = createVehicle ["B_MRAP_01_F", _casevacPos1, [], 0, "CAN_COLLIDE"];
								_car1 setDir 290;
								_car1 setVehicleVarName "Car1";
								_car1 addAction ["<t color='#FFFF00'>Teleport to next CCP</t>","[player, 'casevac2'] call GOL_fnc_Teleport;"];
								[_car1,["med_box","west"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _car1;
								
								_car2 = createVehicle ["B_MRAP_01_F", _casevacPos2, [], 0, "CAN_COLLIDE"];
								_car2 setDir 338;
								_car2 setVehicleVarName "Car2";
								_car2 addAction ["<t color='#FFFF00'>Teleport to next CCP</t>","[player, 'casevac3'] call GOL_fnc_Teleport;"];
								[_car2,["med_box","west"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _car2;
								
								_car3 = createVehicle ["B_MRAP_01_F", _casevacPos3, [], 0, "CAN_COLLIDE"];
								_car3 setDir 0;
								_car3 setVehicleVarName "Car3";
								_car3 addAction ["<t color='#FFFF00'>Teleport to next CCP</t>","[player, 'casevac4'] call GOL_fnc_Teleport;"];
								[_car3,["med_box","west"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _car3;
								
								_car4 = createVehicle ["B_MRAP_01_F", _casevacPos4, [], 0, "CAN_COLLIDE"];
								_car4 setDir 39;
								_car4 setVehicleVarName "Car4";
								_car4 addAction ["<t color='#FFFF00'>Teleport to next CCP</t>","[player, 'casevac5'] call GOL_fnc_Teleport;"];
								[_car4,["med_box","west"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _car4;
								
								_car5 = createVehicle ["B_MRAP_01_F", _casevacPos5, [], 0, "CAN_COLLIDE"];
								_car5 setDir 178;
								_car5 setVehicleVarName "Car5";
								_car5 addAction ["<t color='#FFFF00'>Teleport to next CCP</t>","[player, 'casevac6'] call GOL_fnc_Teleport;"];
								[_car5,["med_box","west"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _car5;
								
								_car6 = createVehicle ["B_MRAP_01_F", _casevacPos6, [], 0, "CAN_COLLIDE"];
								_car6 setDir 69;
								_car6 setVehicleVarName "Car6";
								_car6 addAction ["<t color='#FFFF00'>Teleport to next CCP</t>","[player, 'casevac7'] call GOL_fnc_Teleport;"];
								[_car6,["med_box","west"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _car6;
								
								_car7 = createVehicle ["B_MRAP_01_F", _casevacPos7, [], 0, "CAN_COLLIDE"];
								_car7 setDir 78;
								_car7 setVehicleVarName "Car7";
								_car7 addAction ["<t color='#FFFF00'>Return To Start</t>","[player, 'casevac0'] call GOL_fnc_Teleport;"];
								[_car7,["med_box","west"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _car7;
								
							};
							default
							{
								hint "Code Break in rav1 _side west/_paramWest 3/callsign raven/exercise sub switch";
							};
						};
					};
					case "Giant":
					{
						switch (exerciseNumber) do
						{
							case "1":
							{
								// spawn aircraft
								_chopper1 = createVehicle ["B_Heli_Transport_03_F", _parkingPos1a, [], 0, "CAN_COLLIDE"];
								_chopper1 setDir 310;
								aircraftArray pushBack _chopper1;
								
								_chopper2 = createVehicle ["B_Heli_Transport_03_F", _parkingPos3a, [], 0, "CAN_COLLIDE"];
								_chopper2 setDir 310;
								aircraftArray pushBack _chopper2;
								
								_chopper3 = createVehicle ["B_Heli_Transport_03_F", _parkingPos2, [], 0, "CAN_COLLIDE"];
								_chopper3 setDir 310;
								aircraftArray pushBack _chopper3;
								
								_chopper4 = createVehicle ["B_Heli_Transport_03_F", _parkingPos5, [], 0, "CAN_COLLIDE"];
								_chopper4 setDir 310;
								aircraftArray pushBack _chopper4;
								
								_chopper5 = createVehicle ["B_Heli_Transport_03_F", _parkingPos4a, [], 0, "CAN_COLLIDE"];
								_chopper5 setDir 310;
								aircraftArray pushBack _chopper5;
								
								_chopper6 = createVehicle ["B_Heli_Transport_03_F", _parkingPos6a, [], 0, "CAN_COLLIDE"];
								_chopper6 setDir 310;
								aircraftArray pushBack _chopper6;
	
								// Replacement code from HeliPractice - leads to automated single flight
								_x = 86;
								while {(_x < 97)} do
								{
									// Generate HLS Pool
									_lz = missionNamespace getVariable ("lz" + format["%1", _x + 1]);
									lzList = lzList + [_lz];
									_x = _x + 1;
									
								};
								
								// Generate HLS for this exercise instance
								_x = 0;
								while {(_x < 6)} do
								{
									_hls = selectRandom lzList;
									lzList = lzList - [_hls];
									_LZMark = createMarker ["HLS" + format["%1",_x], getPos _hls];
									_LZMark setMarkerShape "ICON";
									_LZMark setMarkerType "mil_start";
									_LZMark setMarkerText "LZ";
									markerArray pushBack _LZMark;
									_x = _x + 1;
									
								};
							};
							case "2":
							{
								// spawn aircraft
								_chopper1 = createVehicle ["B_Heli_Transport_03_F", _parkingPos1a, [], 0, "CAN_COLLIDE"];
								_chopper1 setDir 310;
								aircraftArray pushBack _chopper1;
								
								_chopper2 = createVehicle ["B_Heli_Transport_03_F", _parkingPos3a, [], 0, "CAN_COLLIDE"];
								_chopper2 setDir 310;
								aircraftArray pushBack _chopper2;
								
								_chopper3 = createVehicle ["B_Heli_Transport_03_F", _parkingPos2, [], 0, "CAN_COLLIDE"];
								_chopper3 setDir 310;
								aircraftArray pushBack _chopper3;
								
								_chopper4 = createVehicle ["B_Heli_Transport_03_F", _parkingPos5, [], 0, "CAN_COLLIDE"];
								_chopper4 setDir 310;
								aircraftArray pushBack _chopper4;
								
								_chopper5 = createVehicle ["B_Heli_Transport_03_F", _parkingPos4a, [], 0, "CAN_COLLIDE"];
								_chopper5 setDir 310;
								aircraftArray pushBack _chopper5;
								
								_chopper6 = createVehicle ["B_Heli_Transport_03_F", _parkingPos6a, [], 0, "CAN_COLLIDE"];
								_chopper6 setDir 310;
								aircraftArray pushBack _chopper6;
								
								_crate1 = createVehicle ["B_CargoNet_01_ammo_F", _cratePos1, [], 0, "CAN_COLLIDE"];
								_crate1 setDir 310;
								[_crate1,["big_box","west"],[true,true]] call GOL_Fnc_GearHandler;
								supplyArray pushBack _crate1;
								
								_crate2 = createVehicle ["B_CargoNet_01_ammo_F", _cratePos2, [], 0, "CAN_COLLIDE"];
								_crate2 setDir 310;
								[_crate2,["big_box","west"],[true,true]] call GOL_Fnc_GearHandler;
								supplyArray pushBack _crate2;
								
								_crate3 = createVehicle ["B_CargoNet_01_ammo_F", _cratePos3, [], 0, "CAN_COLLIDE"];
								_crate3 setDir 310;
								[_crate3,["big_box","west"],[true,true]] call GOL_Fnc_GearHandler;
								supplyArray pushBack _crate3;
								
								_crate4 = createVehicle ["B_CargoNet_01_ammo_F", _cratePos4, [], 0, "CAN_COLLIDE"];
								_crate4 setDir 310;
								[_crate4,["big_box","west"],[true,true]] call GOL_Fnc_GearHandler;
								supplyArray pushBack _crate4;
								
								_crate5 = createVehicle ["B_CargoNet_01_ammo_F", _cratePos5, [], 0, "CAN_COLLIDE"];
								_crate5 setDir 310;
								[_crate5,["big_box","west"],[true,true]] call GOL_Fnc_GearHandler;
								supplyArray pushBack _crate5;
								
								_crate6 = createVehicle ["B_CargoNet_01_ammo_F", _cratePos6, [], 0, "CAN_COLLIDE"];
								_crate6 setDir 310;
								[_crate6,["big_box","west"],[true,true]] call GOL_Fnc_GearHandler;
								supplyArray pushBack _crate6;
								
								_crate7 = createVehicle ["B_CargoNet_01_ammo_F", _cratePos7, [], 0, "CAN_COLLIDE"];
								_crate7 setDir 310;
								[_crate7,["big_box","west"],[true,true]] call GOL_Fnc_GearHandler;
								supplyArray pushBack _crate7;
								
								{
									_LZMark = createMarker ["Crate" + format["%1",_x], getPos _x];
									_LZMark setMarkerShape "ICON";
									_LZMark setMarkerType "mil_destroy";
									_LZMark setMarkerText "Crate";
									markerArray pushBack _LZMark;
								} foreach supplyArray;
	
								// Replacement code from HeliPractice - leads to automated single flight
								_x = 97;
								while {(_x < 105)} do
								{
									// Generate HLS Pool
									_lz = missionNamespace getVariable ("lz" + format["%1", _x + 1]);
									lzList = lzList + [_lz];
									_x = _x + 1;
									
								};
								
								// Generate HLS for this exercise instance
								_x = 0;
								while {(_x < 6)} do
								{
									_hls = selectRandom lzList;
									lzList = lzList - [_hls];
									_LZMark = createMarker ["HLS" + format["%1",_x], getPos _hls];
									_LZMark setMarkerShape "ICON";
									_LZMark setMarkerType "mil_start";
									_LZMark setMarkerText "LZ";
									markerArray pushBack _LZMark;
									_x = _x + 1;
									
								};
							};
							default
							{
								hint "Code Break in rav1 _side west/_paramWest 1/callsign giant/exercise sub switch";
							};
						};
					};
					case "Condor":
					{
						switch (exerciseNumber) do
						{
							case "1":
							{
								// spawn aircraft
								_chopper1 = createVehicle ["CUP_B_C130J_USMC", _condorParking1, [], 0, "CAN_COLLIDE"];
								_chopper1 setDir 134;
								aircraftArray pushBack _chopper1;
								
								_chopper2 = createVehicle ["CUP_B_C130J_USMC", _condorParking2, [], 0, "CAN_COLLIDE"];
								_chopper2 setDir 134;
								aircraftArray pushBack _chopper2;
								
								_chopper3 = createVehicle ["CUP_B_C130J_USMC", _condorParking3, [], 0, "CAN_COLLIDE"];
								_chopper3 setDir 134;
								aircraftArray pushBack _chopper3;
								
								_dz = ["1","2","3"] call BIS_fnc_selectRandom;
								
								switch (_dz) do
								{
									case "1":
									{
										_LZMark = createMarker ["DZ", [20550.61,8248.738]];
										_LZMark setMarkerShape "RECTANGLE";
										_LZMark setMarkerSize [500,125];
										_LZMark setMarkerBrush "Solid";
										_LZMark setMarkerColor "ColorBlue";
										markerArray pushBack _LZMark;
										
										_LZMark2 = createMarker ["RedLight", [21562.7,8248.738]];
										_LZMark2 setMarkerShape "ICON";
										_LZMark2 setMarkerType "hd_dot";
										_LZMark2 setMarkerColor "ColorRed";
										_LZMark2 setMarkerText "Red Light";
										markerArray pushBack _LZMark2;
										
										_LZMark3 = createMarker ["GreenLight", [19561.7,8248.738]];
										_LZMark3 setMarkerShape "ICON";
										_LZMark3 setMarkerType "hd_dot";
										_LZMark3 setMarkerColor "ColorGreen";
										_LZMark3 setMarkerText "Green Light";
										markerArray pushBack _LZMark3;
									};
									case "2":
									{
										_LZMark = createMarker ["DZ", [26614.7,24067.2]];
										_LZMark setMarkerShape "RECTANGLE";
										_LZMark setMarkerSize [500,125];
										_LZMark setMarkerBrush "Solid";
										_LZMark setMarkerColor "ColorBlue";
										_LZMark setMarkerDir 310.475;
										markerArray pushBack _LZMark;
										
										_LZMark2 = createMarker ["RedLight", [27246.6,24833.1]];
										_LZMark2 setMarkerShape "ICON";
										_LZMark2 setMarkerType "hd_dot";
										_LZMark2 setMarkerColor "ColorRed";
										_LZMark2 setMarkerText "Red Light";
										markerArray pushBack _LZMark2;
										
										_LZMark3 = createMarker ["GreenLight", [25966.2,23320.7]];
										_LZMark3 setMarkerShape "ICON";
										_LZMark3 setMarkerType "hd_dot";
										_LZMark3 setMarkerColor "ColorGreen";
										_LZMark3 setMarkerText "Green Light";
										markerArray pushBack _LZMark3;
									};
									case "3":
									{
										_LZMark = createMarker ["DZ", [5914.52,15037.1]];
										_LZMark setMarkerShape "RECTANGLE";
										_LZMark setMarkerSize [500,125];
										_LZMark setMarkerBrush "Solid";
										_LZMark setMarkerColor "ColorBlue";
										_LZMark setMarkerDir 144.314;
										markerArray pushBack _LZMark;
										
										_LZMark2 = createMarker ["RedLight", [5117.79,14444.7]];
										_LZMark2 setMarkerShape "ICON";
										_LZMark2 setMarkerType "hd_dot";
										_LZMark2 setMarkerColor "ColorRed";
										_LZMark2 setMarkerText "Red Light";
										markerArray pushBack _LZMark2;
										
										_LZMark3 = createMarker ["GreenLight", [6722.77,15606.9]];
										_LZMark3 setMarkerShape "ICON";
										_LZMark3 setMarkerType "hd_dot";
										_LZMark3 setMarkerColor "ColorGreen";
										_LZMark3 setMarkerText "Green Light";
										markerArray pushBack _LZMark3;
									};
								};
							};
							default
							{
								hint "Code Break in rav1 _side west/_paramWest 1/callsign condor/exercise sub switch";
							};
						};
					};
					case "Dragon":
					{
						// Target Type Array
						_TGTType = ["O_Truck_02_Ammo_F","O_Truck_02_fuel_F","O_Truck_02_medical_F","O_Truck_02_box_F","O_Truck_02_transport_F","O_Truck_02_covered_F","O_MRAP_02_F","O_MRAP_02_gmg_F","O_MRAP_02_hmg_F","O_LSV_02_armed_F","O_LSV_02_unarmed_F","O_Truck_03_ammo_F","O_Truck_03_device_F","O_Truck_03_fuel_F","O_Truck_03_medical_F","O_Truck_03_repair_F","O_Truck_03_transport_F","O_Truck_03_covered_F"];
						// Target Pos Array
						_TGTPos = [_mortarTGTpos1,_mortarTGTpos2,_mortarTGTpos3,_mortarTGTpos4,_mortarTGTpos5];
						// Spawn Targets
						{
							_TGT = _TGTType call BIS_fnc_selectRandom;
							_chopper1 = createVehicle [_TGT, _x, [], 0, "CAN_COLLIDE"];
							_chopper1 setDir 270;
							targetArray pushBack _chopper1;
						} foreach _TGTPos;
						_chopper2 = createVehicle ["B_Mortar_01_F", _mortarTGTpos6, [], 0, "CAN_COLLIDE"];
						aircraftArray pushBack _chopper2;
					};
					default
					{
						hint "Code Break in rav1 _side west/_paramWest 3/callsign sub switch";
					};
				};
			};
			case 4: // BAF
			{
				// detect callsign and exercise
				switch (exerciseCallsign) do
				{
					case "Raven":
					{
						switch (exerciseNumber) do
						{
							case "1":
							{
								// spawn aircraft
								_chopper1 = createVehicle ["JAS_CUP_B_AW159_Unarmed_AAC", _parkingPos1, [], 0, "CAN_COLLIDE"];
								_chopper1 setDir 310;
								aircraftArray pushBack _chopper1;
								
								_chopper2 = createVehicle ["JAS_CUP_B_AW159_Unarmed_AAC", _parkingPos2, [], 0, "CAN_COLLIDE"];
								_chopper2 setDir 310;
								aircraftArray pushBack _chopper2;
								
								_chopper3 = createVehicle ["JAS_CUP_B_AW159_Unarmed_AAC", _parkingPos3, [], 0, "CAN_COLLIDE"];
								_chopper3 setDir 310;
								aircraftArray pushBack _chopper3;
								
								_chopper4 = createVehicle ["JAS_CUP_B_AW159_Unarmed_AAC", _parkingPos4, [], 0, "CAN_COLLIDE"];
								_chopper4 setDir 310;
								aircraftArray pushBack _chopper4;
								
								_chopper5 = createVehicle ["JAS_CUP_B_AW159_Unarmed_AAC", _parkingPos5, [], 0, "CAN_COLLIDE"];
								_chopper5 setDir 310;
								aircraftArray pushBack _chopper5;
								
								_chopper6 = createVehicle ["JAS_CUP_B_AW159_Unarmed_AAC", _parkingPos6, [], 0, "CAN_COLLIDE"];
								_chopper6 setDir 310;
								aircraftArray pushBack _chopper6;
	
								// Replacement code from HeliPractice - leads to automated single flight
								_x = 0;
								while {(_x < 86)} do
								{
									// Generate HLS Pool
									_lz = missionNamespace getVariable ("lz" + format["%1", _x + 1]);
									lzList = lzList + [_lz];
									_x = _x + 1;
									
								};
								
								// Generate HLS for this exercise instance
								_x = 0;
								while {(_x < 6)} do
								{
									_hls = selectRandom lzList;
									lzList = lzList - [_hls];
									_LZMark = createMarker ["HLS" + format["%1",_x], getPos _hls];
									_LZMark setMarkerShape "ICON";
									_LZMark setMarkerType "mil_start";
									_LZMark setMarkerText "LZ";
									markerArray pushBack _LZMark;
									_x = _x + 1;
									
								};
							};
							case "2":
							{
								// spawn aircraft
								_chopper1 = createVehicle ["JAS_CUP_B_AW159_Unarmed_AAC", _parkingPos1, [], 0, "CAN_COLLIDE"];
								_chopper1 setDir 310;
								aircraftArray pushBack _chopper1;
								
								_chopper2 = createVehicle ["JAS_CUP_B_AW159_Unarmed_AAC", _parkingPos2, [], 0, "CAN_COLLIDE"];
								_chopper2 setDir 310;
								aircraftArray pushBack _chopper2;
								
								_chopper3 = createVehicle ["JAS_CUP_B_AW159_Unarmed_AAC", _parkingPos3, [], 0, "CAN_COLLIDE"];
								_chopper3 setDir 310;
								aircraftArray pushBack _chopper3;
								
								_chopper4 = createVehicle ["JAS_CUP_B_AW159_Unarmed_AAC", _parkingPos4, [], 0, "CAN_COLLIDE"];
								_chopper4 setDir 310;
								aircraftArray pushBack _chopper4;
								
								_chopper5 = createVehicle ["JAS_CUP_B_AW159_Unarmed_AAC", _parkingPos5, [], 0, "CAN_COLLIDE"];
								_chopper5 setDir 310;
								aircraftArray pushBack _chopper5;
								
								_chopper6 = createVehicle ["JAS_CUP_B_AW159_Unarmed_AAC", _parkingPos6, [], 0, "CAN_COLLIDE"];
								_chopper6 setDir 310;
								aircraftArray pushBack _chopper6;
	
								// Replacement code from HeliPractice - leads to automated single flight
								_x = 97;
								while {(_x < 105)} do
								{
									// Generate HLS Pool
									_lz = missionNamespace getVariable ("lz" + format["%1", _x + 1]);
									lzList = lzList + [_lz];
									_x = _x + 1;
									
								};
								
								// Generate HLS for this exercise instance
								_x = 0;
								while {(_x < 6)} do
								{
									_hls = selectRandom lzList;
									lzList = lzList - [_hls];
									_LZMark = createMarker ["HLS" + format["%1",_x], getPos _hls];
									_LZMark setMarkerShape "ICON";
									_LZMark setMarkerType "mil_start";
									_LZMark setMarkerText "LZ";
									markerArray pushBack _LZMark;
									_x = _x + 1;
									
								};
							};
							case "3":
							{
								// spawn aircraft
								_chopper1 = createVehicle ["JAS_CUP_B_AW159_Unarmed_AAC", _parkingPos1, [], 0, "CAN_COLLIDE"];
								_chopper1 setDir 310;
								aircraftArray pushBack _chopper1;
								
								_chopper2 = createVehicle ["JAS_CUP_B_AW159_Unarmed_AAC", _parkingPos2, [], 0, "CAN_COLLIDE"];
								_chopper2 setDir 310;
								aircraftArray pushBack _chopper2;
								
								_chopper3 = createVehicle ["JAS_CUP_B_AW159_Unarmed_AAC", _parkingPos3, [], 0, "CAN_COLLIDE"];
								_chopper3 setDir 310;
								aircraftArray pushBack _chopper3;
								
								_chopper4 = createVehicle ["JAS_CUP_B_AW159_Unarmed_AAC", _parkingPos4, [], 0, "CAN_COLLIDE"];
								_chopper4 setDir 310;
								aircraftArray pushBack _chopper4;
								
								_chopper5 = createVehicle ["JAS_CUP_B_AW159_Unarmed_AAC", _parkingPos5, [], 0, "CAN_COLLIDE"];
								_chopper5 setDir 310;
								aircraftArray pushBack _chopper5;
								
								_chopper6 = createVehicle ["JAS_CUP_B_AW159_Unarmed_AAC", _parkingPos6, [], 0, "CAN_COLLIDE"];
								_chopper6 setDir 310;
								aircraftArray pushBack _chopper6;
	
								// spawn cars with actions added to teleport from location to location eventually returning to start
								_car0 = createVehicle ["CUP_B_LR_Ambulance_GB_W", _casevacPos0, [], 0, "CAN_COLLIDE"];
								_car0 setDir 135;
								_car0 setVehicleVarName "Car0";
								_car0 addAction ["<t color='#FFFF00'>Teleport to next CCP</t>","[player, 'casevac1'] call GOL_fnc_Teleport;"];
								[_car0,["med_box","west"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _car0;
								
								_car1 = createVehicle ["CUP_B_LR_Ambulance_GB_W", _casevacPos1, [], 0, "CAN_COLLIDE"];
								_car1 setDir 290;
								_car1 setVehicleVarName "Car1";
								_car1 addAction ["<t color='#FFFF00'>Teleport to next CCP</t>","[player, 'casevac2'] call GOL_fnc_Teleport;"];
								[_car1,["med_box","west"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _car1;
								
								_car2 = createVehicle ["CUP_B_LR_Ambulance_GB_W", _casevacPos2, [], 0, "CAN_COLLIDE"];
								_car2 setDir 338;
								_car2 setVehicleVarName "Car2";
								_car2 addAction ["<t color='#FFFF00'>Teleport to next CCP</t>","[player, 'casevac3'] call GOL_fnc_Teleport;"];
								[_car2,["med_box","west"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _car2;
								
								_car3 = createVehicle ["CUP_B_LR_Ambulance_GB_W", _casevacPos3, [], 0, "CAN_COLLIDE"];
								_car3 setDir 0;
								_car3 setVehicleVarName "Car3";
								_car3 addAction ["<t color='#FFFF00'>Teleport to next CCP</t>","[player, 'casevac4'] call GOL_fnc_Teleport;"];
								[_car3,["med_box","west"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _car3;
								
								_car4 = createVehicle ["CUP_B_LR_Ambulance_GB_W", _casevacPos4, [], 0, "CAN_COLLIDE"];
								_car4 setDir 39;
								_car4 setVehicleVarName "Car4";
								_car4 addAction ["<t color='#FFFF00'>Teleport to next CCP</t>","[player, 'casevac5'] call GOL_fnc_Teleport;"];
								[_car4,["med_box","west"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _car4;
								
								_car5 = createVehicle ["CUP_B_LR_Ambulance_GB_W", _casevacPos5, [], 0, "CAN_COLLIDE"];
								_car5 setDir 178;
								_car5 setVehicleVarName "Car5";
								_car5 addAction ["<t color='#FFFF00'>Teleport to next CCP</t>","[player, 'casevac6'] call GOL_fnc_Teleport;"];
								[_car5,["med_box","west"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _car5;
								
								_car6 = createVehicle ["CUP_B_LR_Ambulance_GB_W", _casevacPos6, [], 0, "CAN_COLLIDE"];
								_car6 setDir 69;
								_car6 setVehicleVarName "Car6";
								_car6 addAction ["<t color='#FFFF00'>Teleport to next CCP</t>","[player, 'casevac7'] call GOL_fnc_Teleport;"];
								[_car6,["med_box","west"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _car6;
								
								_car7 = createVehicle ["CUP_B_LR_Ambulance_GB_W", _casevacPos7, [], 0, "CAN_COLLIDE"];
								_car7 setDir 78;
								_car7 setVehicleVarName "Car7";
								_car7 addAction ["<t color='#FFFF00'>Return To Start</t>","[player, 'casevac0'] call GOL_fnc_Teleport;"];
								[_car7,["med_box","west"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _car7;
								
							};
							default
							{
								hint "Code Break in rav1 _side west/_paramWest 4/callsign raven/exercise sub switch";
							};
						};
					};
					case "Giant":
					{
						switch (exerciseNumber) do
						{
							case "1":
							{
								// spawn aircraft
								_chopper1 = createVehicle ["JAS_CUP_B_Merlin_HC3_GB_Armed", _parkingPos1a, [], 0, "CAN_COLLIDE"];
								_chopper1 setDir 310;
								aircraftArray pushBack _chopper1;
								
								_chopper2 = createVehicle ["JAS_CUP_B_Merlin_HC3_GB_Armed", _parkingPos3a, [], 0, "CAN_COLLIDE"];
								_chopper2 setDir 310;
								aircraftArray pushBack _chopper2;
								
								_chopper3 = createVehicle ["JAS_CUP_B_Merlin_HC3_GB_Armed", _parkingPos2, [], 0, "CAN_COLLIDE"];
								_chopper3 setDir 310;
								aircraftArray pushBack _chopper3;
								
								_chopper4 = createVehicle ["JAS_CUP_B_Merlin_HC3_GB_Armed", _parkingPos5, [], 0, "CAN_COLLIDE"];
								_chopper4 setDir 310;
								aircraftArray pushBack _chopper4;
								
								_chopper5 = createVehicle ["JAS_CUP_B_Merlin_HC3_GB_Armed", _parkingPos4a, [], 0, "CAN_COLLIDE"];
								_chopper5 setDir 310;
								aircraftArray pushBack _chopper5;
								
								_chopper6 = createVehicle ["JAS_CUP_B_Merlin_HC3_GB_Armed", _parkingPos6a, [], 0, "CAN_COLLIDE"];
								_chopper6 setDir 310;
								aircraftArray pushBack _chopper6;
	
								// Replacement code from HeliPractice - leads to automated single flight
								_x = 86;
								while {(_x < 97)} do
								{
									// Generate HLS Pool
									_lz = missionNamespace getVariable ("lz" + format["%1", _x + 1]);
									lzList = lzList + [_lz];
									_x = _x + 1;
									
								};
								
								// Generate HLS for this exercise instance
								_x = 0;
								while {(_x < 6)} do
								{
									_hls = selectRandom lzList;
									lzList = lzList - [_hls];
									_LZMark = createMarker ["HLS" + format["%1",_x], getPos _hls];
									_LZMark setMarkerShape "ICON";
									_LZMark setMarkerType "mil_start";
									_LZMark setMarkerText "LZ";
									markerArray pushBack _LZMark;
									_x = _x + 1;
									
								};
							};
							case "2":
							{
								// spawn aircraft
								_chopper1 = createVehicle ["JAS_CUP_B_Merlin_HC3_GB_Armed", _parkingPos1a, [], 0, "CAN_COLLIDE"];
								_chopper1 setDir 310;
								aircraftArray pushBack _chopper1;
								
								_chopper2 = createVehicle ["JAS_CUP_B_Merlin_HC3_GB_Armed", _parkingPos3a, [], 0, "CAN_COLLIDE"];
								_chopper2 setDir 310;
								aircraftArray pushBack _chopper2;
								
								_chopper3 = createVehicle ["JAS_CUP_B_Merlin_HC3_GB_Armed", _parkingPos2, [], 0, "CAN_COLLIDE"];
								_chopper3 setDir 310;
								aircraftArray pushBack _chopper3;
								
								_chopper4 = createVehicle ["JAS_CUP_B_Merlin_HC3_GB_Armed", _parkingPos5, [], 0, "CAN_COLLIDE"];
								_chopper4 setDir 310;
								aircraftArray pushBack _chopper4;
								
								_chopper5 = createVehicle ["JAS_CUP_B_Merlin_HC3_GB_Armed", _parkingPos4a, [], 0, "CAN_COLLIDE"];
								_chopper5 setDir 310;
								aircraftArray pushBack _chopper5;
								
								_chopper6 = createVehicle ["JAS_CUP_B_Merlin_HC3_GB_Armed", _parkingPos6a, [], 0, "CAN_COLLIDE"];
								_chopper6 setDir 310;
								aircraftArray pushBack _chopper6;
								
								_crate1 = createVehicle ["B_CargoNet_01_ammo_F", _cratePos1, [], 0, "CAN_COLLIDE"];
								_crate1 setDir 310;
								[_crate1,["big_box","west"],[true,true]] call GOL_Fnc_GearHandler;
								supplyArray pushBack _crate1;
								
								_crate2 = createVehicle ["B_CargoNet_01_ammo_F", _cratePos2, [], 0, "CAN_COLLIDE"];
								_crate2 setDir 310;
								[_crate2,["big_box","west"],[true,true]] call GOL_Fnc_GearHandler;
								supplyArray pushBack _crate2;
								
								_crate3 = createVehicle ["B_CargoNet_01_ammo_F", _cratePos3, [], 0, "CAN_COLLIDE"];
								_crate3 setDir 310;
								[_crate3,["big_box","west"],[true,true]] call GOL_Fnc_GearHandler;
								supplyArray pushBack _crate3;
								
								_crate4 = createVehicle ["B_CargoNet_01_ammo_F", _cratePos4, [], 0, "CAN_COLLIDE"];
								_crate4 setDir 310;
								[_crate4,["big_box","west"],[true,true]] call GOL_Fnc_GearHandler;
								supplyArray pushBack _crate4;
								
								_crate5 = createVehicle ["B_CargoNet_01_ammo_F", _cratePos5, [], 0, "CAN_COLLIDE"];
								_crate5 setDir 310;
								[_crate5,["big_box","west"],[true,true]] call GOL_Fnc_GearHandler;
								supplyArray pushBack _crate5;
								
								_crate6 = createVehicle ["B_CargoNet_01_ammo_F", _cratePos6, [], 0, "CAN_COLLIDE"];
								_crate6 setDir 310;
								[_crate6,["big_box","west"],[true,true]] call GOL_Fnc_GearHandler;
								supplyArray pushBack _crate6;
								
								_crate7 = createVehicle ["B_CargoNet_01_ammo_F", _cratePos7, [], 0, "CAN_COLLIDE"];
								_crate7 setDir 310;
								[_crate7,["big_box","west"],[true,true]] call GOL_Fnc_GearHandler;
								supplyArray pushBack _crate7;
								
								{
									_LZMark = createMarker ["Crate" + format["%1",_x], getPos _x];
									_LZMark setMarkerShape "ICON";
									_LZMark setMarkerType "mil_destroy";
									_LZMark setMarkerText "Crate";
									markerArray pushBack _LZMark;
								} foreach supplyArray;
	
								// Replacement code from HeliPractice - leads to automated single flight
								_x = 97;
								while {(_x < 105)} do
								{
									// Generate HLS Pool
									_lz = missionNamespace getVariable ("lz" + format["%1", _x + 1]);
									lzList = lzList + [_lz];
									_x = _x + 1;
									
								};
								
								// Generate HLS for this exercise instance
								_x = 0;
								while {(_x < 6)} do
								{
									_hls = selectRandom lzList;
									lzList = lzList - [_hls];
									_LZMark = createMarker ["HLS" + format["%1",_x], getPos _hls];
									_LZMark setMarkerShape "ICON";
									_LZMark setMarkerType "mil_start";
									_LZMark setMarkerText "LZ";
									markerArray pushBack _LZMark;
									_x = _x + 1;
									
								};
							};
							default
							{
								hint "Code Break in rav1 _side west/_paramWest 1/callsign giant/exercise sub switch";
							};
						};
					};
					case "Condor":
					{
						switch (exerciseNumber) do
						{
							case "1":
							{
								// spawn aircraft
								_chopper1 = createVehicle ["CUP_B_C130J_USMC", _condorParking1, [], 0, "CAN_COLLIDE"];
								_chopper1 setDir 134;
								aircraftArray pushBack _chopper1;
								
								_chopper2 = createVehicle ["CUP_B_C130J_USMC", _condorParking2, [], 0, "CAN_COLLIDE"];
								_chopper2 setDir 134;
								aircraftArray pushBack _chopper2;
								
								_chopper3 = createVehicle ["CUP_B_C130J_USMC", _condorParking3, [], 0, "CAN_COLLIDE"];
								_chopper3 setDir 134;
								aircraftArray pushBack _chopper3;
								
								_dz = ["1","2","3"] call BIS_fnc_selectRandom;
								
								switch (_dz) do
								{
									case "1":
									{
										_LZMark = createMarker ["DZ", [20550.61,8248.738]];
										_LZMark setMarkerShape "RECTANGLE";
										_LZMark setMarkerSize [500,125];
										_LZMark setMarkerBrush "Solid";
										_LZMark setMarkerColor "ColorBlue";
										markerArray pushBack _LZMark;
										
										_LZMark2 = createMarker ["RedLight", [21562.7,8248.738]];
										_LZMark2 setMarkerShape "ICON";
										_LZMark2 setMarkerType "hd_dot";
										_LZMark2 setMarkerColor "ColorRed";
										_LZMark2 setMarkerText "Red Light";
										markerArray pushBack _LZMark2;
										
										_LZMark3 = createMarker ["GreenLight", [19561.7,8248.738]];
										_LZMark3 setMarkerShape "ICON";
										_LZMark3 setMarkerType "hd_dot";
										_LZMark3 setMarkerColor "ColorGreen";
										_LZMark3 setMarkerText "Green Light";
										markerArray pushBack _LZMark3;
									};
									case "2":
									{
										_LZMark = createMarker ["DZ", [26614.7,24067.2]];
										_LZMark setMarkerShape "RECTANGLE";
										_LZMark setMarkerSize [500,125];
										_LZMark setMarkerBrush "Solid";
										_LZMark setMarkerColor "ColorBlue";
										_LZMark setMarkerDir 310.475;
										markerArray pushBack _LZMark;
										
										_LZMark2 = createMarker ["RedLight", [27246.6,24833.1]];
										_LZMark2 setMarkerShape "ICON";
										_LZMark2 setMarkerType "hd_dot";
										_LZMark2 setMarkerColor "ColorRed";
										_LZMark2 setMarkerText "Red Light";
										markerArray pushBack _LZMark2;
										
										_LZMark3 = createMarker ["GreenLight", [25966.2,23320.7]];
										_LZMark3 setMarkerShape "ICON";
										_LZMark3 setMarkerType "hd_dot";
										_LZMark3 setMarkerColor "ColorGreen";
										_LZMark3 setMarkerText "Green Light";
										markerArray pushBack _LZMark3;
									};
									case "3":
									{
										_LZMark = createMarker ["DZ", [5914.52,15037.1]];
										_LZMark setMarkerShape "RECTANGLE";
										_LZMark setMarkerSize [500,125];
										_LZMark setMarkerBrush "Solid";
										_LZMark setMarkerColor "ColorBlue";
										_LZMark setMarkerDir 144.314;
										markerArray pushBack _LZMark;
										
										_LZMark2 = createMarker ["RedLight", [5117.79,14444.7]];
										_LZMark2 setMarkerShape "ICON";
										_LZMark2 setMarkerType "hd_dot";
										_LZMark2 setMarkerColor "ColorRed";
										_LZMark2 setMarkerText "Red Light";
										markerArray pushBack _LZMark2;
										
										_LZMark3 = createMarker ["GreenLight", [6722.77,15606.9]];
										_LZMark3 setMarkerShape "ICON";
										_LZMark3 setMarkerType "hd_dot";
										_LZMark3 setMarkerColor "ColorGreen";
										_LZMark3 setMarkerText "Green Light";
										markerArray pushBack _LZMark3;
									};
								};
							};
							default
							{
								hint "Code Break in rav1 _side west/_paramWest 1/callsign condor/exercise sub switch";
							};
						};
					};
					case "Dragon":
					{
						// Target Type Array
						_TGTType = ["O_Truck_02_Ammo_F","O_Truck_02_fuel_F","O_Truck_02_medical_F","O_Truck_02_box_F","O_Truck_02_transport_F","O_Truck_02_covered_F","O_MRAP_02_F","O_MRAP_02_gmg_F","O_MRAP_02_hmg_F","O_LSV_02_armed_F","O_LSV_02_unarmed_F","O_Truck_03_ammo_F","O_Truck_03_device_F","O_Truck_03_fuel_F","O_Truck_03_medical_F","O_Truck_03_repair_F","O_Truck_03_transport_F","O_Truck_03_covered_F"];
						// Target Pos Array
						_TGTPos = [_mortarTGTpos1,_mortarTGTpos2,_mortarTGTpos3,_mortarTGTpos4,_mortarTGTpos5];
						// Spawn Targets
						{
							_TGT = _TGTType call BIS_fnc_selectRandom;
							_chopper1 = createVehicle [_TGT, _x, [], 0, "CAN_COLLIDE"];
							_chopper1 setDir 270;
							targetArray pushBack _chopper1;
						} foreach _TGTPos;
						_chopper2 = createVehicle ["B_Mortar_01_F", _mortarTGTpos6, [], 0, "CAN_COLLIDE"];
						aircraftArray pushBack _chopper2;
					};
					default
					{
						hint "Code Break in rav1 _side west/_paramWest 4/callsign sub switch";
					};
				};
			};
			case 5: // US Army
			{
				// detect callsign and exercise
				switch (exerciseCallsign) do
				{
					case "Raven":
					{
						switch (exerciseNumber) do
						{
							case "1":
							{
								// spawn aircraft
								_chopper1 = createVehicle ["CUP_B_UH60M_FFV_US", _parkingPos1, [], 0, "CAN_COLLIDE"];
								_chopper1 setDir 310;
								aircraftArray pushBack _chopper1;
								
								_chopper2 = createVehicle ["CUP_B_UH60M_FFV_US", _parkingPos2, [], 0, "CAN_COLLIDE"];
								_chopper2 setDir 310;
								aircraftArray pushBack _chopper2;
								
								_chopper3 = createVehicle ["CUP_B_UH60M_FFV_US", _parkingPos3, [], 0, "CAN_COLLIDE"];
								_chopper3 setDir 310;
								aircraftArray pushBack _chopper3;
								
								_chopper4 = createVehicle ["CUP_B_UH60M_FFV_US", _parkingPos4, [], 0, "CAN_COLLIDE"];
								_chopper4 setDir 310;
								aircraftArray pushBack _chopper4;
								
								_chopper5 = createVehicle ["CUP_B_UH60M_FFV_US", _parkingPos5, [], 0, "CAN_COLLIDE"];
								_chopper5 setDir 310;
								aircraftArray pushBack _chopper5;
								
								_chopper6 = createVehicle ["CUP_B_UH60M_FFV_US", _parkingPos6, [], 0, "CAN_COLLIDE"];
								_chopper6 setDir 310;
								aircraftArray pushBack _chopper6;
	
								// Replacement code from HeliPractice - leads to automated single flight
								_x = 0;
								while {(_x < 86)} do
								{
									// Generate HLS Pool
									_lz = missionNamespace getVariable ("lz" + format["%1", _x + 1]);
									lzList = lzList + [_lz];
									_x = _x + 1;
									
								};
								
								// Generate HLS for this exercise instance
								_x = 0;
								while {(_x < 6)} do
								{
									_hls = selectRandom lzList;
									lzList = lzList - [_hls];
									_LZMark = createMarker ["HLS" + format["%1",_x], getPos _hls];
									_LZMark setMarkerShape "ICON";
									_LZMark setMarkerType "mil_start";
									_LZMark setMarkerText "LZ";
									markerArray pushBack _LZMark;
									_x = _x + 1;
									
								};
							};
							case "2":
							{
								// spawn aircraft
								_chopper1 = createVehicle ["CUP_B_UH60M_FFV_US", _parkingPos1, [], 0, "CAN_COLLIDE"];
								_chopper1 setDir 310;
								aircraftArray pushBack _chopper1;
								
								_chopper2 = createVehicle ["CUP_B_UH60M_FFV_US", _parkingPos2, [], 0, "CAN_COLLIDE"];
								_chopper2 setDir 310;
								aircraftArray pushBack _chopper2;
								
								_chopper3 = createVehicle ["CUP_B_UH60M_FFV_US", _parkingPos3, [], 0, "CAN_COLLIDE"];
								_chopper3 setDir 310;
								aircraftArray pushBack _chopper3;
								
								_chopper4 = createVehicle ["CUP_B_UH60M_FFV_US", _parkingPos4, [], 0, "CAN_COLLIDE"];
								_chopper4 setDir 310;
								aircraftArray pushBack _chopper4;
								
								_chopper5 = createVehicle ["CUP_B_UH60M_FFV_US", _parkingPos5, [], 0, "CAN_COLLIDE"];
								_chopper5 setDir 310;
								aircraftArray pushBack _chopper5;
								
								_chopper6 = createVehicle ["CUP_B_UH60M_FFV_US", _parkingPos6, [], 0, "CAN_COLLIDE"];
								_chopper6 setDir 310;
								aircraftArray pushBack _chopper6;
	
								// Replacement code from HeliPractice - leads to automated single flight
								_x = 97;
								while {(_x < 105)} do
								{
									// Generate HLS Pool
									_lz = missionNamespace getVariable ("lz" + format["%1", _x + 1]);
									lzList = lzList + [_lz];
									_x = _x + 1;
									
								};
								
								// Generate HLS for this exercise instance
								_x = 0;
								while {(_x < 6)} do
								{
									_hls = selectRandom lzList;
									lzList = lzList - [_hls];
									_LZMark = createMarker ["HLS" + format["%1",_x], getPos _hls];
									_LZMark setMarkerShape "ICON";
									_LZMark setMarkerType "mil_start";
									_LZMark setMarkerText "LZ";
									markerArray pushBack _LZMark;
									_x = _x + 1;
									
								};
							};
							case "3":
							{
								// spawn aircraft
								_chopper1 = createVehicle ["CUP_B_UH60M_FFV_US", _parkingPos1, [], 0, "CAN_COLLIDE"];
								_chopper1 setDir 310;
								aircraftArray pushBack _chopper1;
								
								_chopper2 = createVehicle ["CUP_B_UH60M_FFV_US", _parkingPos2, [], 0, "CAN_COLLIDE"];
								_chopper2 setDir 310;
								aircraftArray pushBack _chopper2;
								
								_chopper3 = createVehicle ["CUP_B_UH60M_FFV_US", _parkingPos3, [], 0, "CAN_COLLIDE"];
								_chopper3 setDir 310;
								aircraftArray pushBack _chopper3;
								
								_chopper4 = createVehicle ["CUP_B_UH60M_FFV_US", _parkingPos4, [], 0, "CAN_COLLIDE"];
								_chopper4 setDir 310;
								aircraftArray pushBack _chopper4;
								
								_chopper5 = createVehicle ["CUP_B_UH60M_FFV_US", _parkingPos5, [], 0, "CAN_COLLIDE"];
								_chopper5 setDir 310;
								aircraftArray pushBack _chopper5;
								
								_chopper6 = createVehicle ["CUP_B_UH60M_FFV_US", _parkingPos6, [], 0, "CAN_COLLIDE"];
								_chopper6 setDir 310;
								aircraftArray pushBack _chopper6;
	
								// spawn cars with actions added to teleport from location to location eventually returning to start
								_car0 = createVehicle ["CUP_B_HMMWV_Ambulance_USA", _casevacPos0, [], 0, "CAN_COLLIDE"];
								_car0 setDir 135;
								_car0 setVehicleVarName "Car0";
								_car0 addAction ["<t color='#FFFF00'>Teleport to next CCP</t>","[player, 'casevac1'] call GOL_fnc_Teleport;"];
								[_car0,["med_box","west"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _car0;
								
								_car1 = createVehicle ["CUP_B_HMMWV_Ambulance_USA", _casevacPos1, [], 0, "CAN_COLLIDE"];
								_car1 setDir 290;
								_car1 setVehicleVarName "Car1";
								_car1 addAction ["<t color='#FFFF00'>Teleport to next CCP</t>","[player, 'casevac2'] call GOL_fnc_Teleport;"];
								[_car1,["med_box","west"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _car1;
								
								_car2 = createVehicle ["CUP_B_HMMWV_Ambulance_USA", _casevacPos2, [], 0, "CAN_COLLIDE"];
								_car2 setDir 338;
								_car2 setVehicleVarName "Car2";
								_car2 addAction ["<t color='#FFFF00'>Teleport to next CCP</t>","[player, 'casevac3'] call GOL_fnc_Teleport;"];
								[_car2,["med_box","west"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _car2;
								
								_car3 = createVehicle ["CUP_B_HMMWV_Ambulance_USA", _casevacPos3, [], 0, "CAN_COLLIDE"];
								_car3 setDir 0;
								_car3 setVehicleVarName "Car3";
								_car3 addAction ["<t color='#FFFF00'>Teleport to next CCP</t>","[player, 'casevac4'] call GOL_fnc_Teleport;"];
								[_car3,["med_box","west"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _car3;
								
								_car4 = createVehicle ["CUP_B_HMMWV_Ambulance_USA", _casevacPos4, [], 0, "CAN_COLLIDE"];
								_car4 setDir 39;
								_car4 setVehicleVarName "Car4";
								_car4 addAction ["<t color='#FFFF00'>Teleport to next CCP</t>","[player, 'casevac5'] call GOL_fnc_Teleport;"];
								[_car4,["med_box","west"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _car4;
								
								_car5 = createVehicle ["CUP_B_HMMWV_Ambulance_USA", _casevacPos5, [], 0, "CAN_COLLIDE"];
								_car5 setDir 178;
								_car5 setVehicleVarName "Car5";
								_car5 addAction ["<t color='#FFFF00'>Teleport to next CCP</t>","[player, 'casevac6'] call GOL_fnc_Teleport;"];
								[_car5,["med_box","west"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _car5;
								
								_car6 = createVehicle ["CUP_B_HMMWV_Ambulance_USA", _casevacPos6, [], 0, "CAN_COLLIDE"];
								_car6 setDir 69;
								_car6 setVehicleVarName "Car6";
								_car6 addAction ["<t color='#FFFF00'>Teleport to next CCP</t>","[player, 'casevac7'] call GOL_fnc_Teleport;"];
								[_car6,["med_box","west"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _car6;
								
								_car7 = createVehicle ["CUP_B_HMMWV_Ambulance_USA", _casevacPos7, [], 0, "CAN_COLLIDE"];
								_car7 setDir 78;
								_car7 setVehicleVarName "Car7";
								_car7 addAction ["<t color='#FFFF00'>Return To Start</t>","[player, 'casevac0'] call GOL_fnc_Teleport;"];
								[_car7,["med_box","west"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _car7;
								
							};
							default
							{
								hint "Code Break in rav1 _side west/_paramWest 5/callsign raven/exercise sub switch";
							};
						};
					};
					case "Giant":
					{
						switch (exerciseNumber) do
						{
							case "1":
							{
								// spawn aircraft
								_chopper1 = createVehicle ["JAS_CUP_B_CH47F_USA", _parkingPos1a, [], 0, "CAN_COLLIDE"];
								_chopper1 setDir 310;
								aircraftArray pushBack _chopper1;
								
								_chopper2 = createVehicle ["JAS_CUP_B_CH47F_USA", _parkingPos3a, [], 0, "CAN_COLLIDE"];
								_chopper2 setDir 310;
								aircraftArray pushBack _chopper2;
								
								_chopper3 = createVehicle ["JAS_CUP_B_CH47F_USA", _parkingPos2, [], 0, "CAN_COLLIDE"];
								_chopper3 setDir 310;
								aircraftArray pushBack _chopper3;
								
								_chopper4 = createVehicle ["JAS_CUP_B_CH47F_USA", _parkingPos5, [], 0, "CAN_COLLIDE"];
								_chopper4 setDir 310;
								aircraftArray pushBack _chopper4;
								
								_chopper5 = createVehicle ["JAS_CUP_B_CH47F_USA", _parkingPos4a, [], 0, "CAN_COLLIDE"];
								_chopper5 setDir 310;
								aircraftArray pushBack _chopper5;
								
								_chopper6 = createVehicle ["JAS_CUP_B_CH47F_USA", _parkingPos6a, [], 0, "CAN_COLLIDE"];
								_chopper6 setDir 310;
								aircraftArray pushBack _chopper6;
	
								// Replacement code from HeliPractice - leads to automated single flight
								_x = 86;
								while {(_x < 97)} do
								{
									// Generate HLS Pool
									_lz = missionNamespace getVariable ("lz" + format["%1", _x + 1]);
									lzList = lzList + [_lz];
									_x = _x + 1;
									
								};
								
								// Generate HLS for this exercise instance
								_x = 0;
								while {(_x < 6)} do
								{
									_hls = selectRandom lzList;
									lzList = lzList - [_hls];
									_LZMark = createMarker ["HLS" + format["%1",_x], getPos _hls];
									_LZMark setMarkerShape "ICON";
									_LZMark setMarkerType "mil_start";
									_LZMark setMarkerText "LZ";
									markerArray pushBack _LZMark;
									_x = _x + 1;
									
								};
							};
							case "2":
							{
								// spawn aircraft
								_chopper1 = createVehicle ["JAS_CUP_B_CH47F_USA", _parkingPos1a, [], 0, "CAN_COLLIDE"];
								_chopper1 setDir 310;
								aircraftArray pushBack _chopper1;
								
								_chopper2 = createVehicle ["JAS_CUP_B_CH47F_USA", _parkingPos3a, [], 0, "CAN_COLLIDE"];
								_chopper2 setDir 310;
								aircraftArray pushBack _chopper2;
								
								_chopper3 = createVehicle ["JAS_CUP_B_CH47F_USA", _parkingPos2, [], 0, "CAN_COLLIDE"];
								_chopper3 setDir 310;
								aircraftArray pushBack _chopper3;
								
								_chopper4 = createVehicle ["JAS_CUP_B_CH47F_USA", _parkingPos5, [], 0, "CAN_COLLIDE"];
								_chopper4 setDir 310;
								aircraftArray pushBack _chopper4;
								
								_chopper5 = createVehicle ["JAS_CUP_B_CH47F_USA", _parkingPos4a, [], 0, "CAN_COLLIDE"];
								_chopper5 setDir 310;
								aircraftArray pushBack _chopper5;
								
								_chopper6 = createVehicle ["JAS_CUP_B_CH47F_USA", _parkingPos6a, [], 0, "CAN_COLLIDE"];
								_chopper6 setDir 310;
								aircraftArray pushBack _chopper6;
								
								_crate1 = createVehicle ["B_CargoNet_01_ammo_F", _cratePos1, [], 0, "CAN_COLLIDE"];
								_crate1 setDir 310;
								[_crate1,["big_box","west"],[true,true]] call GOL_Fnc_GearHandler;
								supplyArray pushBack _crate1;
								
								_crate2 = createVehicle ["B_CargoNet_01_ammo_F", _cratePos2, [], 0, "CAN_COLLIDE"];
								_crate2 setDir 310;
								[_crate2,["big_box","west"],[true,true]] call GOL_Fnc_GearHandler;
								supplyArray pushBack _crate2;
								
								_crate3 = createVehicle ["B_CargoNet_01_ammo_F", _cratePos3, [], 0, "CAN_COLLIDE"];
								_crate3 setDir 310;
								[_crate3,["big_box","west"],[true,true]] call GOL_Fnc_GearHandler;
								supplyArray pushBack _crate3;
								
								_crate4 = createVehicle ["B_CargoNet_01_ammo_F", _cratePos4, [], 0, "CAN_COLLIDE"];
								_crate4 setDir 310;
								[_crate4,["big_box","west"],[true,true]] call GOL_Fnc_GearHandler;
								supplyArray pushBack _crate4;
								
								_crate5 = createVehicle ["B_CargoNet_01_ammo_F", _cratePos5, [], 0, "CAN_COLLIDE"];
								_crate5 setDir 310;
								[_crate5,["big_box","west"],[true,true]] call GOL_Fnc_GearHandler;
								supplyArray pushBack _crate5;
								
								_crate6 = createVehicle ["B_CargoNet_01_ammo_F", _cratePos6, [], 0, "CAN_COLLIDE"];
								_crate6 setDir 310;
								[_crate6,["big_box","west"],[true,true]] call GOL_Fnc_GearHandler;
								supplyArray pushBack _crate6;
								
								_crate7 = createVehicle ["B_CargoNet_01_ammo_F", _cratePos7, [], 0, "CAN_COLLIDE"];
								_crate7 setDir 310;
								[_crate7,["big_box","west"],[true,true]] call GOL_Fnc_GearHandler;
								supplyArray pushBack _crate7;
								
								{
									_LZMark = createMarker ["Crate" + format["%1",_x], getPos _x];
									_LZMark setMarkerShape "ICON";
									_LZMark setMarkerType "mil_destroy";
									_LZMark setMarkerText "Crate";
									markerArray pushBack _LZMark;
								} foreach supplyArray;
	
								// Replacement code from HeliPractice - leads to automated single flight
								_x = 97;
								while {(_x < 105)} do
								{
									// Generate HLS Pool
									_lz = missionNamespace getVariable ("lz" + format["%1", _x + 1]);
									lzList = lzList + [_lz];
									_x = _x + 1;
									
								};
								
								// Generate HLS for this exercise instance
								_x = 0;
								while {(_x < 6)} do
								{
									_hls = selectRandom lzList;
									lzList = lzList - [_hls];
									_LZMark = createMarker ["HLS" + format["%1",_x], getPos _hls];
									_LZMark setMarkerShape "ICON";
									_LZMark setMarkerType "mil_start";
									_LZMark setMarkerText "LZ";
									markerArray pushBack _LZMark;
									_x = _x + 1;
									
								};
							};
							default
							{
								hint "Code Break in rav1 _side west/_paramWest 1/callsign giant/exercise sub switch";
							};
						};
					};
					case "Condor":
					{
						switch (exerciseNumber) do
						{
							case "1":
							{
								// spawn aircraft
								_chopper1 = createVehicle ["CUP_B_C130J_USMC", _condorParking1, [], 0, "CAN_COLLIDE"];
								_chopper1 setDir 134;
								aircraftArray pushBack _chopper1;
								
								_chopper2 = createVehicle ["CUP_B_C130J_USMC", _condorParking2, [], 0, "CAN_COLLIDE"];
								_chopper2 setDir 134;
								aircraftArray pushBack _chopper2;
								
								_chopper3 = createVehicle ["CUP_B_C130J_USMC", _condorParking3, [], 0, "CAN_COLLIDE"];
								_chopper3 setDir 134;
								aircraftArray pushBack _chopper3;
								
								_dz = ["1","2","3"] call BIS_fnc_selectRandom;
								
								switch (_dz) do
								{
									case "1":
									{
										_LZMark = createMarker ["DZ", [20550.61,8248.738]];
										_LZMark setMarkerShape "RECTANGLE";
										_LZMark setMarkerSize [500,125];
										_LZMark setMarkerBrush "Solid";
										_LZMark setMarkerColor "ColorBlue";
										markerArray pushBack _LZMark;
										
										_LZMark2 = createMarker ["RedLight", [21562.7,8248.738]];
										_LZMark2 setMarkerShape "ICON";
										_LZMark2 setMarkerType "hd_dot";
										_LZMark2 setMarkerColor "ColorRed";
										_LZMark2 setMarkerText "Red Light";
										markerArray pushBack _LZMark2;
										
										_LZMark3 = createMarker ["GreenLight", [19561.7,8248.738]];
										_LZMark3 setMarkerShape "ICON";
										_LZMark3 setMarkerType "hd_dot";
										_LZMark3 setMarkerColor "ColorGreen";
										_LZMark3 setMarkerText "Green Light";
										markerArray pushBack _LZMark3;
									};
									case "2":
									{
										_LZMark = createMarker ["DZ", [26614.7,24067.2]];
										_LZMark setMarkerShape "RECTANGLE";
										_LZMark setMarkerSize [500,125];
										_LZMark setMarkerBrush "Solid";
										_LZMark setMarkerColor "ColorBlue";
										_LZMark setMarkerDir 310.475;
										markerArray pushBack _LZMark;
										
										_LZMark2 = createMarker ["RedLight", [27246.6,24833.1]];
										_LZMark2 setMarkerShape "ICON";
										_LZMark2 setMarkerType "hd_dot";
										_LZMark2 setMarkerColor "ColorRed";
										_LZMark2 setMarkerText "Red Light";
										markerArray pushBack _LZMark2;
										
										_LZMark3 = createMarker ["GreenLight", [25966.2,23320.7]];
										_LZMark3 setMarkerShape "ICON";
										_LZMark3 setMarkerType "hd_dot";
										_LZMark3 setMarkerColor "ColorGreen";
										_LZMark3 setMarkerText "Green Light";
										markerArray pushBack _LZMark3;
									};
									case "3":
									{
										_LZMark = createMarker ["DZ", [5914.52,15037.1]];
										_LZMark setMarkerShape "RECTANGLE";
										_LZMark setMarkerSize [500,125];
										_LZMark setMarkerBrush "Solid";
										_LZMark setMarkerColor "ColorBlue";
										_LZMark setMarkerDir 144.314;
										markerArray pushBack _LZMark;
										
										_LZMark2 = createMarker ["RedLight", [5117.79,14444.7]];
										_LZMark2 setMarkerShape "ICON";
										_LZMark2 setMarkerType "hd_dot";
										_LZMark2 setMarkerColor "ColorRed";
										_LZMark2 setMarkerText "Red Light";
										markerArray pushBack _LZMark2;
										
										_LZMark3 = createMarker ["GreenLight", [6722.77,15606.9]];
										_LZMark3 setMarkerShape "ICON";
										_LZMark3 setMarkerType "hd_dot";
										_LZMark3 setMarkerColor "ColorGreen";
										_LZMark3 setMarkerText "Green Light";
										markerArray pushBack _LZMark3;
									};
								};
							};
							default
							{
								hint "Code Break in rav1 _side west/_paramWest 1/callsign condor/exercise sub switch";
							};
						};
					};
					case "Dragon":
					{
						// Target Type Array
						_TGTType = ["O_Truck_02_Ammo_F","O_Truck_02_fuel_F","O_Truck_02_medical_F","O_Truck_02_box_F","O_Truck_02_transport_F","O_Truck_02_covered_F","O_MRAP_02_F","O_MRAP_02_gmg_F","O_MRAP_02_hmg_F","O_LSV_02_armed_F","O_LSV_02_unarmed_F","O_Truck_03_ammo_F","O_Truck_03_device_F","O_Truck_03_fuel_F","O_Truck_03_medical_F","O_Truck_03_repair_F","O_Truck_03_transport_F","O_Truck_03_covered_F"];
						// Target Pos Array
						_TGTPos = [_mortarTGTpos1,_mortarTGTpos2,_mortarTGTpos3,_mortarTGTpos4,_mortarTGTpos5];
						// Spawn Targets
						{
							_TGT = _TGTType call BIS_fnc_selectRandom;
							_chopper1 = createVehicle [_TGT, _x, [], 0, "CAN_COLLIDE"];
							_chopper1 setDir 270;
							targetArray pushBack _chopper1;
						} foreach _TGTPos;
						_chopper2 = createVehicle ["B_Mortar_01_F", _mortarTGTpos6, [], 0, "CAN_COLLIDE"];
						aircraftArray pushBack _chopper2;
					};
					default
					{
						hint "Code Break in rav1 _side west/_paramWest 5/callsign sub switch";
					};
				};
			};
			case 6: // USMC
			{
				// detect callsign and exercise
				switch (exerciseCallsign) do
				{
					case "Raven":
					{
						switch (exerciseNumber) do
						{
							case "1":
							{
								// spawn aircraft
								_chopper1 = createVehicle ["JAS_CUP_B_MH60S_FFV_USMC", _parkingPos1, [], 0, "CAN_COLLIDE"];
								_chopper1 setDir 310;
								aircraftArray pushBack _chopper1;
								
								_chopper2 = createVehicle ["JAS_CUP_B_MH60S_FFV_USMC", _parkingPos2, [], 0, "CAN_COLLIDE"];
								_chopper2 setDir 310;
								aircraftArray pushBack _chopper2;
								
								_chopper3 = createVehicle ["JAS_CUP_B_MH60S_FFV_USMC", _parkingPos3, [], 0, "CAN_COLLIDE"];
								_chopper3 setDir 310;
								aircraftArray pushBack _chopper3;
								
								_chopper4 = createVehicle ["JAS_CUP_B_MH60S_FFV_USMC", _parkingPos4, [], 0, "CAN_COLLIDE"];
								_chopper4 setDir 310;
								aircraftArray pushBack _chopper4;
								
								_chopper5 = createVehicle ["JAS_CUP_B_MH60S_FFV_USMC", _parkingPos5, [], 0, "CAN_COLLIDE"];
								_chopper5 setDir 310;
								aircraftArray pushBack _chopper5;
								
								_chopper6 = createVehicle ["JAS_CUP_B_MH60S_FFV_USMC", _parkingPos6, [], 0, "CAN_COLLIDE"];
								_chopper6 setDir 310;
								aircraftArray pushBack _chopper6;
	
								// Replacement code from HeliPractice - leads to automated single flight
								_x = 0;
								while {(_x < 86)} do
								{
									// Generate HLS Pool
									_lz = missionNamespace getVariable ("lz" + format["%1", _x + 1]);
									lzList = lzList + [_lz];
									_x = _x + 1;
									
								};
								
								// Generate HLS for this exercise instance
								_x = 0;
								while {(_x < 6)} do
								{
									_hls = selectRandom lzList;
									lzList = lzList - [_hls];
									_LZMark = createMarker ["HLS" + format["%1",_x], getPos _hls];
									_LZMark setMarkerShape "ICON";
									_LZMark setMarkerType "mil_start";
									_LZMark setMarkerText "LZ";
									markerArray pushBack _LZMark;
									_x = _x + 1;
									
								};
							};
							case "2":
							{
								// spawn aircraft
								_chopper1 = createVehicle ["JAS_CUP_B_MH60S_FFV_USMC", _parkingPos1, [], 0, "CAN_COLLIDE"];
								_chopper1 setDir 310;
								aircraftArray pushBack _chopper1;
								
								_chopper2 = createVehicle ["JAS_CUP_B_MH60S_FFV_USMC", _parkingPos2, [], 0, "CAN_COLLIDE"];
								_chopper2 setDir 310;
								aircraftArray pushBack _chopper2;
								
								_chopper3 = createVehicle ["JAS_CUP_B_MH60S_FFV_USMC", _parkingPos3, [], 0, "CAN_COLLIDE"];
								_chopper3 setDir 310;
								aircraftArray pushBack _chopper3;
								
								_chopper4 = createVehicle ["JAS_CUP_B_MH60S_FFV_USMC", _parkingPos4, [], 0, "CAN_COLLIDE"];
								_chopper4 setDir 310;
								aircraftArray pushBack _chopper4;
								
								_chopper5 = createVehicle ["JAS_CUP_B_MH60S_FFV_USMC", _parkingPos5, [], 0, "CAN_COLLIDE"];
								_chopper5 setDir 310;
								aircraftArray pushBack _chopper5;
								
								_chopper6 = createVehicle ["JAS_CUP_B_MH60S_FFV_USMC", _parkingPos6, [], 0, "CAN_COLLIDE"];
								_chopper6 setDir 310;
								aircraftArray pushBack _chopper6;
	
								// Replacement code from HeliPractice - leads to automated single flight
								_x = 97;
								while {(_x < 105)} do
								{
									// Generate HLS Pool
									_lz = missionNamespace getVariable ("lz" + format["%1", _x + 1]);
									lzList = lzList + [_lz];
									_x = _x + 1;
									
								};
								
								// Generate HLS for this exercise instance
								_x = 0;
								while {(_x < 6)} do
								{
									_hls = selectRandom lzList;
									lzList = lzList - [_hls];
									_LZMark = createMarker ["HLS" + format["%1",_x], getPos _hls];
									_LZMark setMarkerShape "ICON";
									_LZMark setMarkerType "mil_start";
									_LZMark setMarkerText "LZ";
									markerArray pushBack _LZMark;
									_x = _x + 1;
									
								};
							};
							case "3":
							{
								// spawn aircraft
								_chopper1 = createVehicle ["JAS_CUP_B_MH60S_FFV_USMC", _parkingPos1, [], 0, "CAN_COLLIDE"];
								_chopper1 setDir 310;
								aircraftArray pushBack _chopper1;
								
								_chopper2 = createVehicle ["JAS_CUP_B_MH60S_FFV_USMC", _parkingPos2, [], 0, "CAN_COLLIDE"];
								_chopper2 setDir 310;
								aircraftArray pushBack _chopper2;
								
								_chopper3 = createVehicle ["JAS_CUP_B_MH60S_FFV_USMC", _parkingPos3, [], 0, "CAN_COLLIDE"];
								_chopper3 setDir 310;
								aircraftArray pushBack _chopper3;
								
								_chopper4 = createVehicle ["JAS_CUP_B_MH60S_FFV_USMC", _parkingPos4, [], 0, "CAN_COLLIDE"];
								_chopper4 setDir 310;
								aircraftArray pushBack _chopper4;
								
								_chopper5 = createVehicle ["JAS_CUP_B_MH60S_FFV_USMC", _parkingPos5, [], 0, "CAN_COLLIDE"];
								_chopper5 setDir 310;
								aircraftArray pushBack _chopper5;
								
								_chopper6 = createVehicle ["JAS_CUP_B_MH60S_FFV_USMC", _parkingPos6, [], 0, "CAN_COLLIDE"];
								_chopper6 setDir 310;
								aircraftArray pushBack _chopper6;
	
								// spawn cars with actions added to teleport from location to location eventually returning to start
								_car0 = createVehicle ["CUP_B_HMMWV_Ambulance_USMC", _casevacPos0, [], 0, "CAN_COLLIDE"];
								_car0 setDir 135;
								_car0 setVehicleVarName "Car0";
								_car0 addAction ["<t color='#FFFF00'>Teleport to next CCP</t>","[player, 'casevac1'] call GOL_fnc_Teleport;"];
								[_car0,["med_box","west"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _car0;
								
								_car1 = createVehicle ["CUP_B_HMMWV_Ambulance_USMC", _casevacPos1, [], 0, "CAN_COLLIDE"];
								_car1 setDir 290;
								_car1 setVehicleVarName "Car1";
								_car1 addAction ["<t color='#FFFF00'>Teleport to next CCP</t>","[player, 'casevac2'] call GOL_fnc_Teleport;"];
								[_car1,["med_box","west"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _car1;
								
								_car2 = createVehicle ["CUP_B_HMMWV_Ambulance_USMC", _casevacPos2, [], 0, "CAN_COLLIDE"];
								_car2 setDir 338;
								_car2 setVehicleVarName "Car2";
								_car2 addAction ["<t color='#FFFF00'>Teleport to next CCP</t>","[player, 'casevac3'] call GOL_fnc_Teleport;"];
								[_car2,["med_box","west"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _car2;
								
								_car3 = createVehicle ["CUP_B_HMMWV_Ambulance_USMC", _casevacPos3, [], 0, "CAN_COLLIDE"];
								_car3 setDir 0;
								_car3 setVehicleVarName "Car3";
								_car3 addAction ["<t color='#FFFF00'>Teleport to next CCP</t>","[player, 'casevac4'] call GOL_fnc_Teleport;"];
								[_car3,["med_box","west"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _car3;
								
								_car4 = createVehicle ["CUP_B_HMMWV_Ambulance_USMC", _casevacPos4, [], 0, "CAN_COLLIDE"];
								_car4 setDir 39;
								_car4 setVehicleVarName "Car4";
								_car4 addAction ["<t color='#FFFF00'>Teleport to next CCP</t>","[player, 'casevac5'] call GOL_fnc_Teleport;"];
								[_car4,["med_box","west"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _car4;
								
								_car5 = createVehicle ["CUP_B_HMMWV_Ambulance_USMC", _casevacPos5, [], 0, "CAN_COLLIDE"];
								_car5 setDir 178;
								_car5 setVehicleVarName "Car5";
								_car5 addAction ["<t color='#FFFF00'>Teleport to next CCP</t>","[player, 'casevac6'] call GOL_fnc_Teleport;"];
								[_car5,["med_box","west"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _car5;
								
								_car6 = createVehicle ["CUP_B_HMMWV_Ambulance_USMC", _casevacPos6, [], 0, "CAN_COLLIDE"];
								_car6 setDir 69;
								_car6 setVehicleVarName "Car6";
								_car6 addAction ["<t color='#FFFF00'>Teleport to next CCP</t>","[player, 'casevac7'] call GOL_fnc_Teleport;"];
								[_car6,["med_box","west"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _car6;
								
								_car7 = createVehicle ["CUP_B_HMMWV_Ambulance_USMC", _casevacPos7, [], 0, "CAN_COLLIDE"];
								_car7 setDir 78;
								_car7 setVehicleVarName "Car7";
								_car7 addAction ["<t color='#FFFF00'>Return To Start</t>","[player, 'casevac0'] call GOL_fnc_Teleport;"];
								[_car7,["med_box","west"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _car7;
								
							};
							default
							{
								hint "Code Break in rav1 _side west/_paramWest 5/callsign raven/exercise sub switch";
							};
						};
					};
					case "Giant":
					{
						switch (exerciseNumber) do
						{
							case "1":
							{
								// spawn aircraft
								_chopper1 = createVehicle ["JAS_CUP_B_CH53E_USMC", _parkingPos1a, [], 0, "CAN_COLLIDE"];
								_chopper1 setDir 310;
								aircraftArray pushBack _chopper1;
								
								_chopper2 = createVehicle ["JAS_CUP_B_CH53E_USMC", _parkingPos3a, [], 0, "CAN_COLLIDE"];
								_chopper2 setDir 310;
								aircraftArray pushBack _chopper2;
								
								_chopper3 = createVehicle ["JAS_CUP_B_CH53E_USMC", _parkingPos2, [], 0, "CAN_COLLIDE"];
								_chopper3 setDir 310;
								aircraftArray pushBack _chopper3;
								
								_chopper4 = createVehicle ["JAS_CUP_B_CH53E_USMC", _parkingPos5, [], 0, "CAN_COLLIDE"];
								_chopper4 setDir 310;
								aircraftArray pushBack _chopper4;
								
								_chopper5 = createVehicle ["JAS_CUP_B_CH53E_USMC", _parkingPos4a, [], 0, "CAN_COLLIDE"];
								_chopper5 setDir 310;
								aircraftArray pushBack _chopper5;
								
								_chopper6 = createVehicle ["JAS_CUP_B_CH53E_USMC", _parkingPos6a, [], 0, "CAN_COLLIDE"];
								_chopper6 setDir 310;
								aircraftArray pushBack _chopper6;
	
								// Replacement code from HeliPractice - leads to automated single flight
								_x = 86;
								while {(_x < 97)} do
								{
									// Generate HLS Pool
									_lz = missionNamespace getVariable ("lz" + format["%1", _x + 1]);
									lzList = lzList + [_lz];
									_x = _x + 1;
									
								};
								
								// Generate HLS for this exercise instance
								_x = 0;
								while {(_x < 6)} do
								{
									_hls = selectRandom lzList;
									lzList = lzList - [_hls];
									_LZMark = createMarker ["HLS" + format["%1",_x], getPos _hls];
									_LZMark setMarkerShape "ICON";
									_LZMark setMarkerType "mil_start";
									_LZMark setMarkerText "LZ";
									markerArray pushBack _LZMark;
									_x = _x + 1;
									
								};
							};
							case "2":
							{
								// spawn aircraft
								_chopper1 = createVehicle ["JAS_CUP_B_CH53E_USMC", _parkingPos1a, [], 0, "CAN_COLLIDE"];
								_chopper1 setDir 310;
								aircraftArray pushBack _chopper1;
								
								_chopper2 = createVehicle ["JAS_CUP_B_CH53E_USMC", _parkingPos3a, [], 0, "CAN_COLLIDE"];
								_chopper2 setDir 310;
								aircraftArray pushBack _chopper2;
								
								_chopper3 = createVehicle ["JAS_CUP_B_CH53E_USMC", _parkingPos2, [], 0, "CAN_COLLIDE"];
								_chopper3 setDir 310;
								aircraftArray pushBack _chopper3;
								
								_chopper4 = createVehicle ["JAS_CUP_B_CH53E_USMC", _parkingPos5, [], 0, "CAN_COLLIDE"];
								_chopper4 setDir 310;
								aircraftArray pushBack _chopper4;
								
								_chopper5 = createVehicle ["JAS_CUP_B_CH53E_USMC", _parkingPos4a, [], 0, "CAN_COLLIDE"];
								_chopper5 setDir 310;
								aircraftArray pushBack _chopper5;
								
								_chopper6 = createVehicle ["JAS_CUP_B_CH53E_USMC", _parkingPos6a, [], 0, "CAN_COLLIDE"];
								_chopper6 setDir 310;
								aircraftArray pushBack _chopper6;
								
								_crate1 = createVehicle ["B_CargoNet_01_ammo_F", _cratePos1, [], 0, "CAN_COLLIDE"];
								_crate1 setDir 310;
								[_crate1,["big_box","west"],[true,true]] call GOL_Fnc_GearHandler;
								supplyArray pushBack _crate1;
								
								_crate2 = createVehicle ["B_CargoNet_01_ammo_F", _cratePos2, [], 0, "CAN_COLLIDE"];
								_crate2 setDir 310;
								[_crate2,["big_box","west"],[true,true]] call GOL_Fnc_GearHandler;
								supplyArray pushBack _crate2;
								
								_crate3 = createVehicle ["B_CargoNet_01_ammo_F", _cratePos3, [], 0, "CAN_COLLIDE"];
								_crate3 setDir 310;
								[_crate3,["big_box","west"],[true,true]] call GOL_Fnc_GearHandler;
								supplyArray pushBack _crate3;
								
								_crate4 = createVehicle ["B_CargoNet_01_ammo_F", _cratePos4, [], 0, "CAN_COLLIDE"];
								_crate4 setDir 310;
								[_crate4,["big_box","west"],[true,true]] call GOL_Fnc_GearHandler;
								supplyArray pushBack _crate4;
								
								_crate5 = createVehicle ["B_CargoNet_01_ammo_F", _cratePos5, [], 0, "CAN_COLLIDE"];
								_crate5 setDir 310;
								[_crate5,["big_box","west"],[true,true]] call GOL_Fnc_GearHandler;
								supplyArray pushBack _crate5;
								
								_crate6 = createVehicle ["B_CargoNet_01_ammo_F", _cratePos6, [], 0, "CAN_COLLIDE"];
								_crate6 setDir 310;
								[_crate6,["big_box","west"],[true,true]] call GOL_Fnc_GearHandler;
								supplyArray pushBack _crate6;
								
								_crate7 = createVehicle ["B_CargoNet_01_ammo_F", _cratePos7, [], 0, "CAN_COLLIDE"];
								_crate7 setDir 310;
								[_crate7,["big_box","west"],[true,true]] call GOL_Fnc_GearHandler;
								supplyArray pushBack _crate7;
								
								{
									_LZMark = createMarker ["Crate" + format["%1",_x], getPos _x];
									_LZMark setMarkerShape "ICON";
									_LZMark setMarkerType "mil_destroy";
									_LZMark setMarkerText "Crate";
									markerArray pushBack _LZMark;
								} foreach supplyArray;
	
								// Replacement code from HeliPractice - leads to automated single flight
								_x = 97;
								while {(_x < 105)} do
								{
									// Generate HLS Pool
									_lz = missionNamespace getVariable ("lz" + format["%1", _x + 1]);
									lzList = lzList + [_lz];
									_x = _x + 1;
									
								};
								
								// Generate HLS for this exercise instance
								_x = 0;
								while {(_x < 6)} do
								{
									_hls = selectRandom lzList;
									lzList = lzList - [_hls];
									_LZMark = createMarker ["HLS" + format["%1",_x], getPos _hls];
									_LZMark setMarkerShape "ICON";
									_LZMark setMarkerType "mil_start";
									_LZMark setMarkerText "LZ";
									markerArray pushBack _LZMark;
									_x = _x + 1;
									
								};
							};
							default
							{
								hint "Code Break in rav1 _side west/_paramWest 1/callsign giant/exercise sub switch";
							};
						};
					};
					case "Condor":
					{
						switch (exerciseNumber) do
						{
							case "1":
							{
								// spawn aircraft
								_chopper1 = createVehicle ["CUP_B_C130J_USMC", _condorParking1, [], 0, "CAN_COLLIDE"];
								_chopper1 setDir 134;
								aircraftArray pushBack _chopper1;
								
								_chopper2 = createVehicle ["CUP_B_C130J_USMC", _condorParking2, [], 0, "CAN_COLLIDE"];
								_chopper2 setDir 134;
								aircraftArray pushBack _chopper2;
								
								_chopper3 = createVehicle ["CUP_B_C130J_USMC", _condorParking3, [], 0, "CAN_COLLIDE"];
								_chopper3 setDir 134;
								aircraftArray pushBack _chopper3;
								
								_dz = ["1","2","3"] call BIS_fnc_selectRandom;
								
								switch (_dz) do
								{
									case "1":
									{
										_LZMark = createMarker ["DZ", [20550.61,8248.738]];
										_LZMark setMarkerShape "RECTANGLE";
										_LZMark setMarkerSize [500,125];
										_LZMark setMarkerBrush "Solid";
										_LZMark setMarkerColor "ColorBlue";
										markerArray pushBack _LZMark;
										
										_LZMark2 = createMarker ["RedLight", [21562.7,8248.738]];
										_LZMark2 setMarkerShape "ICON";
										_LZMark2 setMarkerType "hd_dot";
										_LZMark2 setMarkerColor "ColorRed";
										_LZMark2 setMarkerText "Red Light";
										markerArray pushBack _LZMark2;
										
										_LZMark3 = createMarker ["GreenLight", [19561.7,8248.738]];
										_LZMark3 setMarkerShape "ICON";
										_LZMark3 setMarkerType "hd_dot";
										_LZMark3 setMarkerColor "ColorGreen";
										_LZMark3 setMarkerText "Green Light";
										markerArray pushBack _LZMark3;
									};
									case "2":
									{
										_LZMark = createMarker ["DZ", [26614.7,24067.2]];
										_LZMark setMarkerShape "RECTANGLE";
										_LZMark setMarkerSize [500,125];
										_LZMark setMarkerBrush "Solid";
										_LZMark setMarkerColor "ColorBlue";
										_LZMark setMarkerDir 310.475;
										markerArray pushBack _LZMark;
										
										_LZMark2 = createMarker ["RedLight", [27246.6,24833.1]];
										_LZMark2 setMarkerShape "ICON";
										_LZMark2 setMarkerType "hd_dot";
										_LZMark2 setMarkerColor "ColorRed";
										_LZMark2 setMarkerText "Red Light";
										markerArray pushBack _LZMark2;
										
										_LZMark3 = createMarker ["GreenLight", [25966.2,23320.7]];
										_LZMark3 setMarkerShape "ICON";
										_LZMark3 setMarkerType "hd_dot";
										_LZMark3 setMarkerColor "ColorGreen";
										_LZMark3 setMarkerText "Green Light";
										markerArray pushBack _LZMark3;
									};
									case "3":
									{
										_LZMark = createMarker ["DZ", [5914.52,15037.1]];
										_LZMark setMarkerShape "RECTANGLE";
										_LZMark setMarkerSize [500,125];
										_LZMark setMarkerBrush "Solid";
										_LZMark setMarkerColor "ColorBlue";
										_LZMark setMarkerDir 144.314;
										markerArray pushBack _LZMark;
										
										_LZMark2 = createMarker ["RedLight", [5117.79,14444.7]];
										_LZMark2 setMarkerShape "ICON";
										_LZMark2 setMarkerType "hd_dot";
										_LZMark2 setMarkerColor "ColorRed";
										_LZMark2 setMarkerText "Red Light";
										markerArray pushBack _LZMark2;
										
										_LZMark3 = createMarker ["GreenLight", [6722.77,15606.9]];
										_LZMark3 setMarkerShape "ICON";
										_LZMark3 setMarkerType "hd_dot";
										_LZMark3 setMarkerColor "ColorGreen";
										_LZMark3 setMarkerText "Green Light";
										markerArray pushBack _LZMark3;
									};
								};
							};
							default
							{
								hint "Code Break in rav1 _side west/_paramWest 1/callsign condor/exercise sub switch";
							};
						};
					};
					case "Dragon":
					{
						// Target Type Array
						_TGTType = ["O_Truck_02_Ammo_F","O_Truck_02_fuel_F","O_Truck_02_medical_F","O_Truck_02_box_F","O_Truck_02_transport_F","O_Truck_02_covered_F","O_MRAP_02_F","O_MRAP_02_gmg_F","O_MRAP_02_hmg_F","O_LSV_02_armed_F","O_LSV_02_unarmed_F","O_Truck_03_ammo_F","O_Truck_03_device_F","O_Truck_03_fuel_F","O_Truck_03_medical_F","O_Truck_03_repair_F","O_Truck_03_transport_F","O_Truck_03_covered_F"];
						// Target Pos Array
						_TGTPos = [_mortarTGTpos1,_mortarTGTpos2,_mortarTGTpos3,_mortarTGTpos4,_mortarTGTpos5];
						// Spawn Targets
						{
							_TGT = _TGTType call BIS_fnc_selectRandom;
							_chopper1 = createVehicle [_TGT, _x, [], 0, "CAN_COLLIDE"];
							_chopper1 setDir 270;
							targetArray pushBack _chopper1;
						} foreach _TGTPos;
						_chopper2 = createVehicle ["B_Mortar_01_F", _mortarTGTpos6, [], 0, "CAN_COLLIDE"];
						aircraftArray pushBack _chopper2;
					};
					default
					{
						hint "Code Break in rav1 _side west/_paramWest 5/callsign sub switch";
					};
				};
			};
			case 7: // US JSOC
			{
				// detect callsign and exercise
				switch (exerciseCallsign) do
				{
					case "Raven":
					{
						switch (exerciseNumber) do
						{
							case "1":
							{
								// spawn aircraft
								_chopper1 = createVehicle ["JAS_CUP_B_MH6J_SOAR", _parkingPos1, [], 0, "CAN_COLLIDE"];
								_chopper1 setDir 310;
								aircraftArray pushBack _chopper1;
								
								_chopper2 = createVehicle ["JAS_CUP_B_MH6J_SOAR", _parkingPos2, [], 0, "CAN_COLLIDE"];
								_chopper2 setDir 310;
								aircraftArray pushBack _chopper2;
								
								_chopper3 = createVehicle ["JAS_CUP_B_MH6J_SOAR", _parkingPos3, [], 0, "CAN_COLLIDE"];
								_chopper3 setDir 310;
								aircraftArray pushBack _chopper3;
								
								_chopper4 = createVehicle ["JAS_CUP_B_MH6J_SOAR", _parkingPos4, [], 0, "CAN_COLLIDE"];
								_chopper4 setDir 310;
								aircraftArray pushBack _chopper4;
								
								_chopper5 = createVehicle ["JAS_CUP_B_MH6J_SOAR", _parkingPos5, [], 0, "CAN_COLLIDE"];
								_chopper5 setDir 310;
								aircraftArray pushBack _chopper5;
								
								_chopper6 = createVehicle ["JAS_CUP_B_MH6J_SOAR", _parkingPos6, [], 0, "CAN_COLLIDE"];
								_chopper6 setDir 310;
								aircraftArray pushBack _chopper6;
	
								// Replacement code from HeliPractice - leads to automated single flight
								_x = 0;
								while {(_x < 86)} do
								{
									// Generate HLS Pool
									_lz = missionNamespace getVariable ("lz" + format["%1", _x + 1]);
									lzList = lzList + [_lz];
									_x = _x + 1;
									
								};
								
								// Generate HLS for this exercise instance
								_x = 0;
								while {(_x < 6)} do
								{
									_hls = selectRandom lzList;
									lzList = lzList - [_hls];
									_LZMark = createMarker ["HLS" + format["%1",_x], getPos _hls];
									_LZMark setMarkerShape "ICON";
									_LZMark setMarkerType "mil_start";
									_LZMark setMarkerText "LZ";
									markerArray pushBack _LZMark;
									_x = _x + 1;
									
								};
							};
							case "2":
							{
								// spawn aircraft
								_chopper1 = createVehicle ["JAS_CUP_B_MH6J_SOAR", _parkingPos1, [], 0, "CAN_COLLIDE"];
								_chopper1 setDir 310;
								aircraftArray pushBack _chopper1;
								
								_chopper2 = createVehicle ["JAS_CUP_B_MH6J_SOAR", _parkingPos2, [], 0, "CAN_COLLIDE"];
								_chopper2 setDir 310;
								aircraftArray pushBack _chopper2;
								
								_chopper3 = createVehicle ["JAS_CUP_B_MH6J_SOAR", _parkingPos3, [], 0, "CAN_COLLIDE"];
								_chopper3 setDir 310;
								aircraftArray pushBack _chopper3;
								
								_chopper4 = createVehicle ["JAS_CUP_B_MH6J_SOAR", _parkingPos4, [], 0, "CAN_COLLIDE"];
								_chopper4 setDir 310;
								aircraftArray pushBack _chopper4;
								
								_chopper5 = createVehicle ["JAS_CUP_B_MH6J_SOAR", _parkingPos5, [], 0, "CAN_COLLIDE"];
								_chopper5 setDir 310;
								aircraftArray pushBack _chopper5;
								
								_chopper6 = createVehicle ["JAS_CUP_B_MH6J_SOAR", _parkingPos6, [], 0, "CAN_COLLIDE"];
								_chopper6 setDir 310;
								aircraftArray pushBack _chopper6;
	
								// Replacement code from HeliPractice - leads to automated single flight
								_x = 97;
								while {(_x < 105)} do
								{
									// Generate HLS Pool
									_lz = missionNamespace getVariable ("lz" + format["%1", _x + 1]);
									lzList = lzList + [_lz];
									_x = _x + 1;
									
								};
								
								// Generate HLS for this exercise instance
								_x = 0;
								while {(_x < 6)} do
								{
									_hls = selectRandom lzList;
									lzList = lzList - [_hls];
									_LZMark = createMarker ["HLS" + format["%1",_x], getPos _hls];
									_LZMark setMarkerShape "ICON";
									_LZMark setMarkerType "mil_start";
									_LZMark setMarkerText "LZ";
									markerArray pushBack _LZMark;
									_x = _x + 1;
									
								};
							};
							case "3":
							{
								// spawn aircraft
								_chopper1 = createVehicle ["CUP_B_UH60M_Unarmed_FFV_MEV_US", _parkingPos1, [], 0, "CAN_COLLIDE"];
								_chopper1 setDir 310;
								aircraftArray pushBack _chopper1;
								
								_chopper2 = createVehicle ["CUP_B_UH60M_Unarmed_FFV_MEV_US", _parkingPos2, [], 0, "CAN_COLLIDE"];
								_chopper2 setDir 310;
								aircraftArray pushBack _chopper2;
								
								_chopper3 = createVehicle ["CUP_B_UH60M_Unarmed_FFV_MEV_US", _parkingPos3, [], 0, "CAN_COLLIDE"];
								_chopper3 setDir 310;
								aircraftArray pushBack _chopper3;
								
								_chopper4 = createVehicle ["CUP_B_UH60M_Unarmed_FFV_MEV_US", _parkingPos4, [], 0, "CAN_COLLIDE"];
								_chopper4 setDir 310;
								aircraftArray pushBack _chopper4;
								
								_chopper5 = createVehicle ["CUP_B_UH60M_Unarmed_FFV_MEV_US", _parkingPos5, [], 0, "CAN_COLLIDE"];
								_chopper5 setDir 310;
								aircraftArray pushBack _chopper5;
								
								_chopper6 = createVehicle ["CUP_B_UH60M_Unarmed_FFV_MEV_US", _parkingPos6, [], 0, "CAN_COLLIDE"];
								_chopper6 setDir 310;
								aircraftArray pushBack _chopper6;
	
								// spawn cars with actions added to teleport from location to location eventually returning to start
								_car0 = createVehicle ["CUP_B_HMMWV_Ambulance_USA", _casevacPos0, [], 0, "CAN_COLLIDE"];
								_car0 setDir 135;
								_car0 setVehicleVarName "Car0";
								_car0 addAction ["<t color='#FFFF00'>Teleport to next CCP</t>","[player, 'casevac1'] call GOL_fnc_Teleport;"];
								[_car0,["med_box","west"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _car0;
								
								_car1 = createVehicle ["CUP_B_HMMWV_Ambulance_USA", _casevacPos1, [], 0, "CAN_COLLIDE"];
								_car1 setDir 290;
								_car1 setVehicleVarName "Car1";
								_car1 addAction ["<t color='#FFFF00'>Teleport to next CCP</t>","[player, 'casevac2'] call GOL_fnc_Teleport;"];
								[_car1,["med_box","west"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _car1;
								
								_car2 = createVehicle ["CUP_B_HMMWV_Ambulance_USA", _casevacPos2, [], 0, "CAN_COLLIDE"];
								_car2 setDir 338;
								_car2 setVehicleVarName "Car2";
								_car2 addAction ["<t color='#FFFF00'>Teleport to next CCP</t>","[player, 'casevac3'] call GOL_fnc_Teleport;"];
								[_car2,["med_box","west"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _car2;
								
								_car3 = createVehicle ["CUP_B_HMMWV_Ambulance_USA", _casevacPos3, [], 0, "CAN_COLLIDE"];
								_car3 setDir 0;
								_car3 setVehicleVarName "Car3";
								_car3 addAction ["<t color='#FFFF00'>Teleport to next CCP</t>","[player, 'casevac4'] call GOL_fnc_Teleport;"];
								[_car3,["med_box","west"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _car3;
								
								_car4 = createVehicle ["CUP_B_HMMWV_Ambulance_USA", _casevacPos4, [], 0, "CAN_COLLIDE"];
								_car4 setDir 39;
								_car4 setVehicleVarName "Car4";
								_car4 addAction ["<t color='#FFFF00'>Teleport to next CCP</t>","[player, 'casevac5'] call GOL_fnc_Teleport;"];
								[_car4,["med_box","west"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _car4;
								
								_car5 = createVehicle ["CUP_B_HMMWV_Ambulance_USA", _casevacPos5, [], 0, "CAN_COLLIDE"];
								_car5 setDir 178;
								_car5 setVehicleVarName "Car5";
								_car5 addAction ["<t color='#FFFF00'>Teleport to next CCP</t>","[player, 'casevac6'] call GOL_fnc_Teleport;"];
								[_car5,["med_box","west"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _car5;
								
								_car6 = createVehicle ["CUP_B_HMMWV_Ambulance_USA", _casevacPos6, [], 0, "CAN_COLLIDE"];
								_car6 setDir 69;
								_car6 setVehicleVarName "Car6";
								_car6 addAction ["<t color='#FFFF00'>Teleport to next CCP</t>","[player, 'casevac7'] call GOL_fnc_Teleport;"];
								[_car6,["med_box","west"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _car6;
								
								_car7 = createVehicle ["CUP_B_HMMWV_Ambulance_USA", _casevacPos7, [], 0, "CAN_COLLIDE"];
								_car7 setDir 78;
								_car7 setVehicleVarName "Car7";
								_car7 addAction ["<t color='#FFFF00'>Return To Start</t>","[player, 'casevac0'] call GOL_fnc_Teleport;"];
								[_car7,["med_box","west"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _car7;
								
							};
							default
							{
								hint "Code Break in rav1 _side west/_paramWest 5/callsign raven/exercise sub switch";
							};
						};
					};
					case "Giant":
					{
						switch (exerciseNumber) do
						{
							case "1":
							{
								// spawn aircraft
								_chopper1 = createVehicle ["CUP_B_UH60M_FFV_US", _parkingPos1a, [], 0, "CAN_COLLIDE"];
								_chopper1 setDir 310;
								aircraftArray pushBack _chopper1;
								
								_chopper2 = createVehicle ["CUP_B_UH60M_FFV_US", _parkingPos3a, [], 0, "CAN_COLLIDE"];
								_chopper2 setDir 310;
								aircraftArray pushBack _chopper2;
								
								_chopper3 = createVehicle ["CUP_B_UH60M_FFV_US", _parkingPos2, [], 0, "CAN_COLLIDE"];
								_chopper3 setDir 310;
								aircraftArray pushBack _chopper3;
								
								_chopper4 = createVehicle ["CUP_B_UH60M_FFV_US", _parkingPos5, [], 0, "CAN_COLLIDE"];
								_chopper4 setDir 310;
								aircraftArray pushBack _chopper4;
								
								_chopper5 = createVehicle ["CUP_B_UH60M_FFV_US", _parkingPos4a, [], 0, "CAN_COLLIDE"];
								_chopper5 setDir 310;
								aircraftArray pushBack _chopper5;
								
								_chopper6 = createVehicle ["CUP_B_UH60M_FFV_US", _parkingPos6a, [], 0, "CAN_COLLIDE"];
								_chopper6 setDir 310;
								aircraftArray pushBack _chopper6;
	
								// Replacement code from HeliPractice - leads to automated single flight
								_x = 86;
								while {(_x < 97)} do
								{
									// Generate HLS Pool
									_lz = missionNamespace getVariable ("lz" + format["%1", _x + 1]);
									lzList = lzList + [_lz];
									_x = _x + 1;
									
								};
								
								// Generate HLS for this exercise instance
								_x = 0;
								while {(_x < 6)} do
								{
									_hls = selectRandom lzList;
									lzList = lzList - [_hls];
									_LZMark = createMarker ["HLS" + format["%1",_x], getPos _hls];
									_LZMark setMarkerShape "ICON";
									_LZMark setMarkerType "mil_start";
									_LZMark setMarkerText "LZ";
									markerArray pushBack _LZMark;
									_x = _x + 1;
									
								};
							};
							case "2":
							{
								// spawn aircraft
								_chopper1 = createVehicle ["CUP_B_UH60M_FFV_US", _parkingPos1a, [], 0, "CAN_COLLIDE"];
								_chopper1 setDir 310;
								aircraftArray pushBack _chopper1;
								
								_chopper2 = createVehicle ["CUP_B_UH60M_FFV_US", _parkingPos3a, [], 0, "CAN_COLLIDE"];
								_chopper2 setDir 310;
								aircraftArray pushBack _chopper2;
								
								_chopper3 = createVehicle ["CUP_B_UH60M_FFV_US", _parkingPos2, [], 0, "CAN_COLLIDE"];
								_chopper3 setDir 310;
								aircraftArray pushBack _chopper3;
								
								_chopper4 = createVehicle ["CUP_B_UH60M_FFV_US", _parkingPos5, [], 0, "CAN_COLLIDE"];
								_chopper4 setDir 310;
								aircraftArray pushBack _chopper4;
								
								_chopper5 = createVehicle ["CUP_B_UH60M_FFV_US", _parkingPos4a, [], 0, "CAN_COLLIDE"];
								_chopper5 setDir 310;
								aircraftArray pushBack _chopper5;
								
								_chopper6 = createVehicle ["CUP_B_UH60M_FFV_US", _parkingPos6a, [], 0, "CAN_COLLIDE"];
								_chopper6 setDir 310;
								aircraftArray pushBack _chopper6;
								
								_crate1 = createVehicle ["B_CargoNet_01_ammo_F", _cratePos1, [], 0, "CAN_COLLIDE"];
								_crate1 setDir 310;
								[_crate1,["big_box","west"],[true,true]] call GOL_Fnc_GearHandler;
								supplyArray pushBack _crate1;
								
								_crate2 = createVehicle ["B_CargoNet_01_ammo_F", _cratePos2, [], 0, "CAN_COLLIDE"];
								_crate2 setDir 310;
								[_crate2,["big_box","west"],[true,true]] call GOL_Fnc_GearHandler;
								supplyArray pushBack _crate2;
								
								_crate3 = createVehicle ["B_CargoNet_01_ammo_F", _cratePos3, [], 0, "CAN_COLLIDE"];
								_crate3 setDir 310;
								[_crate3,["big_box","west"],[true,true]] call GOL_Fnc_GearHandler;
								supplyArray pushBack _crate3;
								
								_crate4 = createVehicle ["B_CargoNet_01_ammo_F", _cratePos4, [], 0, "CAN_COLLIDE"];
								_crate4 setDir 310;
								[_crate4,["big_box","west"],[true,true]] call GOL_Fnc_GearHandler;
								supplyArray pushBack _crate4;
								
								_crate5 = createVehicle ["B_CargoNet_01_ammo_F", _cratePos5, [], 0, "CAN_COLLIDE"];
								_crate5 setDir 310;
								[_crate5,["big_box","west"],[true,true]] call GOL_Fnc_GearHandler;
								supplyArray pushBack _crate5;
								
								_crate6 = createVehicle ["B_CargoNet_01_ammo_F", _cratePos6, [], 0, "CAN_COLLIDE"];
								_crate6 setDir 310;
								[_crate6,["big_box","west"],[true,true]] call GOL_Fnc_GearHandler;
								supplyArray pushBack _crate6;
								
								_crate7 = createVehicle ["B_CargoNet_01_ammo_F", _cratePos7, [], 0, "CAN_COLLIDE"];
								_crate7 setDir 310;
								[_crate7,["big_box","west"],[true,true]] call GOL_Fnc_GearHandler;
								supplyArray pushBack _crate7;
								
								{
									_LZMark = createMarker ["Crate" + format["%1",_x], getPos _x];
									_LZMark setMarkerShape "ICON";
									_LZMark setMarkerType "mil_destroy";
									_LZMark setMarkerText "Crate";
									markerArray pushBack _LZMark;
								} foreach supplyArray;
	
								// Replacement code from HeliPractice - leads to automated single flight
								_x = 97;
								while {(_x < 105)} do
								{
									// Generate HLS Pool
									_lz = missionNamespace getVariable ("lz" + format["%1", _x + 1]);
									lzList = lzList + [_lz];
									_x = _x + 1;
									
								};
								
								// Generate HLS for this exercise instance
								_x = 0;
								while {(_x < 6)} do
								{
									_hls = selectRandom lzList;
									lzList = lzList - [_hls];
									_LZMark = createMarker ["HLS" + format["%1",_x], getPos _hls];
									_LZMark setMarkerShape "ICON";
									_LZMark setMarkerType "mil_start";
									_LZMark setMarkerText "LZ";
									markerArray pushBack _LZMark;
									_x = _x + 1;
									
								};
							};
							default
							{
								hint "Code Break in rav1 _side west/_paramWest 1/callsign giant/exercise sub switch";
							};
						};
					};
					case "Condor":
					{
						switch (exerciseNumber) do
						{
							case "1":
							{
								// spawn aircraft
								_chopper1 = createVehicle ["CUP_B_C130J_USMC", _condorParking1, [], 0, "CAN_COLLIDE"];
								_chopper1 setDir 134;
								aircraftArray pushBack _chopper1;
								
								_chopper2 = createVehicle ["CUP_B_C130J_USMC", _condorParking2, [], 0, "CAN_COLLIDE"];
								_chopper2 setDir 134;
								aircraftArray pushBack _chopper2;
								
								_chopper3 = createVehicle ["CUP_B_C130J_USMC", _condorParking3, [], 0, "CAN_COLLIDE"];
								_chopper3 setDir 134;
								aircraftArray pushBack _chopper3;
								
								_dz = ["1","2","3"] call BIS_fnc_selectRandom;
								
								switch (_dz) do
								{
									case "1":
									{
										_LZMark = createMarker ["DZ", [20550.61,8248.738]];
										_LZMark setMarkerShape "RECTANGLE";
										_LZMark setMarkerSize [500,125];
										_LZMark setMarkerBrush "Solid";
										_LZMark setMarkerColor "ColorBlue";
										markerArray pushBack _LZMark;
										
										_LZMark2 = createMarker ["RedLight", [21562.7,8248.738]];
										_LZMark2 setMarkerShape "ICON";
										_LZMark2 setMarkerType "hd_dot";
										_LZMark2 setMarkerColor "ColorRed";
										_LZMark2 setMarkerText "Red Light";
										markerArray pushBack _LZMark2;
										
										_LZMark3 = createMarker ["GreenLight", [19561.7,8248.738]];
										_LZMark3 setMarkerShape "ICON";
										_LZMark3 setMarkerType "hd_dot";
										_LZMark3 setMarkerColor "ColorGreen";
										_LZMark3 setMarkerText "Green Light";
										markerArray pushBack _LZMark3;
									};
									case "2":
									{
										_LZMark = createMarker ["DZ", [26614.7,24067.2]];
										_LZMark setMarkerShape "RECTANGLE";
										_LZMark setMarkerSize [500,125];
										_LZMark setMarkerBrush "Solid";
										_LZMark setMarkerColor "ColorBlue";
										_LZMark setMarkerDir 310.475;
										markerArray pushBack _LZMark;
										
										_LZMark2 = createMarker ["RedLight", [27246.6,24833.1]];
										_LZMark2 setMarkerShape "ICON";
										_LZMark2 setMarkerType "hd_dot";
										_LZMark2 setMarkerColor "ColorRed";
										_LZMark2 setMarkerText "Red Light";
										markerArray pushBack _LZMark2;
										
										_LZMark3 = createMarker ["GreenLight", [25966.2,23320.7]];
										_LZMark3 setMarkerShape "ICON";
										_LZMark3 setMarkerType "hd_dot";
										_LZMark3 setMarkerColor "ColorGreen";
										_LZMark3 setMarkerText "Green Light";
										markerArray pushBack _LZMark3;
									};
									case "3":
									{
										_LZMark = createMarker ["DZ", [5914.52,15037.1]];
										_LZMark setMarkerShape "RECTANGLE";
										_LZMark setMarkerSize [500,125];
										_LZMark setMarkerBrush "Solid";
										_LZMark setMarkerColor "ColorBlue";
										_LZMark setMarkerDir 144.314;
										markerArray pushBack _LZMark;
										
										_LZMark2 = createMarker ["RedLight", [5117.79,14444.7]];
										_LZMark2 setMarkerShape "ICON";
										_LZMark2 setMarkerType "hd_dot";
										_LZMark2 setMarkerColor "ColorRed";
										_LZMark2 setMarkerText "Red Light";
										markerArray pushBack _LZMark2;
										
										_LZMark3 = createMarker ["GreenLight", [6722.77,15606.9]];
										_LZMark3 setMarkerShape "ICON";
										_LZMark3 setMarkerType "hd_dot";
										_LZMark3 setMarkerColor "ColorGreen";
										_LZMark3 setMarkerText "Green Light";
										markerArray pushBack _LZMark3;
									};
								};
							};
							default
							{
								hint "Code Break in rav1 _side west/_paramWest 1/callsign condor/exercise sub switch";
							};
						};
					};
					case "Dragon":
					{
						// Target Type Array
						_TGTType = ["O_Truck_02_Ammo_F","O_Truck_02_fuel_F","O_Truck_02_medical_F","O_Truck_02_box_F","O_Truck_02_transport_F","O_Truck_02_covered_F","O_MRAP_02_F","O_MRAP_02_gmg_F","O_MRAP_02_hmg_F","O_LSV_02_armed_F","O_LSV_02_unarmed_F","O_Truck_03_ammo_F","O_Truck_03_device_F","O_Truck_03_fuel_F","O_Truck_03_medical_F","O_Truck_03_repair_F","O_Truck_03_transport_F","O_Truck_03_covered_F"];
						// Target Pos Array
						_TGTPos = [_mortarTGTpos1,_mortarTGTpos2,_mortarTGTpos3,_mortarTGTpos4,_mortarTGTpos5];
						// Spawn Targets
						{
							_TGT = _TGTType call BIS_fnc_selectRandom;
							_chopper1 = createVehicle [_TGT, _x, [], 0, "CAN_COLLIDE"];
							_chopper1 setDir 270;
							targetArray pushBack _chopper1;
						} foreach _TGTPos;
						_chopper2 = createVehicle ["B_Mortar_01_F", _mortarTGTpos6, [], 0, "CAN_COLLIDE"];
						aircraftArray pushBack _chopper2;
					};
					default
					{
						hint "Code Break in rav1 _side west/_paramWest 5/callsign sub switch";
					};
				};
			};
			default
			{
				hint "Code Break in rav1 _side west/_paramWest sub switch";
			};
		};
	};
	case EAST:
	{
		// switch (faction)
		switch (_paramEast) do
		{
			case 1: // CSAT
			{
				// detect callsign and exercise
				switch (exerciseCallsign) do
				{
					case "Raven":
					{
						switch (exerciseNumber) do
						{
							case "0":
							{
								// spawn aircraft
								_chopper1 = createVehicle ["O_Heli_Light_02_unarmed_F", _parkingPos1a, [], 0, "CAN_COLLIDE"];
								_chopper1 setDir 310;
								aircraftArray pushBack _chopper1;
								
								_chopper2 = createVehicle ["O_Heli_Light_02_unarmed_F", _parkingPos3a, [], 0, "CAN_COLLIDE"];
								_chopper2 setDir 310;
								aircraftArray pushBack _chopper2;
								
								_chopper3 = createVehicle ["O_Heli_Light_02_unarmed_F", _parkingPos2, [], 0, "CAN_COLLIDE"];
								_chopper3 setDir 310;
								aircraftArray pushBack _chopper3;
								
								_chopper4 = createVehicle ["O_Heli_Light_02_unarmed_F", _parkingPos5, [], 0, "CAN_COLLIDE"];
								_chopper4 setDir 310;
								aircraftArray pushBack _chopper4;
								
								_chopper5 = createVehicle ["O_Heli_Light_02_unarmed_F", _parkingPos4a, [], 0, "CAN_COLLIDE"];
								_chopper5 setDir 310;
								aircraftArray pushBack _chopper5;
								
								_chopper6 = createVehicle ["O_Heli_Light_02_unarmed_F", _parkingPos6a, [], 0, "CAN_COLLIDE"];
								_chopper6 setDir 310;
								aircraftArray pushBack _chopper6;
	
								[[[_side], {_this execVM "Scripts\SoloLZGenerator\initSolo.sqf"}], "BIS_FNC_SPAWN", false] call BIS_FNC_MP;
								
							};
							case "1":
							{
								// spawn aircraft
								_chopper1 = createVehicle ["O_Heli_Light_02_unarmed_F", _parkingPos1, [], 0, "CAN_COLLIDE"];
								_chopper1 setDir 310;
								aircraftArray pushBack _chopper1;
								
								_chopper2 = createVehicle ["O_Heli_Light_02_unarmed_F", _parkingPos2, [], 0, "CAN_COLLIDE"];
								_chopper2 setDir 310;
								aircraftArray pushBack _chopper2;
								
								_chopper3 = createVehicle ["O_Heli_Light_02_unarmed_F", _parkingPos3, [], 0, "CAN_COLLIDE"];
								_chopper3 setDir 310;
								aircraftArray pushBack _chopper3;
								
								_chopper4 = createVehicle ["O_Heli_Light_02_unarmed_F", _parkingPos4, [], 0, "CAN_COLLIDE"];
								_chopper4 setDir 310;
								aircraftArray pushBack _chopper4;
								
								_chopper5 = createVehicle ["O_Heli_Light_02_unarmed_F", _parkingPos5, [], 0, "CAN_COLLIDE"];
								_chopper5 setDir 310;
								aircraftArray pushBack _chopper5;
								
								_chopper6 = createVehicle ["O_Heli_Light_02_unarmed_F", _parkingPos6, [], 0, "CAN_COLLIDE"];
								_chopper6 setDir 310;
								aircraftArray pushBack _chopper6;
	
								// Replacement code from HeliPractice - leads to automated single flight
								_x = 0;
								while {(_x < 86)} do
								{
									// Generate HLS Pool
									_lz = missionNamespace getVariable ("lz" + format["%1", _x + 1]);
									lzList = lzList + [_lz];
									_x = _x + 1;
									
								};
								
								// Generate HLS for this exercise instance
								_x = 0;
								while {(_x < 6)} do
								{
									_hls = selectRandom lzList;
									lzList = lzList - [_hls];
									_LZMark = createMarker ["HLS" + format["%1",_x], getPos _hls];
									_LZMark setMarkerShape "ICON";
									_LZMark setMarkerType "mil_start";
									_LZMark setMarkerText "LZ";
									markerArray pushBack _LZMark;
									_x = _x + 1;
									
								};
							};
							case "2":
							{
								// spawn aircraft
								_chopper1 = createVehicle ["O_Heli_Light_02_unarmed_F", _parkingPos1, [], 0, "CAN_COLLIDE"];
								_chopper1 setDir 310;
								aircraftArray pushBack _chopper1;
								
								_chopper2 = createVehicle ["O_Heli_Light_02_unarmed_F", _parkingPos2, [], 0, "CAN_COLLIDE"];
								_chopper2 setDir 310;
								aircraftArray pushBack _chopper2;
								
								_chopper3 = createVehicle ["O_Heli_Light_02_unarmed_F", _parkingPos3, [], 0, "CAN_COLLIDE"];
								_chopper3 setDir 310;
								aircraftArray pushBack _chopper3;
								
								_chopper4 = createVehicle ["O_Heli_Light_02_unarmed_F", _parkingPos4, [], 0, "CAN_COLLIDE"];
								_chopper4 setDir 310;
								aircraftArray pushBack _chopper4;
								
								_chopper5 = createVehicle ["O_Heli_Light_02_unarmed_F", _parkingPos5, [], 0, "CAN_COLLIDE"];
								_chopper5 setDir 310;
								aircraftArray pushBack _chopper5;
								
								_chopper6 = createVehicle ["O_Heli_Light_02_unarmed_F", _parkingPos6, [], 0, "CAN_COLLIDE"];
								_chopper6 setDir 310;
								aircraftArray pushBack _chopper6;
	
								// Replacement code from HeliPractice - leads to automated single flight
								_x = 97;
								while {(_x < 105)} do
								{
									// Generate HLS Pool
									_lz = missionNamespace getVariable ("lz" + format["%1", _x + 1]);
									lzList = lzList + [_lz];
									_x = _x + 1;
									
								};
								
								// Generate HLS for this exercise instance
								_x = 0;
								while {(_x < 6)} do
								{
									_hls = selectRandom lzList;
									lzList = lzList - [_hls];
									_LZMark = createMarker ["HLS" + format["%1",_x], getPos _hls];
									_LZMark setMarkerShape "ICON";
									_LZMark setMarkerType "mil_start";
									_LZMark setMarkerText "LZ";
									markerArray pushBack _LZMark;
									_x = _x + 1;
									
								};
							};
							case "3":
							{
								// spawn aircraft
								_chopper1 = createVehicle ["O_Heli_Light_02_unarmed_F", _parkingPos1, [], 0, "CAN_COLLIDE"];
								_chopper1 setDir 310;
								aircraftArray pushBack _chopper1;
								
								_chopper2 = createVehicle ["O_Heli_Light_02_unarmed_F", _parkingPos2, [], 0, "CAN_COLLIDE"];
								_chopper2 setDir 310;
								aircraftArray pushBack _chopper2;
								
								_chopper3 = createVehicle ["O_Heli_Light_02_unarmed_F", _parkingPos3, [], 0, "CAN_COLLIDE"];
								_chopper3 setDir 310;
								aircraftArray pushBack _chopper3;
								
								_chopper4 = createVehicle ["O_Heli_Light_02_unarmed_F", _parkingPos4, [], 0, "CAN_COLLIDE"];
								_chopper4 setDir 310;
								aircraftArray pushBack _chopper4;
								
								_chopper5 = createVehicle ["O_Heli_Light_02_unarmed_F", _parkingPos5, [], 0, "CAN_COLLIDE"];
								_chopper5 setDir 310;
								aircraftArray pushBack _chopper5;
								
								_chopper6 = createVehicle ["O_Heli_Light_02_unarmed_F", _parkingPos6, [], 0, "CAN_COLLIDE"];
								_chopper6 setDir 310;
								aircraftArray pushBack _chopper6;
	
								// spawn cars with actions added to teleport from location to location eventually returning to start
								_car0 = createVehicle ["O_MRAP_02_F", _casevacPos0, [], 0, "CAN_COLLIDE"];
								_car0 setDir 135;
								_car0 setVehicleVarName "Car0";
								_car0 addAction ["<t color='#FFFF00'>Teleport to next CCP</t>","[player, 'casevac1'] call GOL_fnc_Teleport;"];
								[_car0,["med_box","east"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _car0;
								
								_car1 = createVehicle ["O_MRAP_02_F", _casevacPos1, [], 0, "CAN_COLLIDE"];
								_car1 setDir 290;
								_car1 setVehicleVarName "Car1";
								_car1 addAction ["<t color='#FFFF00'>Teleport to next CCP</t>","[player, 'casevac2'] call GOL_fnc_Teleport;"];
								[_car1,["med_box","east"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _car1;
								
								_car2 = createVehicle ["O_MRAP_02_F", _casevacPos2, [], 0, "CAN_COLLIDE"];
								_car2 setDir 338;
								_car2 setVehicleVarName "Car2";
								_car2 addAction ["<t color='#FFFF00'>Teleport to next CCP</t>","[player, 'casevac3'] call GOL_fnc_Teleport;"];
								[_car2,["med_box","east"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _car2;
								
								_car3 = createVehicle ["O_MRAP_02_F", _casevacPos3, [], 0, "CAN_COLLIDE"];
								_car3 setDir 0;
								_car3 setVehicleVarName "Car3";
								_car3 addAction ["<t color='#FFFF00'>Teleport to next CCP</t>","[player, 'casevac4'] call GOL_fnc_Teleport;"];
								[_car3,["med_box","east"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _car3;
								
								_car4 = createVehicle ["O_MRAP_02_F", _casevacPos4, [], 0, "CAN_COLLIDE"];
								_car4 setDir 39;
								_car4 setVehicleVarName "Car4";
								_car4 addAction ["<t color='#FFFF00'>Teleport to next CCP</t>","[player, 'casevac5'] call GOL_fnc_Teleport;"];
								[_car4,["med_box","east"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _car4;
								
								_car5 = createVehicle ["O_MRAP_02_F", _casevacPos5, [], 0, "CAN_COLLIDE"];
								_car5 setDir 178;
								_car5 setVehicleVarName "Car5";
								_car5 addAction ["<t color='#FFFF00'>Teleport to next CCP</t>","[player, 'casevac6'] call GOL_fnc_Teleport;"];
								[_car5,["med_box","east"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _car5;
								
								_car6 = createVehicle ["O_MRAP_02_F", _casevacPos6, [], 0, "CAN_COLLIDE"];
								_car6 setDir 69;
								_car6 setVehicleVarName "Car6";
								_car6 addAction ["<t color='#FFFF00'>Teleport to next CCP</t>","[player, 'casevac7'] call GOL_fnc_Teleport;"];
								[_car6,["med_box","east"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _car6;
								
								_car7 = createVehicle ["O_MRAP_02_F", _casevacPos7, [], 0, "CAN_COLLIDE"];
								_car7 setDir 78;
								_car7 setVehicleVarName "Car7";
								_car7 addAction ["<t color='#FFFF00'>Return To Start</t>","[player, 'casevac0'] call GOL_fnc_Teleport;"];
								[_car7,["med_box","east"],[false,true,true]] call GOL_Fnc_GearCargo;
								aircraftArray pushBack _car7;
								
							};
							default
							{
								hint "Code Break in rav1 _side east/_paramEast 1/callsign raven/exercise sub switch";
							};
						};
					};
					case "Giant":
					{
						switch (exerciseNumber) do
						{
							case "1":
							{
								// spawn aircraft
								_chopper1 = createVehicle ["O_Heli_Transport_04_covered_F", _parkingPos1a, [], 0, "CAN_COLLIDE"];
								_chopper1 setDir 310;
								aircraftArray pushBack _chopper1;
								
								_chopper2 = createVehicle ["O_Heli_Transport_04_covered_F", _parkingPos3a, [], 0, "CAN_COLLIDE"];
								_chopper2 setDir 310;
								aircraftArray pushBack _chopper2;
								
								_chopper3 = createVehicle ["O_Heli_Transport_04_covered_F", _parkingPos2, [], 0, "CAN_COLLIDE"];
								_chopper3 setDir 310;
								aircraftArray pushBack _chopper3;
								
								_chopper4 = createVehicle ["O_Heli_Transport_04_covered_F", _parkingPos5, [], 0, "CAN_COLLIDE"];
								_chopper4 setDir 310;
								aircraftArray pushBack _chopper4;
								
								_chopper5 = createVehicle ["O_Heli_Transport_04_covered_F", _parkingPos4a, [], 0, "CAN_COLLIDE"];
								_chopper5 setDir 310;
								aircraftArray pushBack _chopper5;
								
								_chopper6 = createVehicle ["O_Heli_Transport_04_covered_F", _parkingPos6a, [], 0, "CAN_COLLIDE"];
								_chopper6 setDir 310;
								aircraftArray pushBack _chopper6;
	
								// Replacement code from HeliPractice - leads to automated single flight
								_x = 86;
								while {(_x < 97)} do
								{
									// Generate HLS Pool
									_lz = missionNamespace getVariable ("lz" + format["%1", _x + 1]);
									lzList = lzList + [_lz];
									_x = _x + 1;
									
								};
								
								// Generate HLS for this exercise instance
								_x = 0;
								while {(_x < 6)} do
								{
									_hls = selectRandom lzList;
									lzList = lzList - [_hls];
									_LZMark = createMarker ["HLS" + format["%1",_x], getPos _hls];
									_LZMark setMarkerShape "ICON";
									_LZMark setMarkerType "mil_start";
									_LZMark setMarkerText "LZ";
									markerArray pushBack _LZMark;
									_x = _x + 1;
									
								};
							};
							case "2":
							{
								// spawn aircraft
								_chopper1 = createVehicle ["O_Heli_Transport_04_F", _parkingPos1a, [], 0, "CAN_COLLIDE"];
								_chopper1 setDir 310;
								aircraftArray pushBack _chopper1;
								
								_chopper2 = createVehicle ["O_Heli_Transport_04_F", _parkingPos3a, [], 0, "CAN_COLLIDE"];
								_chopper2 setDir 310;
								aircraftArray pushBack _chopper2;
								
								_chopper3 = createVehicle ["O_Heli_Transport_04_F", _parkingPos2, [], 0, "CAN_COLLIDE"];
								_chopper3 setDir 310;
								aircraftArray pushBack _chopper3;
								
								_chopper4 = createVehicle ["O_Heli_Transport_04_F", _parkingPos5, [], 0, "CAN_COLLIDE"];
								_chopper4 setDir 310;
								aircraftArray pushBack _chopper4;
								
								_chopper5 = createVehicle ["O_Heli_Transport_04_F", _parkingPos4a, [], 0, "CAN_COLLIDE"];
								_chopper5 setDir 310;
								aircraftArray pushBack _chopper5;
								
								_chopper6 = createVehicle ["O_Heli_Transport_04_F", _parkingPos6a, [], 0, "CAN_COLLIDE"];
								_chopper6 setDir 310;
								aircraftArray pushBack _chopper6;
								
								_crate1 = createVehicle ["B_CargoNet_01_ammo_F", _cratePos1, [], 0, "CAN_COLLIDE"];
								_crate1 setDir 310;
								[_crate1,["big_box","east"],[true,true]] call GOL_Fnc_GearHandler;
								supplyArray pushBack _crate1;
								
								_crate2 = createVehicle ["B_CargoNet_01_ammo_F", _cratePos2, [], 0, "CAN_COLLIDE"];
								_crate2 setDir 310;
								[_crate2,["big_box","east"],[true,true]] call GOL_Fnc_GearHandler;
								supplyArray pushBack _crate2;
								
								_crate3 = createVehicle ["B_CargoNet_01_ammo_F", _cratePos3, [], 0, "CAN_COLLIDE"];
								_crate3 setDir 310;
								[_crate3,["big_box","east"],[true,true]] call GOL_Fnc_GearHandler;
								supplyArray pushBack _crate3;
								
								_crate4 = createVehicle ["B_CargoNet_01_ammo_F", _cratePos4, [], 0, "CAN_COLLIDE"];
								_crate4 setDir 310;
								[_crate4,["big_box","east"],[true,true]] call GOL_Fnc_GearHandler;
								supplyArray pushBack _crate4;
								
								_crate5 = createVehicle ["B_CargoNet_01_ammo_F", _cratePos5, [], 0, "CAN_COLLIDE"];
								_crate5 setDir 310;
								[_crate5,["big_box","east"],[true,true]] call GOL_Fnc_GearHandler;
								supplyArray pushBack _crate5;
								
								_crate6 = createVehicle ["B_CargoNet_01_ammo_F", _cratePos6, [], 0, "CAN_COLLIDE"];
								_crate6 setDir 310;
								[_crate6,["big_box","east"],[true,true]] call GOL_Fnc_GearHandler;
								supplyArray pushBack _crate6;
								
								_crate7 = createVehicle ["B_CargoNet_01_ammo_F", _cratePos7, [], 0, "CAN_COLLIDE"];
								_crate7 setDir 310;
								[_crate7,["big_box","east"],[true,true]] call GOL_Fnc_GearHandler;
								supplyArray pushBack _crate7;
								
								{
									_LZMark = createMarker ["Crate" + format["%1",_x], getPos _x];
									_LZMark setMarkerShape "ICON";
									_LZMark setMarkerType "mil_destroy";
									_LZMark setMarkerText "Crate";
									markerArray pushBack _LZMark;
								} foreach supplyArray;
	
								// Replacement code from HeliPractice - leads to automated single flight
								_x = 97;
								while {(_x < 105)} do
								{
									// Generate HLS Pool
									_lz = missionNamespace getVariable ("lz" + format["%1", _x + 1]);
									lzList = lzList + [_lz];
									_x = _x + 1;
									
								};
								
								// Generate HLS for this exercise instance
								_x = 0;
								while {(_x < 6)} do
								{
									_hls = selectRandom lzList;
									lzList = lzList - [_hls];
									_LZMark = createMarker ["HLS" + format["%1",_x], getPos _hls];
									_LZMark setMarkerShape "ICON";
									_LZMark setMarkerType "mil_start";
									_LZMark setMarkerText "LZ";
									markerArray pushBack _LZMark;
									_x = _x + 1;
									
								};
							};
							default
							{
								hint "Code Break in rav1 _side east/_paramEast 1/callsign giant/exercise sub switch";
							};
						};
					};
					case "Condor":
					{
						switch (exerciseNumber) do
						{
							case "1":
							{
								// spawn aircraft
								_chopper1 = createVehicle ["CUP_B_C130J_USMC", _condorParking1, [], 0, "CAN_COLLIDE"];
								_chopper1 setDir 134;
								aircraftArray pushBack _chopper1;
								
								_chopper2 = createVehicle ["CUP_B_C130J_USMC", _condorParking2, [], 0, "CAN_COLLIDE"];
								_chopper2 setDir 134;
								aircraftArray pushBack _chopper2;
								
								_chopper3 = createVehicle ["CUP_B_C130J_USMC", _condorParking3, [], 0, "CAN_COLLIDE"];
								_chopper3 setDir 134;
								aircraftArray pushBack _chopper3;
								
								_dz = ["1","2","3"] call BIS_fnc_selectRandom;
								
								switch (_dz) do
								{
									case "1":
									{
										_LZMark = createMarker ["DZ", [20550.61,8248.738]];
										_LZMark setMarkerShape "RECTANGLE";
										_LZMark setMarkerSize [2000,500];
										_LZMark setMarkerBrush "Solid";
										_LZMark setMarkerColor "ColorBlue";
										markerArray pushBack _LZMark;
										
										_LZMark2 = createMarker ["RedLight", [21562.7,8248.738]];
										_LZMark2 setMarkerShape "ICON";
										_LZMark2 setMarkerType "hd_dot";
										_LZMark2 setMarkerColor "ColorRed";
										_LZMark2 setMarkerText "Red Light";
										markerArray pushBack _LZMark2;
										
										_LZMark3 = createMarker ["GreenLight", [19561.7,8248.738]];
										_LZMark3 setMarkerShape "ICON";
										_LZMark3 setMarkerType "hd_dot";
										_LZMark3 setMarkerColor "ColorGreen";
										_LZMark3 setMarkerText "Green Light";
										markerArray pushBack _LZMark3;
									};
									case "2":
									{
										_LZMark = createMarker ["DZ", [26614.7,24067.2]];
										_LZMark setMarkerShape "RECTANGLE";
										_LZMark setMarkerSize [2000,500];
										_LZMark setMarkerBrush "Solid";
										_LZMark setMarkerColor "ColorBlue";
										_LZMark setMarkerDir 310.475;
										markerArray pushBack _LZMark;
										
										_LZMark2 = createMarker ["RedLight", [27246.6,24833.1]];
										_LZMark2 setMarkerShape "ICON";
										_LZMark2 setMarkerType "hd_dot";
										_LZMark2 setMarkerColor "ColorRed";
										_LZMark2 setMarkerText "Red Light";
										markerArray pushBack _LZMark2;
										
										_LZMark3 = createMarker ["GreenLight", [25966.2,23320.7]];
										_LZMark3 setMarkerShape "ICON";
										_LZMark3 setMarkerType "hd_dot";
										_LZMark3 setMarkerColor "ColorGreen";
										_LZMark3 setMarkerText "Green Light";
										markerArray pushBack _LZMark3;
									};
									case "3":
									{
										_LZMark = createMarker ["DZ", [5914.52,15037.1]];
										_LZMark setMarkerShape "RECTANGLE";
										_LZMark setMarkerSize [2000,500];
										_LZMark setMarkerBrush "Solid";
										_LZMark setMarkerColor "ColorBlue";
										_LZMark setMarkerDir 144.314;
										markerArray pushBack _LZMark;
										
										_LZMark2 = createMarker ["RedLight", [5117.79,14444.7]];
										_LZMark2 setMarkerShape "ICON";
										_LZMark2 setMarkerType "hd_dot";
										_LZMark2 setMarkerColor "ColorRed";
										_LZMark2 setMarkerText "Red Light";
										markerArray pushBack _LZMark2;
										
										_LZMark3 = createMarker ["GreenLight", [6722.77,15606.9]];
										_LZMark3 setMarkerShape "ICON";
										_LZMark3 setMarkerType "hd_dot";
										_LZMark3 setMarkerColor "ColorGreen";
										_LZMark3 setMarkerText "Green Light";
										markerArray pushBack _LZMark3;
									};
								};
							};
							default
							{
								hint "Code Break in rav1 _side west/_paramWest 1/callsign condor/exercise sub switch";
							};
						};
					};
					case "Dragon":
					{
						// Target Type Array
						_TGTType = ["B_Truck_01_mover_F","B_Truck_01_ammo_F","B_Truck_01_box_F","B_Truck_01_fuel_F","B_Truck_01_medical_F","B_Truck_01_Repair_F","B_Truck_01_transport_F","B_Truck_01_covered_F","B_MRAP_01_F","B_MRAP_01_gmg_F","B_MRAP_01_hmg_F","B_LSV_01_armed_F","B_LSV_01_unarmed_F"];
						// Target Pos Array
						_TGTPos = [_mortarTGTpos1,_mortarTGTpos2,_mortarTGTpos3,_mortarTGTpos4,_mortarTGTpos5];
						// Spawn Targets
						{
							_TGT = _TGTType call BIS_fnc_selectRandom;
							_chopper1 = createVehicle [_TGT, _x, [], 0, "CAN_COLLIDE"];
							_chopper1 setDir 270;
							targetArray pushBack _chopper1;
						} foreach _TGTPos;
						_chopper2 = createVehicle ["B_Mortar_01_F", _mortarTGTpos6, [], 0, "CAN_COLLIDE"];
						aircraftArray pushBack _chopper2;
					};
					default
					{
						hint "Code Break in rav1 _side east/_paramEast 1/callsign sub switch";
					};
				};
			};
			default
			{
				hint "Code Break in rav1 _side east/_paramEast sub switch";
			};
		};
	};
	default
	{
		hint "Code Break in rav1 _side Switch/Case";
	};
};

// Everything is finished, add the actions back
LaptopJ1 addAction ["<t color='#FF0000'>===========================</t>","",nil,1,false,false,"","((_target distance _this) < 7) && !(vehicle player != player)"];
LaptopJ1 addAction ["<t color='#FFFF00'>Raven Normal Ops</t>","Scripts\fncMPInterface.sqf",["rav1"],1,false,false,"","((_target distance _this) < 7) && !(vehicle player != player)"];
LaptopJ1 addAction ["<t color='#FF0000'>===========================</t>","",nil,1,false,false,"","((_target distance _this) < 7) && !(vehicle player != player)"];
LaptopJ1 addAction ["<t color='#FFFF00'>Raven Urban Ops</t>","Scripts\fncMPInterface.sqf",["rav2"],1,false,false,"","((_target distance _this) < 7) && !(vehicle player != player)"];
LaptopJ1 addAction ["<t color='#FF0000'>===========================</t>","",nil,1,false,false,"","((_target distance _this) < 7) && !(vehicle player != player)"];
LaptopJ1 addAction ["<t color='#FFFF00'>Raven CASEVAC Ops</t>","Scripts\fncMPInterface.sqf",["rav3"],1,false,false,"","((_target distance _this) < 7) && !(vehicle player != player)"];
LaptopJ1 addAction ["<t color='#FF0000'>===========================</t>","",nil,1,false,false,"","((_target distance _this) < 7) && !(vehicle player != player)"];
LaptopJ1 addAction ["<t color='#FFFF00'>Giant Platoon Insertion Ops</t>","Scripts\fncMPInterface.sqf",["gia1"],1,false,false,"","((_target distance _this) < 7) && !(vehicle player != player)"];
LaptopJ1 addAction ["<t color='#FF0000'>===========================</t>","",nil,1,false,false,"","((_target distance _this) < 7) && !(vehicle player != player)"];
LaptopJ1 addAction ["<t color='#FFFF00'>Giant Equipment Insertion Ops</t>","Scripts\fncMPInterface.sqf",["gia2"],1,false,false,"","((_target distance _this) < 7) && !(vehicle player != player)"];
LaptopJ1 addAction ["<t color='#FF0000'>===========================</t>","",nil,1,false,false,"","((_target distance _this) < 7) && !(vehicle player != player)"];
LaptopJ1 addAction ["<t color='#FFFF00'>Condor DZ Procedures</t>","Scripts\fncMPInterface.sqf",["con1"],1,false,false,"","((_target distance _this) < 7) && !(vehicle player != player)"];
