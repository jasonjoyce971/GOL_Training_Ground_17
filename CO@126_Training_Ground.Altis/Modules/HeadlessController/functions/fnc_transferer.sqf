/*
	Author: GuzzenVonLidl
	Function will transfer units group to a headless under the right conditions

	Usage:
	[this] spawn GW_HeadlessController_Fnc_transferer;

	Arguments:
	0: Unit <OBJECT>

	Return Value: NO

	Public: NO
*/
#include "..\scriptComponent.hpp"

if !(isServer) exitWith {false};
params ["_unit"];
private _group = (_unit call CBA_fnc_getGroup);

if ((_group getVariable [QGVAR(Transfered), false]) || (_group getVariable [QGVAR(BlackList), false]) || !(({isPlayer _x} count (units _group)) isEqualTo 0)) exitWith {
	LOG(FORMAT_1("Group: %1 is blacklisted", _group));
	false
};

GVAR(ToTransfer) pushBackUnique _group;
