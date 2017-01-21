//	["lane1"] execVM "Scripts\MineCourse\UnitDemonstrations.sqf";
//	
//	

Private ["_markerMine","_markerMove","_markerMan","_Mine","_Name","_Lane","_Man","_Group"];

_Lane = _This select 0;
_Group = CreateGroup West;

Switch _Lane do
{
	Private ["_markerMine","_markerMove","_markerMan","_Mine","_Name"];
	
	case "lane1":
	{
		_markerMine = "mrkmine1";
		_markerMove = "mrkman1move";
		_markerMan = "mrkman1";
		_Mine = "APERSMine";
		_Name = "Apers Mine";
	};
	
	case "lane2":
	{
		_markerMine = "mrkmine2";
		_markerMove = "mrkman2move";
		_markerMan = "mrkman2";
		_Mine = "APERSBoundingMine";
		_Name = "Apers Bounding Mine";
	};
	
	case "lane3":
	{
		_markerMine = "mrkmine3";
		_markerMove = "mrkman3move";
		_markerMan = "mrkman3";
		_Mine = "ApersTripMine";
		_Name = "Apers Tripwire Mine";
	};
};

createmine [_Mine,(getmarkerpos _markerMine),[],0];

_man = _group createunit ["B_Soldier_F", getmarkerpos _markerMan,[],0,"NONE"];
_man domove (getmarkerpos _markerMove);

Hint _Name;