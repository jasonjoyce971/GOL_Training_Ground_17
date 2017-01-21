//=========================================
//         Close Doors
//=========================================

Hint "Course A is being prepared";

0 = [getpos doorcloser6,20] spawn {  sleep 1;  {  private "_b";  _b = _x;  for "_i" from 0 to 7 do {  _b animate ["door_" + str _i + "_rot",0]  };  } foreach ((_this select 0) nearobjects (_this select 1))  }; 

sleep 5;


//=========================================
//  	   Prepare Mines
//=========================================

_MineType = "ApersTripMine";


_mine = createmine [_MineType,(getmarkerpos "mrkTrip1"),[],0]; 
_mine setdir -40;
_mine2 = createmine [_MineType,(getmarkerpos "mrkTrip2"),[],0]; 
_mine2 setdir -220;
_mine3 = createmine [_MineType,(getmarkerpos "mrkTrip3"),[],0];
_mine3 setdir 45;
_mine3 setPosATL (_mine3 modelToWorld[0,0,0.35]);
_mine4 = createmine [_MineType,(getmarkerpos "mrkTrip4"),[],0];
_mine4 setdir -40;
_mine4 setPosATL (_mine4 modelToWorld[0,0,0.1]);
_mine5 = createmine [_MineType,(getmarkerpos "mrkTrip5"),[],0];
_mine5 setdir -40;
_mine5 setPosATL (_mine5 modelToWorld[0,0,0.4]);

//=========================================
//			Raise Targets
//=========================================

Target40 animate["terc", 0];
Target40_1 animate["terc", 0];
Target40_2 animate["terc", 0];
Target40_3 animate["terc", 0];
Target40_4 animate["terc", 0];

sleep 5;

Hint "Course A prepared";