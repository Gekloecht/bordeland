/*
	File: fn_saveGear.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Saves the player / cops gear in a formatted array.
*/
private["_primary","_launcher","_handgun","_magazines","_uniform","_vest","_backpack","_items","_primitems","_secitems","_handgunitems","_uitems","_vitems","_bitems","_curWep","_headgear","_goggles"];
_primitems = [];
_secitems = [];
_handgunitems = [];
_primary = primaryWeapon player;
_launcher = secondaryWeapon player;
_handgun = handGunWeapon player;
_magazines = [];
_uniform = uniform player;
_vest = vest player;
_backpack = backpack player;
_items = assignedItems player;
if(primaryWeapon player != "") then {_primitems = primaryWeaponItems player;};
if(secondaryWeapon player != "") then {_secitems = secondaryWeaponItems player;};
if(handgunWeapon player != "") then {_handgunItems = handgunItems player;};
_headgear = headgear player;
_goggles = goggles player;
_uitems = [];
_vitems = [];
_bitems = [];
if(_uniform != "") then {{_uitems set[count _uitems,_x];} foreach (uniformItems player);};
if(_vest != "") then {{_vitems set[count _vitems,_x];} foreach (vestItems player);};
if(_backpack != "") then {{_bitems set[count _bitems,_x];} foreach (backPackItems player);};

if(count (primaryWeaponMagazine player) > 0) then
{
	{
		_magazines set[count _magazines,_x];
	} foreach (primaryWeaponMagazine player);
};

if(count (secondaryWeaponMagazine player) > 0) then
{
	{
		_magazines set[count _magazines,_x];
	} foreach (secondaryWeaponMagazine player);
};

if(count (handgunMagazine player) > 0) then
{
	{
		_magazines set[count _magazines,_x];
	} foreach (handgunMagazine player);
};

//Hard code for Laser Desigantor batteries
_curWep = currentWeapon player;
if("Laserdesignator" in assignedItems player) then
{
	player selectWeapon "Laserdesignator";
	if(currentMagazine player != "") then {_magazines set[count _magazines,(currentMagazine player)];};
};

player selectWeapon _curWep;

// Check for holstered weapon.
if (life_holstered && !isNil {life_holstered_weapon}) then {
	if (life_holstered_primary) then {
		if (_primary == "") then {
			_primary = life_holstered_weapon;
			_primitems = life_holstered_items;
		};
	} else {
		if (_handgun == "") then {
			_handgun = life_holstered_weapon;
			_handgunitems = life_holstered_items;
		};
	};
	//_magazines set [count _magazines, [life_holstered_magazine, life_holstered_ammo]];
	_magazines set [count _magazines, life_holstered_magazine];
};

if(isNil "_handgunItems") then {_handgunItems = ["","",""];};

cop_gear = [_primary,_launcher,_handgun,_magazines,_uniform,_vest,_backpack,_items,_primitems,_secitems,_handgunitems,_uitems,_vitems,_bitems,_headgear,_goggles];