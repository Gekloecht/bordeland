/*
File: fn_gatherMeth.sqf

Description:
Stealing Meth
*/
private["_sum"];
_sum = ["ephedrine",1,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;

if(_sum > 0) then
{
life_action_in_use = true;
titleText["Recolte d'ephedrine...","PLAIN"];
titleFadeOut 5;
sleep 5;
if(([true,"ephedrine",1] call life_fnc_handleInv)) then
{
playSound "bag"; // this only if you want the sound for the bag when you gather it 
titleText["Ephedrine recoltee.","PLAIN"];
};
};

life_action_in_use = false;
