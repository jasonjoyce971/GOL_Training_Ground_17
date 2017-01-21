/*
	Author: GuzzenVonLidl
	Counts current groups local to a headless client

	Usage:
	[] call GW_HeadlessController_Fnc_countBalance

	Arguments: NO

	Return Value: YES <ARRAY>

	Public: NO
*/
#include "..\scriptComponent.hpp"

private _groupCount = [];
{
	_x params ["_headless"];
	_groupCount pushBack [({(groupOwner _x) isEqualTo (owner _headless)} count allGroups), _headless];
} forEach GVAR(headlessList);
_groupCount sort true;
_groupCount
