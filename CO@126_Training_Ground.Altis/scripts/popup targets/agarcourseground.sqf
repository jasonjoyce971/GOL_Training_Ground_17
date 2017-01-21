Private ["_CountMarkers","_markerIndex","_marker","_unit","_inc","_targetold","_soundPos","_dir","_range","_target"];

nopop = true;
AGARCourse = True;
TargetUp = False;

_Targets = [];
_Marker = "100000";
_MarkerIndex = 100000; 
_StopCounting = 100030;
_inc = 0;

// Count Markers (Number of all vehicles to spawn)
_CountMarkers = True;

While {_CountMarkers} do
{
	if (getMarkerType _Marker == "") then 
	{
		_CountMarkers = False;
		} else {
		_Targets pushBack _Marker;
		_MarkerIndex = _MarkerIndex +1;
		_Marker = Format ["%1",_MarkerIndex];	
	};
};

_TargetOld = _Targets call BIS_fnc_selectRandom;

titleText ["Setting up the Range","PLAIN DOWN"];
sleep 3;
titleText ["Ready","PLAIN DOWN"];
sleep 3;
titleText ["Training Starting","PLAIN DOWN"];

while {_inc<20 and AGARCourse} do 
{
	_Target = _Targets call BIS_fnc_selectRandom;
	While {_Target == _TargetOld} do
	{
		_Target = _Targets call BIS_fnc_selectRandom;
		sleep 0.1;
	};
	_TargetOld = _Target;
	
	if !(TargetUp) then 
	{
		_unit = createVehicle ["TargetP_Inf_F",getmarkerpos _Target, [],0,"CAN_COLLIDE"];
		_dir = markerDir _Target;
		_unit setDir _dir;
		sleep 0.5;
		if (_Target == "100007") then {_unit setposATL [getPos _unit select 0, getPos _unit select 1, 0.8]};
		if (_Target == "100008") then {_unit setposATL [getPos _unit select 0, getPos _unit select 1, 1.5]};
		if (_Target == "100023") then {_unit setposATL [getPos _unit select 0, getPos _unit select 1, 0.7]};
		TargetUp = True;
		
		Sleep 3;
		
		while {TargetUp and AGARCourse} do
		{
			_SoundPos = "Land_HelipadEmpty_F" createVehicle (getpos _unit); 
			if (AGARAudio) then {_SoundPos say3D "GhostFire2"};
			_dir = round ([player, _unit] call BIS_fnc_DirTo);
			_range = round (player distance _unit);
			if (AGARHints) then {SystemChat Format ["Bearing: %1 Distance: %2m",_dir,_range]};
			sleep 1;
		
			Deletevehicle _SoundPos;
			sleep 4;
		
			if ((_unit animationPhase 'terc') == 1) then 
			{
				TargetUp = False;
			};
		};
		
		_inc = _inc + 1;
		SystemChat format ["Targets downed: %1",_inc];
		DeleteVehicle _unit;
	};
};

titleText ["Training Ending","PLAIN DOWN"];