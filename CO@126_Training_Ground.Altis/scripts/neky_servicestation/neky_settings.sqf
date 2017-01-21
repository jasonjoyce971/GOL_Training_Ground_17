//	
//	
//	

/////////////////////
// Service Station //
/////////////////////
// General
_Radius = 8;								// Area (meters) the SS will scan for vehicles.
_Lights = True;								// Blinking lights on/off. True = on.

// Repair
_InspectionSpeed = 3;						// Time in seconds it takes to inspect each part of the vehicle.
_RepairingSpeed = 0.04;						// Percent of maximum HP (per part) repaired (ground vehicles and heli) per second.														 0 = 0%, 1 = 100%.
_RepairingTrackSpeed = 0.02;				// Percent of maximum HP of left and right Track (per track)(Tanks) repaired per second.				 								 0 = 0%, 1 = 100%.
_RepairingSpeedPlane = 0.05;				// Percent of maximum HP (whole plane since it only has 1 part) repaired (planes) per second.											 0 = 0%, 1 = 100%.
_Refueling = 0.03;							// Percent of maximum fuel refueled per second.																							 0 = 0%, 1 = 100%.

_RemoveWheelSpeed = 5;						// Time in seconds it takes to remove a damaged wheel.
_MountWheelSpeed = 5;						// Time in seconds it takes to mount a new wheel.

_RearmSleep = 25;							// Time in seconds it takes to rearm vehicles (save planes).
_RearmSleepPlane = 50;						// Time in seconds it takes to rearm a plane.

////////////////////////////
// Mobile Service Station //
////////////////////////////
// General
_MRadius = 20;								// Area (meters) the Mobile SS will scan for vehicles.