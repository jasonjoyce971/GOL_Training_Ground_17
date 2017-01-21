if !(isServer) exitwith {};

_Bomb = "G_40mm_HE";
_Index = 0;
_Marker = ["bomb1","Bomb2","Bomb3","Bomb4","Bomb5","Bomb6","Bomb7"];

for "_i" from 1 to 7 do 
{
	_NewBomb = _Bomb createVehicle [getmarkerpos (_Marker select _Index) select 0, getmarkerpos (_Marker select _Index) select 1,20]; 
	_NewBomb setvelocity [0,0,-1000];
	_Index = _Index +1;
	sleep 0.2;
};