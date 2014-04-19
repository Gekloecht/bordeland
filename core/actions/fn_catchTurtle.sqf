/*
	File: fn_catchTurtle.sqf
	Author: Bryan "Tonic" Boardwine
	Traduction : Raztoux
	
	Description:
	Catch a turtle with a net - Da Fuk !
*/
if(life_net_dropped) exitWith {hint "Vous ne pouvez pas utiliser rapidement les touches d'actions!"};
life_net_dropped = true;
private["_sum"];
if(!(vehicle player isKindOf "Ship")) exitWith {life_net_dropped = false;};

_sum = ["turtle",1,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;

if(_sum > 0) then
{
titleText["Filet de pêche déployé pour attraper des tortues...","PLAIN"];
sleep 5;
	if(([true,"turtle",1] call life_fnc_handleInv)) then
	{
		titleText[format["Vous avez attrapé une tortue"],"PLAIN"];
	};
}
	else
{
	hint "Votre sac est plein.";
};
sleep 1.5;
titleText["Filet de pêche relevé.","PLAIN"];
life_net_dropped = false;
