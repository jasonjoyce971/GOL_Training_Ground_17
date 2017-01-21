execVM "Scripts\AddActions.sqf";

// Vehicle respawn script
if (isServer) then 
{
	[] call compile preProcessFile "vehInitFunctions.sqf";
	nopop = false;
};

// Firing Range cancel variables
FiringRangeCANCEL = False;

// AGAR Course
AGARAudio = True;
AGARHints = True;

// Precompile Functions
createDropoffLZ = compileFinal preProcessfile "Scripts\SoloLZGenerator\createDropoffLZ.sqf";
createPickupLZ = compileFinal preProcessfile "Scripts\SoloLZGenerator\createPickupLZ.sqf";
createSquad = compileFinal preProcessfile "Scripts\SoloLZGenerator\createsquad.sqf";
createEnemySquads = compileFinal preProcessfile "Scripts\SoloLZGenerator\createEnemySquads.sqf";
loadSquad = compileFinal preProcessfile "Scripts\SoloLZGenerator\loadSquad.sqf";
ejectSquad = compileFinal preProcessfile "Scripts\SoloLZGenerator\ejectSquad.sqf";
spawnSmokeBySquad = compileFinal preProcessfile "Scripts\SoloLZGenerator\spawnSmokeBySquad.sqf";
deleteSquads = compileFinal preProcessfile "Scripts\SoloLZGenerator\deleteSquads.sqf";
playerVehicleInList = compileFinal preProcessfile "Scripts\SoloLZGenerator\playerVehicleInList.sqf";
playerVehicleInListBool = compileFinal preProcessfile "Scripts\SoloLZGenerator\playerVehicleInListBool.sqf";
getSideTasks = compileFinal preProcessfile "Scripts\SoloLZGenerator\getSideTasks.sqf";
getSideActiveTasks = compileFinal preProcessfile "Scripts\SoloLZGenerator\getSideActiveTasks.sqf";
isLanded = compileFinal preProcessfile "Scripts\SoloLZGenerator\isLanded.sqf";
selectLZ = compileFinal preProcessfile "Scripts\SoloLZGenerator\selectLZ.sqf";
getAlivePlayers = compileFinal preProcessfile "Scripts\SoloLZGenerator\getAlivePlayers.sqf";
spawnCrewAction = compileFinal preProcessfile "Scripts\SoloLZGenerator\spawnCrewAction.sqf";
spawnPlayerTask = compileFinal preProcessfile "Scripts\SoloLZGenerator\spawnPlayerTask.sqf";
destroyVehicleAction = compileFinal preProcessfile "Scripts\SoloLZGenerator\destroyVehicleAction.sqf";
destroyMainrotorAction = compileFinal preProcessfile "Scripts\SoloLZGenerator\destroyMainrotorAction.sqf";
destroyTailrotorAction = compileFinal preProcessfile "Scripts\SoloLZGenerator\destroyTailrotorAction.sqf";
taskSpawner = compileFinal preProcessfile "Scripts\SoloLZGenerator\taskSpawner.sqf";
xenoRepair = compileFinal preProcessfile "Scripts\SoloLZGenerator\xenoRepair.sqf";
vehicleInit = compileFinal preProcessfile "Scripts\SoloLZGenerator\vehicleInit.sqf";

// Exercise control variables
aircraftArray = [];
targetArray = [];
helperArray = [];
markerArray = [];
lzList = [];
ammoArray = [];
supplyArray = [];
exerciseCallsign = "0";
exerciseNumber = "0";
soloPlay = false;

// Broadcast exercise control variables to clients
publicVariable "aircraftArray";
publicVariable "targetArray";
publicVariable "helperArray";
publicVariable "markerArray";
publicVariable "lzList";
publicVariable "ammoArray";
publicVariable "supplyArray";
publicVariable "exerciseCallsign";
publicVariable "exerciseNumber";
publicVariable "soloPlay";

// Live Feeds
null = [[monitor1],["spotter"]] execVM "LFC\feedInit.sqf";
null = [[monitor2],["spotter2","spotter3"]] execVM "LFC\feedInit.sqf";

