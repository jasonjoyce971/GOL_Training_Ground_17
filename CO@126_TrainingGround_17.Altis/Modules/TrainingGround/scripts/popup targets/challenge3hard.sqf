Private ["_Inc","_Count","_Targets","_TargetsAll","_RtargetOld"];

_inc     = 0;
_count   = 0;
_targets = [Target30,Target30_1,Target30_2,Target30_3,Target30_4,Target30_5,Target30_6,Target30_7,Target30_8];
_targetsall = [Target30,Target30_1,Target30_2,Target30_3,Target30_4,Target30_5,Target30_6,Target30_7,Target30_8];
_rtargetOld = _targets call BIS_fnc_selectRandom;

nopop=true;
{_x  animate["terc",1]} forEach _targetsall;

titleText ["Setting up the Range - Hard Mode","PLAIN DOWN"];
sleep 10;
titleText ["Ready","PLAIN DOWN"];
sleep 3;
titleText ["Challenge Starting","PLAIN DOWN"];


while {_inc<30} do 
{
	_rtarget = _targets call BIS_fnc_selectRandom;
	
	While {_rtarget == _rtargetOld} do
	{
		_rtarget = _targets call BIS_fnc_selectRandom;
	};
	
	_rtargetOld = _rtarget;
	
	_rtarget animate["terc", 0];
	sleep 2;
	if (_rtarget animationPhase "terc" > 0.1) then
	{
			_count = _count+1;
				};
	hint format ["Targets :%1 Hit :%2",_inc+1,_count];
	_rtarget animate["terc", 1];
	_inc = _inc + 1;
};
titleText ["Challenge Ending - Hard Mode","PLAIN DOWN"];