/*
	File: fn_unrestrainAction.sqf
	Author: Skalicon
	
	Description:
	Unrestrains player
*/
private["_unit"];
_unit = [_this,0,Objnull,[Objnull]] call BIS_fnc_param;

_unit playMoveNow "AmovPercMstpSnonWnonDnon";
_unit setVariable["restrained",false,true];
_unit setVariable["isCivRestrained",false,true];
_unit setVariable["playerSurrender",false,true];

life_disable_actions = false;
life_abort_enabled = true;