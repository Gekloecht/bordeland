﻿/*
	File: fn_gatherHeroin.sqf
	Author: Bryan "Tonic" Boardwine
	Traduction : Raztoux

	Description:
	Gathers diamonds?
*/
if(life_action_in_use) exitWith {hint "Vous ne pouvez pas utiliser rapidement les touches d'actions!"};
life_action_in_use = true;
private["_sum","_rand"];

_rand=floor(random 3)+1;
_sum = ["diamond",_rand,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
if (life_inv_pickaxe < 1) exitWith {hint "Vous avez besoin d'une pioche pour effectuer cette action."};
if(_sum > 0) then
{
	titleText["Récolte de Dimands...","PLAIN"];
	titleFadeOut 5;
	player say3D "mining";
	for "_i" from 0 to 2 do
	{
		player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
		waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};
		sleep 2.5;
	};
	if(([true,"diamond",_sum] call life_fnc_handleInv)) then
	{
		titleText[format["Vous avez collecté %1 diamands",_sum],"PLAIN"];
	};
};

life_action_in_use = false;