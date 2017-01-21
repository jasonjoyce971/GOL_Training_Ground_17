//	["lane4"] execVM "Scripts\MineCourse\VehicleDemonstrations.sqf";
//	
//	

Private ["_markerMine","_markerMove","_markerCar","_Mine","_Name","_Lane","_Car","_Group","_Driver"];

_Lane = _This select 0;
_Group = CreateGroup West;

Switch _Lane do
{
	Private ["_markerMine","_markerMove","_markerCar","_Mine","_Name"];
	
	case "lane4":
	{
		_markerMine = "mrkmine4";
		_markerMove = "mrkcar1move";
		_markerCar = "mrkcar1";
		_Mine = "SLAMDirectionalMine";
		_Name = "Slam Mine";
	};
	
	case "lane5":
	{
		_markerMine = "mrkmine5";
		_markerMove = "mrkcar2move";
		_markerCar = "mrkcar2";
		_Mine = "ATMine";
		_Name = "AT Mine";
	};
};

Hint _Name;

_Mine = createmine [_Mine,(getmarkerpos _markerMine),[],0];
_Mine setdir 45;

_Car = Createvehicle ["B_MRAP_01_F", getmarkerpos _markerCar,[],0,"CAN_COLLIDE"];
_Car setdir 65;

_Driver = _Group createUnit ["B_Soldier_F", getmarkerpos "vspawn1", [],0,"NONE"];
_Driver setRank "PRIVATE";
_driver assignAsDriver _Car;
[_Driver] orderGetIn true;
_Driver moveinDriver _Car;
_Driver setSkill 0.5;

_Group addwaypoint [getmarkerpos _MarkerMove, 0];
[_Group,1] setwaypointcombatmode "BLUE";
[_Group,1] Setwaypointbehaviour "SAFE";
[_Group,1] setWaypointSpeed "NORMAL";
[_Group,1] setWaypointCompletionRadius 0;
[_Group,1] setWaypointType "MOVE";

Sleep 2;

_Driver setdamage 1;

sleep 5;

if (getdammage _car > 0.1) then {_car SetVelocity [0,0,0];};

sleep 10;

Deletevehicle _Car;
Deletevehicle _Driver;