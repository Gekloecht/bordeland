/*
	File: fn_loadGear.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Used for loading cop saved gear loadout.
*/
private["_loadout","_primary","_launcher","_handgun","_magazines","_uniform","_primitems","_secitems","_handgunitems","_backpack","_items","_vest","_goggles","_headgear","_uItems","_bItems","_vItems","_handle"];
_loadout = cop_gear;

if(isNil "_loadout") exitWith {[] call life_fnc_copDefault;}; //Slot data doesn't exist
if(count _loadout == 0) exitWith {[] call life_fnc_copDefault;}; //Slot data doesn't exist

//Strip the unit down
RemoveAllWeapons player;
{player removeMagazine _x;} foreach (magazines player);
removeUniform player;
removeVest player;
removeBackpack player;
removeGoggles player;
removeHeadGear player;
{
	player unassignItem _x;
	player removeItem _x;
} foreach (assignedItems player);

_primary = [_loadout,0,"",[""]] call BIS_fnc_param;
_launcher = [_loadout,1,"",[""]] call BIS_fnc_param;
_handgun = [_loadout,2,"",[""]] call BIS_fnc_param;
_magazines = [_loadout,3,[],[[]]] call BIS_fnc_param;
_uniform = [_loadout,4,"",[""]] call BIS_fnc_param;
_vest = [_loadout,5,"",[""]] call BIS_fnc_param;
_backpack = [_loadout,6,"",[""]] call BIS_fnc_param;
_items = [_loadout,7,[],[[]]] call BIS_fnc_param;
_primitems = [_loadout,8,[],[[]]] call BIS_fnc_param;
_secitems = [_loadout,9,[],[[]]] call BIS_fnc_param;
_handgunitems = [_loadout,10,[],[[]]] call BIS_fnc_param;
_uItems = [_loadout,11,[],[[]]] call BIS_fnc_param;
_vItems = [_loadout,12,[],[[]]] call BIS_fnc_param;
_bItems = [_loadout,13,[],[[]]] call BIS_fnc_param;
_headgear = [_loadout,14,"",[""]] call BIS_fnc_param;
_goggles = [_loadout,15,"",[""]] call BIS_fnc_param;

//Add the gear
if(_uniform != "") then {_handle = [_uniform,true,false,false,false] spawn life_fnc_handleItem; waitUntil {scriptDone _handle};};
if(_backpack != "") then {_handle = [_backpack,true,false,false,false] spawn life_fnc_handleItem; waitUntil {scriptDone _handle};};
if(_goggles != "") then {_handle = [_goggles,true,false,false,false] spawn life_fnc_handleItem; waitUntil {scriptDone _handle};};
if(_headgear != "") then {_handle = [_headgear,true,false,false,false] spawn life_fnc_handleItem; waitUntil {scriptDone _handle};};
if(_vest != "") then {_handle = [_vest,true,false,false,false] spawn life_fnc_handleItem; waitUntil {scriptDone _handle};};
{
	_handle = [_x,true,false,false,false] spawn life_fnc_handleItem;
	waitUntil {scriptDone _handle};
} foreach _magazines;

if(_primary != "") then {[_primary,true,false,false,false] spawn life_fnc_handleItem;};
if(_launcher != "") then {[_launcher,true,false,false,false] spawn life_fnc_handleItem;};
if(_handgun != "") then {[_handgun,true,false,false,false] spawn life_fnc_handleItem;};

{_handle = [_x,true,false,false,false] spawn life_fnc_handleItem; waitUntil {scriptDone _handle};} foreach _items;
{[_x,true,false,false,true] call life_fnc_handleItem;} foreach (_uitems);
{[_x,true,false,false,true] call life_fnc_handleItem;} foreach (_vitems);
{[_x,true,true,false,false] call life_fnc_handleItem;} foreach (_bitems);
{[_x,true,false,true,false] call life_fnc_handleItem;} foreach (_primitems);
{[_x,true,false,true,false] call life_fnc_handleItem;} foreach (_secitems);
{[_x,true,false,true,false] call life_fnc_handleItem;} foreach (_handgunitems);  

if(primaryWeapon player != "") then
{
	player selectWeapon (primaryWeapon player);
};

uniform_1 addAction ["Uniforme Policier","policier.sqf"];
uniform_1 addAction ["Uniforme Ambulancier","ambulancier.sqf"];
uniform_2 addAction ["Uniforme Policier","policier.sqf"];
uniform_2 addAction ["Uniforme Ambulancier","ambulancier.sqf"];
uniform_3 addAction ["Uniforme Policier","policier.sqf"];
uniform_3 addAction ["Uniforme Ambulancier","ambulancier.sqf"];
uniform_4 addAction ["Uniforme Policier","policier.sqf"];
uniform_4 addAction ["Uniforme Ambulancier","ambulancier.sqf"];
patrolcop addAction ["Stop patrol mission","patrolmission\removepatrol.sqf"];
patrolcop addAction ["Get patrol mission","patrolmission\startpatrol.sqf"];
patrolcop_1 addAction ["Stop patrol mission","patrolmission\removepatrol.sqf"];
patrolcop_1 addAction ["Get patrol mission","patrolmission\startpatrol.sqf"];