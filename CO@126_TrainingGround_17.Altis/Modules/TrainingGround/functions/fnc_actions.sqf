/*
 * Module Function that sets up the actions on the training computers
 * 
 */
 
 #include "..\scriptComponent.hpp"
 #define bullShit nil,1,false,false,"",""
 
 // Import Arrays
 _laptopArray = GW_TrainingGround_Laptops;
 _portPoleArray = GW_TrainingGround_portPoles;
 
 // Shared Actions For Laptops
 {
	_x addAction ["<t color='#FF0000'>===========================</t>","",bullShit,5];
	_x addAction ["<t color='#FFFF00'>Reset Training Area","[] call GW_TrainingGround_Fnc_resetTraining;",bullShit,5];
	_x addAction ["<t color='#FF0000'>===========================</t>","",bullShit,5];
 }foreach _laptopArray;
 
 // Teleportation Actions
 {
 
	_pole = _x;
	_importArray = _portPoleArray;
	_popArray = [_x];
	_mainArray = _importArray - _popArray;
 
	{
		_location = _x getVariable "Location";
		_text1 = format ["%1",_location];
		_text2 = format ["Fast Travel to %1", _text1];
		_destination = getPos _x;
		_pole addAction [_text2,{(_this select 1) setposATL (_this select 3)},_destination,1,false,false,"",""];
	}foreach _mainArray;
	
 }foreach _portPoleArray;
 
 // Aircraft Exercise Control Laptop
 Laptop_1 addAction ["<t color='#FFFF00'>Raven Normal Ops Exercise</t>","Modules\TrainingGround\scripts\spawnAircraft.sqf",["Raven",2],1,false,false,"",""];
 Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
 Laptop_1 addAction ["<t color='#FFFF00'>Raven Urban Ops Exercise</t>","Modules\TrainingGround\scripts\spawnAircraft.sqf",["Raven",3],1,false,false,"",""];
 Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
 Laptop_1 addAction ["<t color='#FFFF00'>Raven Special Ops Exercise</t>","Modules\TrainingGround\scripts\spawnAircraft.sqf",["Raven",4],1,false,false,"",""];
 Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
 Laptop_1 addAction ["<t color='#FFFF00'>Raven Air Assault Exercise</t>","Modules\TrainingGround\scripts\spawnAircraft.sqf",["Raven",5],1,false,false,"",""];
 Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
 Laptop_1 addAction ["<t color='#FFFF00'>Giant Insertions Ops Exercise</t>","Modules\TrainingGround\scripts\spawnAircraft.sqf",["Giant",2],1,false,false,"",""];
 Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
 Laptop_1 addAction ["<t color='#FFFF00'>Giant Sling Load Ops Exercise</t>","Modules\TrainingGround\scripts\spawnAircraft.sqf",["Giant",3],1,false,false,"",""];
 Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
 Laptop_1 addAction ["<t color='#FFFF00'>Condor VTOL HLS Exercise</t>","Modules\TrainingGround\scripts\spawnAircraft.sqf",["Condor",2],1,false,false,"",""];
 Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
 Laptop_1 addAction ["<t color='#FFFF00'>Condor Paradrop Exercise</t>","Modules\TrainingGround\scripts\spawnAircraft.sqf",["Condor",3],1,false,false,"",""];
 Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
 Laptop_1 addAction ["<t color='#FF00FF'>Angel Options</t>","Modules\TrainingGround\scripts\aircraftOptions.sqf",[1],1,false,false,"",""];
 Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
 Laptop_1 addAction ["<t color='#FF00FF'>Zeus Options</t>","Modules\TrainingGround\scripts\aircraftOptions.sqf",[2],1,false,false,"",""];
 Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
 Laptop_1 addAction ["<t color='#FF00FF'>Phantom Options</t>","Modules\TrainingGround\scripts\aircraftOptions.sqf",[3],1,false,false,"",""];
 Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
 Laptop_1 addAction ["<t color='#FF00FF'>Banshee Options</t>","Modules\TrainingGround\scripts\aircraftOptions.sqf",[4],1,false,false,"",""];
 Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
 Laptop_1 addAction ["<t color='#FF00FF'>Spooky Options</t>","Modules\TrainingGround\scripts\aircraftOptions.sqf",[5],1,false,false,"",""];
 Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
 Laptop_1 addAction ["<t color='#42c5f4'>Raven Solo HLS Generator</t>","Modules\TrainingGround\scripts\aircraftOptions.sqf",[6],1,false,false,"",""];
 Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
 Laptop_1 addAction ["<t color='#42c5f4'>Giant Solo HLS Generator</t>","Modules\TrainingGround\scripts\aircraftOptions.sqf",[7],1,false,false,"",""];
 Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
 Laptop_1 addAction ["<t color='#42c5f4'>Condor VTOL Solo HLS Generator</t>","Modules\TrainingGround\scripts\aircraftOptions.sqf",[8],1,false,false,"",""];
 Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
 Laptop_1 addAction ["<t color='#FF0000'>SPAWN OPFOR FAST AIR CONTACT</t>","Modules\TrainingGround\scripts\spawnAircraft.sqf",["ACM",1],1,false,false,"",""];
 Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
 Laptop_1 addAction ["<t color='#FF0000'>EMERGENCY PROCEDURE TRAINING</t>","Modules\TrainingGround\scripts\spawnAircraft.sqf",["EP",1],1,false,false,"",""];
 Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
 
 // Medical Exercise Control Laptop
 Laptop_2 addAction ["<t color='#FFFF00'>Generate Casualty</t>","Modules\TrainingGround\scripts\spawnCasualty.sqf",[1],1,false,false,"",""];
 Laptop_2 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
 Laptop_2 addAction ["<t color='#FFFF00'>Generate CASEVAC Practice Scenario</t>","Modules\TrainingGround\scripts\spawnCasualty.sqf",[2],1,false,false,"",""];
 Laptop_2 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
 Laptop_2 addAction ["<t color='#FFFF00'>Generate CASEVAC Live Scenario</t>","Modules\TrainingGround\scripts\spawnCasualty.sqf",[3],1,false,false,"",""];

 // AAC Range Control Laptop
 Laptop_3 addAction ["<t color='#FFFF00'>Rocket/Gunnery Range</t>","Modules\TrainingGround\scripts\spawnAircraft.sqf",["Range",1],1,false,false,"",""];
 Laptop_3 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
 Laptop_3 addAction ["<t color='#FFFF00'>ATGM Range</t>","Modules\TrainingGround\scripts\spawnAircraft.sqf",["Range",2],1,false,false,"",""];
 Laptop_3 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
 Laptop_3 addAction ["<t color='#FFFF00'>Bomb Range</t>","Modules\TrainingGround\scripts\spawnAircraft.sqf",["Range",3],1,false,false,"",""];
 Laptop_3 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
 Laptop_3 addAction ["<t color='#FFFF00'>SEAD Range</t>","Modules\TrainingGround\scripts\spawnAircraft.sqf",["Range",4],1,false,false,"",""];
 Laptop_3 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
 
 // Vehicle Range Control Laptop
 Laptop_4 addAction ["<t color='#FFFF00'>Driving Course</t>","Modules\TrainingGround\scripts\spawnAircraft.sqf",["Vehicle",1],1,false,false,"",""];
 Laptop_4 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
 Laptop_4 addAction ["<t color='#FFFF00'>Weapons Range</t>","Modules\TrainingGround\scripts\spawnAircraft.sqf",["Vehicle",2],1,false,false,"",""];
 
 // Jaeger Range Control Laptop
 Laptop_5 addAction ["<t color='#FFFF00'>Start Marksman Range</t>","Modules\TrainingGround\scripts\spawnAircraft.sqf",["Range",5],1,false,false,"",""];
 