/*
	File: fn_clothing_reb.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Reb shop.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Mohammed's Jihadi Shop"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["U_IG_Guerilla1_1",nil,1000],
			["U_IG_leader",nil,1000],
			["U_O_CombatUniform_ocamo",nil,1000],
			["U_O_PilotCoveralls",nil,1000],
			["U_O_CombatUniform_oucamo",nil,1000],
			["U_O_SpecopsUniform_ocamo",nil,1000],
			["U_O_SpecopsUniform_blk",nil,1000],
			["U_O_OfficerUniform_ocamo",nil,1000],
			["U_O_GhillieSuit",nil,5000]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["H_Booniehat_dgtl",nil,100],
			["H_Cap_brn_SPECOPS",nil,100],
			["H_Cap_tan_specops_US",nil,100],
			["H_Cap_khaki_specops_UK",nil,100],
			["H_Cap_blk_Raven",nil,100],
			["H_Bandanna_camo",nil,100],
			["H_Bandanna_mcamo",nil,100],
			["H_Shemag_tan",nil,100],
			["H_Shemag_olive",nil,100],
			["H_ShemagOpen_khk",nil,100]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Squares",nil,10],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["V_TacVest_khk",nil,12500],
			["V_BandollierB_cbr",nil,4500],
			["V_HarnessO_brn",nil,7500]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_AssaultPack_cbr",nil,2500],
			["B_Kitbag_mcamo",nil,4500],
			["B_TacticalPack_oli",nil,3500],
			["B_FieldPack_ocamo",nil,3000],
			["B_Bergen_sgg",nil,4500],
			["B_Kitbag_cbr",nil,4500],
			["B_Carryall_oli",nil,5000],
			["B_Carryall_khk",nil,5000]
		];
	};
};