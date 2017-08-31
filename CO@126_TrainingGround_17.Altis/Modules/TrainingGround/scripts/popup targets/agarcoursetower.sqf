Private ["_CountMarkers","_PopUp","_markerIndex","_marker","_unit","_inc","_targetold","_soundPos","_dir","_range","_target"];

nopop = true;
AGARCourse = True;
TargetUp = False;

_PopUp = "TargetP_Inf_F";
_Targets = [];
_Marker = "100050";
_MarkerIndex = 100050;
_StopCounting = 100068;
_inc = 0;

// Count Markers
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
	};
	_TargetOld = _Target;
	
	if !(TargetUp) then 
	{
		_unit = createVehicle [_PopUp,getmarkerpos _Target, [],0,"CAN_COLLIDE"];
		_dir = markerDir _Target;
		_unit setDir _dir;
		TargetUp = True;
		Sleep 3;
		
		while {TargetUp and AGARCourse} do
		{
			_SoundPos = "Land_HelipadEmpty_F" createVehicle (getpos _unit); 
			if (AGARAudio) then {_SoundPos say3D "GhostFire2"};
			_dir = [player, _unit] call BIS_fnc_DirTo;
			_range = player distance _unit;
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