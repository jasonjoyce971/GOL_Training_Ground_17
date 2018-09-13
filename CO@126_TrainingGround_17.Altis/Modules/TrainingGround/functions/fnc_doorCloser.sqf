NEKY_DoorCloser =
{
	Private ["_This","_Location","_Radius","_State"];
	_Location = _This select 0;
	_Radius = _This select 1;
	_State = _This select 2;
	if (_State == "close") then {_State = 0} else {_State = 1};
	[getpos _Location,_Radius,_State] spawn { sleep 1;  {  private "_b";  _b = _x;  for "_i" from 0 to 10 do {  _b animate ["door_" + str _i + "_rot",(_this select 2)]  };  } foreach ((_this select 0) nearobjects (_this select 1))  }; 
};