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
 Laptop_1 addAction ["<t color='#FFFF00'>Raven Solo HLS Generator</t>","Modules\TrainingGround\scripts\spawnAircraft.sqf",["Raven",1],1,false,false,"",""];
 Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
 Laptop_1 addAction ["<t color='#FFFF00'>Raven Normal Ops HLS Generator</t>","Modules\TrainingGround\scripts\spawnAircraft.sqf",["Raven",2],1,false,false,"",""];
 Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
 Laptop_1 addAction ["<t color='#FFFF00'>Raven Urban Ops HLS Generator</t>","Modules\TrainingGround\scripts\spawnAircraft.sqf",["Raven",3],1,false,false,"",""];
 Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
 Laptop_1 addAction ["<t color='#FFFF00'>Raven Special Ops HLS Generator</t>","Modules\TrainingGround\scripts\spawnAircraft.sqf",["Raven",4],1,false,false,"",""];
 Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
 Laptop_1 addAction ["<t color='#FFFF00'>Raven Air Assault HLS Generator</t>","Modules\TrainingGround\scripts\spawnAircraft.sqf",["Raven",5],1,false,false,"",""];
 Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
 