// Ranges
//[LaptopJ2,redrange,"Scripts\Popup Targets\Jaeger Ranges.sqf"] Call NEKY_fnc_HandleRange;
//[LaptopJ2,bluerange,"Scripts\Popup Targets\Jaeger Ranges.sqf"] Call NEKY_fnc_HandleRange;

//LaptopJ1 addAction ["<t color='#FF0000'>===========================</t>","",nil,1,false,false,"","((_target distance _this) < 7) && !(vehicle player != player)"];
//LaptopJ1 addAction ["<t color='#FFFF00'>Raven Solo Play</t>","Scripts\fncMPInterface.sqf",["solo"],1,false,false,"","((_target distance _this) < 7) && !(vehicle player != player)"];
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

LaptopJ2 addAction ["<t color='#FFFF00'>Mortar Qualification Course</t>","Scripts\fncMPInterface.sqf",["dragon"],1,false,false,"","((_target distance _this) < 7) && !(vehicle player != player)"];
LaptopJ2 addAction ["<t color='#FF0000'>===========================</t>","",nil,1,false,false,"",""];
LaptopJ2 AddAction ["<t color='#FFFF00'>Red Range Easy</t>",{["EASY",redrange,MarksmanQualification] execVM "Scripts\Popup Targets\Jaeger Ranges.sqf"},nil,1,false,true];
LaptopJ2 addAction ["<t color='#FF0000'>===========================</t>","",nil,1,false,false,"",""];
LaptopJ2 AddAction ["<t color='#FFFF00'>Red Range Medium</t>",{["MEDIUM",redrange,MarksmanQualification] execVM "Scripts\Popup Targets\Jaeger Ranges.sqf"},nil,1,false,true];
LaptopJ2 addAction ["<t color='#FF0000'>===========================</t>","",nil,1,false,false,"",""];
LaptopJ2 AddAction ["<t color='#FFFF00'>Red Range Hard</t>",{["HARD",redrange,MarksmanQualification] execVM "Scripts\Popup Targets\Jaeger Ranges.sqf"},nil,1,false,true];
LaptopJ2 addAction ["<t color='#FF0000'>===========================</t>","",nil,1,false,false,"",""];
LaptopJ2 AddAction ["<t color='#FFFF00'>Red Range Very Hard</t>",{["VERY HARD",redrange,MarksmanQualification] execVM "Scripts\Popup Targets\Jaeger Ranges.sqf"},nil,1,false,true];
LaptopJ2 addAction ["<t color='#FF0000'>===========================</t>","",nil,1,false,false,"",""];
LaptopJ2 AddAction ["<t color='#FFFF00'>Blue Range Easy</t>",{["EASY",bluerange,MarksmanQualification] execVM "Scripts\Popup Targets\Jaeger Ranges.sqf"},nil,1,false,true];
LaptopJ2 addAction ["<t color='#FF0000'>===========================</t>","",nil,1,false,false,"",""];
LaptopJ2 AddAction ["<t color='#FFFF00'>Blue Range Medium</t>",{["MEDIUM",bluerange,MarksmanQualification] execVM "Scripts\Popup Targets\Jaeger Ranges.sqf"},nil,1,false,true];
LaptopJ2 addAction ["<t color='#FF0000'>===========================</t>","",nil,1,false,false,"",""];
LaptopJ2 AddAction ["<t color='#FFFF00'>Blue Range Hard</t>",{["HARD",bluerange,MarksmanQualification] execVM "Scripts\Popup Targets\Jaeger Ranges.sqf"},nil,1,false,true];
LaptopJ2 addAction ["<t color='#FF0000'>===========================</t>","",nil,1,false,false,"",""];
LaptopJ2 AddAction ["<t color='#FFFF00'>Blue Range Very Hard</t>",{["VERY HARD",bluerange,MarksmanQualification] execVM "Scripts\Popup Targets\Jaeger Ranges.sqf"},nil,1,false,true];
