/*
 * Module Function that resets the training area
 * 
 */
 
 #include "..\scriptComponent.hpp"
 
 // Exit all FSMs
 GW_TrainingGround_SoloFSM setFSMVariable ["_resetTrigger", 1];
 GW_TrainingGround_AACFSM setFSMVariable ["_resetTrigger", 1];
 
 // Remove All Actions from Laptops and poles
 {
	removeAllActions _x;
 }foreach GW_TrainingGround_Laptops;
 {
	removeAllActions _x;
 }foreach GW_TrainingGround_portPoles;
 
 // Delete all spawned vehicles
 {
	deleteVehicle _x;
 }foreach GW_TrainingGround_spawnedAssets;
 {
	deleteVehicle _x;
 }foreach GW_TrainingGround_spawnedOPFOR;
 
 // Reset Globals
 GW_TrainingGround_Laptops = [];
 GW_TrainingGround_portPoles = [];
 GW_TrainingGround_SoloBird = 0;
 GW_TrainingGround_SoloFSM = 0;
 GW_TrainingGround_spawnedAssets = [];
 
 // Re-populate Arrays
 [Laptop] call GW_TrainingGround_fnc_detectLaptops;
 [portPole] call GW_TrainingGround_fnc_detectPortFlags;
 
 // Call fnc_Actions to reset the training equipment
 remoteExec ["GW_TrainingGround_fnc_actions"];
 