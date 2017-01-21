//=========================================
//         Close Doors
//=========================================

Hint "Course B is being prepared";

0 = [getpos doorcloser7,20] spawn {  sleep 1;  {  private "_b";  _b = _x;  for "_i" from 0 to 7 do {  _b animate ["door_" + str _i + "_rot",0]  };  } foreach ((_this select 0) nearobjects (_this select 1))  }; 

sleep 5;


//=========================================
//  	   Prepare Mines
//=========================================

_MineType = "ApersTripMine";


_mine = createmine [_MineType,(getmarkerpos "mrkTrip6"),[],0];
_mine setdir 75;  
_mine setPosATL (_mine modelToWorld[0,0,0.45]);
_mine2 = createmine [_MineType,(getmarkerpos "mrkTrip7"),[],0];  
_mine2 setdir 190;  
_mine2 setPosATL (_mine2 modelToWorld[0,0,0.85]);
_mine3 = createmine [_MineType,(getmarkerpos "mrkTrip8"),[],0];
_mine3 setdir 140; 
_mine3 setPosATL (_mine3 modelToWorld[0,0,0.85]);
_mine4 = createmine [_MineType,(getmarkerpos "mrkTrip9"),[],0];  
_mine4 setdir -45;  
_mine4 setPosATL (_mine4 modelToWorld[0,0,0]);
_mine5 = createmine [_MineType,(getmarkerpos "mrkTrip10"),[],0];  
_mine5 setdir 100;  
_mine5 setPosATL (_mine5 modelToWorld[-2.3,-2,0]);



//=========================================
//			Raise Targets
//=========================================

Target40_5 animate["terc", 0];
Target40_6 animate["terc", 0];
Target40_7 animate["terc", 0];
Target40_8 animate["terc", 0];
Target40_9 animate["terc", 0];
Target40_10 animate["terc", 0];
Target40_11 animate["terc", 0];

sleep 5;

Hint "Course B prepared";