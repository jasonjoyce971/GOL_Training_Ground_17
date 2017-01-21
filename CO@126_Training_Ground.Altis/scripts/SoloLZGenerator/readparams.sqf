//LZ size
lzSize = paramsArray select 8;
publicVariable "lzSize";

//Smoke setting
bSmoke = if ((paramsArray select 9) == 1) then {true} else {false};
publicVariable "bSmoke";

//Hot LZ chance
_hotLZParam = paramsArray select 10;
hotLZChance = if (_hotLZParam > 0) then {_hotLZParam / 100} else {0.0};
publicVariable "hotLZChance";

//Anti air chance
_AAParam = paramsArray select 11;
AAChance = if (_AAParam > 0) then {_AAParam / 100} else {0.0};
publicVariable "AAChance";

lzList = [];
_x = 0;
while {_x < LZCOUNT} do
{
	[lzList, (missionNamespace getVariable (format["lz%1", _x + 1]))] call BIS_fnc_arrayPush;
	_x = _x + 1;
};

LZMinDistace = paramsArray select 12;
publicVariable "LZMinDistace";

squadsLinger = paramsArray select 13;
publicVariable "squadsLinger";

autoSpawnTasks = if ((paramsArray select 14) == 1) then {true} else {false};
publicVariable "autoSpawnTasks";
