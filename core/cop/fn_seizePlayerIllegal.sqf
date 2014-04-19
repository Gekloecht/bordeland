/*
	File: fn_seizePlayerWeapon.sqf
	Author: Skalicon
	
	Description:
	Preforms the seizePlayerWeaponAction script on the cursorTarget
*/
[[],"life_fnc_seizePlayerIllegalAction",cursorTarget,false] spawn BIS_fnc_mp;
//titleText format["Seized weapons from %1", name cursorTarget];