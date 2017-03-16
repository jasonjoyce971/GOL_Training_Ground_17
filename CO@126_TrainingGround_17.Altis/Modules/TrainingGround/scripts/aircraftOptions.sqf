/*
 * Module Script that confirms the exercise requested and spawns the relevant aircraft
 * 
 */
 
 #include "..\scriptComponent.hpp"
 
 // Store Incoming Data
 _caller = _this select 1;
 _selection = _this select 3 select 0;
 
 // Main Switch
 switch (_selection) do
 {
	case 1: // Angel
	{
		removeAllActions Laptop_1;
		
		Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FFFF00'>BACK</t>","Modules\TrainingGround\scripts\aircraftSpawner.sqf",["Angel",0],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FFFF00'>AH-6</t>","Modules\TrainingGround\scripts\aircraftSpawner.sqf",["Angel",1],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FFFF00'>AH-8</t>","Modules\TrainingGround\scripts\aircraftSpawner.sqf",["Angel",2],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FFFF00'>AW-159</t>","Modules\TrainingGround\scripts\aircraftSpawner.sqf",["Angel",3],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FFFF00'>Ka-50</t>","Modules\TrainingGround\scripts\aircraftSpawner.sqf",["Angel",4],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FFFF00'>Ka-52</t>","Modules\TrainingGround\scripts\aircraftSpawner.sqf",["Angel",5],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FFFF00'>Ka-60</t>","Modules\TrainingGround\scripts\aircraftSpawner.sqf",["Angel",6],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FFFF00'>Mi-8</t>","Modules\TrainingGround\scripts\aircraftSpawner.sqf",["Angel",7],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FFFF00'>Mi-17</t>","Modules\TrainingGround\scripts\aircraftSpawner.sqf",["Angel",8],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FFFF00'>UH-1Y</t>","Modules\TrainingGround\scripts\aircraftSpawner.sqf",["Angel",9],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
	};
	case 2: // Zeus
	{
		removeAllActions Laptop_1;
		
		Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FFFF00'>BACK</t>","Modules\TrainingGround\scripts\aircraftSpawner.sqf",["Zeus",0],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FFFF00'>AH-1</t>","Modules\TrainingGround\scripts\aircraftSpawner.sqf",["Zeus",1],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FFFF00'>AH-1Z</t>","Modules\TrainingGround\scripts\aircraftSpawner.sqf",["Zeus",2],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FFFF00'>AH-64</t>","Modules\TrainingGround\scripts\aircraftSpawner.sqf",["Zeus",3],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FFFF00'>Mi-24D</t>","Modules\TrainingGround\scripts\aircraftSpawner.sqf",["Zeus",4],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FFFF00'>Mi-24P</t>","Modules\TrainingGround\scripts\aircraftSpawner.sqf",["Zeus",5],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FFFF00'>Mi-24V</t>","Modules\TrainingGround\scripts\aircraftSpawner.sqf",["Zeus",6],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FFFF00'>Mi-24III</t>","Modules\TrainingGround\scripts\aircraftSpawner.sqf",["Zeus",7],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FFFF00'>Mi-24IV</t>","Modules\TrainingGround\scripts\aircraftSpawner.sqf",["Zeus",8],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FFFF00'>Mi-35</t>","Modules\TrainingGround\scripts\aircraftSpawner.sqf",["Zeus",9],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FFFF00'>Mi-48</t>","Modules\TrainingGround\scripts\aircraftSpawner.sqf",["Zeus",10],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FFFF00'>RAH-66</t>","Modules\TrainingGround\scripts\aircraftSpawner.sqf",["Zeus",11],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
	};
	case 3: // Phantom
	{
		removeAllActions Laptop_1;
		
		Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FFFF00'>BACK</t>","Modules\TrainingGround\scripts\aircraftSpawner.sqf",["Phantom",0],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FFFF00'>A-10</t>","Modules\TrainingGround\scripts\aircraftSpawner.sqf",["Phantom",1],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FFFF00'>A-143</t>","Modules\TrainingGround\scripts\aircraftSpawner.sqf",["Phantom",2],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FFFF00'>A-164</t>","Modules\TrainingGround\scripts\aircraftSpawner.sqf",["Phantom",3],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FFFF00'>AV-8</t>","Modules\TrainingGround\scripts\aircraftSpawner.sqf",["Phantom",4],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FFFF00'>F-35 (RAF)</t>","Modules\TrainingGround\scripts\aircraftSpawner.sqf",["Phantom",5],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FFFF00'>F-35 (USMC)</t>","Modules\TrainingGround\scripts\aircraftSpawner.sqf",["Phantom",6],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FFFF00'>F/A-18E</t>","Modules\TrainingGround\scripts\aircraftSpawner.sqf",["Phantom",7],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FFFF00'>F/A-18F</t>","Modules\TrainingGround\scripts\aircraftSpawner.sqf",["Phantom",8],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FFFF00'>GR9</t>","Modules\TrainingGround\scripts\aircraftSpawner.sqf",["Phantom",9],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FFFF00'>L-39Z/A</t>","Modules\TrainingGround\scripts\aircraftSpawner.sqf",["Phantom",10],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FFFF00'>Su-25</t>","Modules\TrainingGround\scripts\aircraftSpawner.sqf",["Phantom",11],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FFFF00'>Su-34</t>","Modules\TrainingGround\scripts\aircraftSpawner.sqf",["Phantom",12],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FFFF00'>YAK-131</t>","Modules\TrainingGround\scripts\aircraftSpawner.sqf",["Phantom",13],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
	};
	case 4: // Banshee
	{
		removeAllActions Laptop_1;
		
		Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FFFF00'>BACK</t>","Modules\TrainingGround\scripts\aircraftSpawner.sqf",["Banshee",0],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FFFF00'>A-143</t>","Modules\TrainingGround\scripts\aircraftSpawner.sqf",["Banshee",1],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FFFF00'>AV-8</t>","Modules\TrainingGround\scripts\aircraftSpawner.sqf",["Banshee",2],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FFFF00'>F-35 (USMC)</t>","Modules\TrainingGround\scripts\aircraftSpawner.sqf",["Banshee",3],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FFFF00'>F/A-18E</t>","Modules\TrainingGround\scripts\aircraftSpawner.sqf",["Banshee",4],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FFFF00'>F/A-18F</t>","Modules\TrainingGround\scripts\aircraftSpawner.sqf",["Banshee",5],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FFFF00'>Su-34</t>","Modules\TrainingGround\scripts\aircraftSpawner.sqf",["Banshee",6],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FFFF00'>YAK-131</t>","Modules\TrainingGround\scripts\aircraftSpawner.sqf",["Banshee",7],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
	};
	case 5: // Spooky
	{
		removeAllActions Laptop_1;
		
		Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FFFF00'>BACK</t>","Modules\TrainingGround\scripts\aircraftSpawner.sqf",["Spooky",0],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FFFF00'>AC-47</t>","Modules\TrainingGround\scripts\aircraftSpawner.sqf",["Spooky",1],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FFFF00'>V-44X</t>","Modules\TrainingGround\scripts\aircraftSpawner.sqf",["Spooky",2],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FFFF00'>Y-32</t>","Modules\TrainingGround\scripts\aircraftSpawner.sqf",["Spooky",3],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
	};
	case 6: // Raven Solo
	{
		removeAllActions Laptop_1;
		
		Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FFFF00'>BACK</t>","Modules\TrainingGround\scripts\aircraftSpawner.sqf",["Raven",0],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FFFF00'>AW-159</t>","Modules\TrainingGround\scripts\aircraftSpawner.sqf",["Raven",1],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FFFF00'>Ka-60</t>","Modules\TrainingGround\scripts\aircraftSpawner.sqf",["Raven",2],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FFFF00'>MH-6</t>","Modules\TrainingGround\scripts\aircraftSpawner.sqf",["Raven",3],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FFFF00'>MH-8</t>","Modules\TrainingGround\scripts\aircraftSpawner.sqf",["Raven",4],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FFFF00'>MH-60</t>","Modules\TrainingGround\scripts\aircraftSpawner.sqf",["Raven",5],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FFFF00'>Mi-8</t>","Modules\TrainingGround\scripts\aircraftSpawner.sqf",["Raven",6],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FFFF00'>Mi-17</t>","Modules\TrainingGround\scripts\aircraftSpawner.sqf",["Raven",7],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FFFF00'>Mi-24</t>","Modules\TrainingGround\scripts\aircraftSpawner.sqf",["Raven",8],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FFFF00'>SA-330</t>","Modules\TrainingGround\scripts\aircraftSpawner.sqf",["Raven",9],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FFFF00'>UH-1Y</t>","Modules\TrainingGround\scripts\aircraftSpawner.sqf",["Raven",10],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FFFF00'>UH-60</t>","Modules\TrainingGround\scripts\aircraftSpawner.sqf",["Raven",11],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FFFF00'>UH-80</t>","Modules\TrainingGround\scripts\aircraftSpawner.sqf",["Raven",12],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
	};
	case 7: // Giant Solo
	{
		removeAllActions Laptop_1;
		
		Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FFFF00'>BACK</t>","Modules\TrainingGround\scripts\aircraftSpawner.sqf",["Giant",0],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FFFF00'>CH-47I</t>","Modules\TrainingGround\scripts\aircraftSpawner.sqf",["Giant",1],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FFFF00'>CH-53</t>","Modules\TrainingGround\scripts\aircraftSpawner.sqf",["Giant",2],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FFFF00'>HC-3</t>","Modules\TrainingGround\scripts\aircraftSpawner.sqf",["Giant",3],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FFFF00'>HC-4</t>","Modules\TrainingGround\scripts\aircraftSpawner.sqf",["Giant",4],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FFFF00'>Mi-8</t>","Modules\TrainingGround\scripts\aircraftSpawner.sqf",["Giant",5],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FFFF00'>Mi-17</t>","Modules\TrainingGround\scripts\aircraftSpawner.sqf",["Giant",6],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FFFF00'>Mi-290</t>","Modules\TrainingGround\scripts\aircraftSpawner.sqf",["Giant",7],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
	};
	case 8: // Condor Solo
	{
		removeAllActions Laptop_1;
		
		Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FFFF00'>BACK</t>","Modules\TrainingGround\scripts\aircraftSpawner.sqf",["Condor",0],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FFFF00'>MV-22</t>","Modules\TrainingGround\scripts\aircraftSpawner.sqf",["Condor",1],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
		//Laptop_1 addAction ["<t color='#FFFF00'>V-44X</t>","Modules\TrainingGround\scripts\aircraftSpawner.sqf",["Condor",2],1,false,false,"",""];
		//Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FFFF00'>Y-32</t>","Modules\TrainingGround\scripts\aircraftSpawner.sqf",["Condor",3],1,false,false,"",""];
		Laptop_1 addAction ["<t color='#FF0000'>===========================</t>","",[],1,false,false,"",""];
	};
	default
	{
		hint "CODE FAIL. aircraftOptions.sqf Main Switch";
	};
 };
 