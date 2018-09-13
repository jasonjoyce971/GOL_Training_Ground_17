//	["spawn",["waypoints"],"VehicleName"] execVM "Scripts\VehiclePatrol.sqf";
//	
//	
//	
//	
//	Made by NeKo-ArroW

if !(isServer) exitWith {False};

Private ["_NewGrp","_Unit","_Dir","_WPs","_LAV","_SpawnLoc","_Veh","_Index"];

_SpawnLoc = (getMarkerPos ([_This, 0, "", [""]] call BIS_fnc_param));
_WPs = [_This, 1, [""], [[""]]] call BIS_fnc_Param;
_LAV = [_This, 2, "O_MRAP_02_hmg_F", [""]] call BIS_Fnc_Param;

_Veh = CreateVehicle [_LAV, _SpawnLoc, [], 0, "NONE"];
_Dir = [(getpos _Veh), (getmarkerPos (_WPs select 0))] call BIS_fnc_DirTo;
_Veh setDir _Dir;

_NewGrp = createGroup INDEPENDENT;
_Unit = _NewGrp CreateUnit ["I_soldier_F", getmarkerPos "vspawn1", [], 0, "NONE"];
_Unit assignAsDriver _Veh;
[_Unit] orderGetIn true;
_Unit MoveInDriver _Veh;
_Unit setCombatMode "BLUE";
sleep 1;

_Index = 0;
for "_i" from 1 to ((count _WPs) - 1) do
{
	_NewGrp addWaypoint [(GetMarkerPos (_WPs select _Index)),_Index];
	[_NewGrp,_Index] setWaypointType "MOVE";
	[_NewGrp,_Index] setWaypointBehaviour "SAFE";
	[_NewGrp,_Index] SetWaypointCombatMode "BLUE";
	_Index = _Index + 1;
};
sleep 1;

_NewGrp SetCurrentWaypoint [_NewGrp,1];

_NewGrp addWaypoint [(GetMarkerPos (_WPs select _Index)), _Index];
[_NewGrp,_Index] setWaypointType "CYCLE";
[_NewGrp,_Index] setWaypointBehaviour "SAFE";
[_NewGrp,_Index] SetWaypointCombatMode "BLUE";

While {Alive _Veh} do
{
	WaitUntil {!(_Unit in _Veh) or !(alive _Unit) or !(Alive _Veh)};
	Deletevehicle _Unit;
	
	sleep 30;
	DeleteVehicle _Veh;
};

Player addrating 20000;

