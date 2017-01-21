//	["Weather type",Value] ExecVM "Scripts\NEKY_SetWeather";
//		
//	Types:
//	Overcast
//	Rain
//	Fog
//	Lightning
//
//	Made by NeKo-ArroW

Private ["_Type","_Value","_Overcast","_Rain","_Fog","_Lightning"];

Hint "Please wait...";

_Type = _This select 0;
_Value = _This select 1;

Switch (_Type) do
{	
	Private ["_Overcast","_Rain","_Fog","_Lightning"];
	
	Case "Overcast":
	{
		_Overcast = _Value;
		_Fog = Fog;
		_Rain = Rain;
		_Lightning = Lightnings;
	};
	
	Case "Rain":
	{
		_Overcast = Overcast;
		_Fog = Fog;
		_Rain = _Value;
		_Lightning = Lightnings;
	};
	
	Case "Fog":
	{
		_Overcast = Overcast;
		_Fog = _Value;
		_Rain = Rain;
		_Lightning = Lightnings;
	};
	
	Case "Lightning":
	{
		_Overcast = Overcast;
		_Fog = Fog;
		_Rain = Rain;
		_Lightning = _Value;
	};
};

[[[],{skiptime -24}], "BIS_fnc_Spawn", false, false, false] call BIS_fnc_MP;
sleep 0.5;

[[[_Fog,_Overcast],{86400 setfog (_this select 0); 86400 setOvercast (_this select 1); ForceWeatherChange}], "BIS_fnc_Spawn", True, false, False] call BIS_fnc_MP;
sleep 0.5;

[[[],{skiptime 24}], "BIS_fnc_Spawn", false, false, false] call BIS_fnc_MP;
[[[_Rain,_Lightning],{5 setrain (_this select 0); 5 setLightnings (_this select 1);}], "BIS_fnc_Spawn", True, false, false] call BIS_fnc_MP;
sleep 5;
[[[_Rain,_Lightning],{86400 setRain (_this select 0); 86400 setLightnings (_this select 1);}], "BIS_fnc_Spawn", True, false, false] call BIS_fnc_MP;

Hint "Weather station ready for new commands.";