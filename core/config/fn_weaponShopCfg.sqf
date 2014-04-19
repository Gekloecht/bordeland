/*
	File: fn_weaponShopCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for the weapon shops.
	
	Return:
	String: Close the menu
	Array: 
	[Shop Name,
	[ //Array of items to add to the store
		[classname,Custom Name (set nil for default),price]
	]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do
{
	case "cop_basic":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			default
			{
				["Altis Cop Shop",
					[
						["ItemWatch",nil,50],
						["ItemCompass",nil,50],
						["acc_flashlight",nil,750],
						["optic_Holosight",nil,1200],
						["optic_ACO_grn_smg",nil,2000],
						["optic_Aco_smg",nil,2000],
						["optic_ACO_grn",nil,3200],
						["optic_Aco",nil,3200],
						["optic_LRPS",nil,50000],
						["optic_SOS",nil,30000],
						["optic_MRCO",nil,10000],
						["optic_Arco",nil,10000],
						["optic_Hamr",nil,10000],
						["acc_pointer_IR",nil,4200],
						["Binocular",nil,150],
						["ItemMap",nil,50],
						["ItemGPS",nil,150],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,2000],
						["SmokeShell",nil,100],
						["NVGoggles",nil,2500],
						["MineDetector",nil,1000],
						["Rangefinder",nil,3400],
						["B_UavTerminal",nil,5200],
						["hgun_P07_snds_F","Stun Pistol",2000],
						["hgun_P07_F",nil,3500],
						["hgun_ACPC2_F",nil,4500],
						["arifle_sdar_F","Taser Rifle",2500],
						["SMG_02_F",nil,4600],
						["arifle_MX_Black_F",nil,6200],
						["arifle_MXC_Black_F",nil,6500],
						["arifle_MXM_Black_F",nil,7300],
						["srifle_EBR_F",nil,8200],
						["16Rnd_9x21_Mag",nil,50],
						["9Rnd_45ACP_Mag",nil,70],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",50],
						["30Rnd_9x21_Mag",nil,60],
						["30Rnd_65x39_caseless_mag",nil,80],
						["20Rnd_762x51_Mag",nil,90],
						["srifle_EBR_DMS_pointer_snds_F",nil,2000],
						["muzzle_snds_L",nil,650]
					]
				];
			};
		};
	};

	case "cop_patrol":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (life_coplevel < 2): {"Vous n'ete pas brigadier!"};
			default
			{
				["Altis Patrol Officer Shop",
					[
						["arifle_MX_F",nil,35000],
						["SMG_02_ACO_F",nil,30000],
						["MineDetector",nil,1000],
						["acc_flashlight",nil,750],
						["optic_Holosight",nil,1200],
						["optic_Arco",nil,2500],
						["muzzle_snds_H",nil,2750],
						["30Rnd_65x39_caseless_mag",nil,130],
						["30Rnd_9x21_Mag",nil,250]
					]
				];
			};
		};
	};

	case "cop_sergeant":
	{
		switch(true) do
		{
			case (playerSide != west): {"Vous n'ete pas policier!"};
			case (life_coplevel < 3): {"Vous n'ete pas sergent!"};
			default
			{
				["Altis Sergeant Officer Shop",
					[
						["SMG_02_ACO_F",nil,15000],
						["hgun_ACPC2_F",nil,17500],
						["arifle_MXC_F",nil,30000],
						["optic_Arco",nil,2500],
						["muzzle_snds_H",nil,2750],
						["30Rnd_65x39_caseless_mag",nil,100],
						["30Rnd_9x21_Mag",nil,60],
						["9Rnd_45ACP_Mag",nil,200]
					]
				];
			};
		};
	};
	
	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Vous n'ete pas policier!"};
			case (!license_civ_rebel): {"Vous n'avez pas la licence rebelle!"};
			default
			{
				["Mohammed's Jihadi Shop",
					[
						["arifle_TRG20_F",nil,90000],
						["arifle_Katiba_F",nil,100000],
						["srifle_DMR_01_F",nil,120000],
						["arifle_SDAR_F",nil,30000],
						["optic_ACO_grn",nil,3500],
						["optic_Holosight",nil,3600],
						["acc_flashlight",nil,1000],
						["optic_Hamr",nil,7500],
						["30Rnd_9x21_Mag",nil,200],
						["20Rnd_556x45_UW_mag",nil,125],
						["30Rnd_556x45_Stanag",nil,300],
						["10Rnd_762x51_Mag",nil,500],
						["30Rnd_65x39_caseless_green",nil,275]
					]
				];
			};
		};
	};
	
	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a cop!"};
			case (!license_civ_gun): {"You don't have a Firearms license!"};
			default
			{
				["Billy Joe's Firearms",
					[
						["hgun_Rook40_F",nil,6500],
						["hgun_Pistol_heavy_02_F",nil,9850],
						["hgun_ACPC2_F",nil,11500],
						["hgun_PDW2000_F",nil,20000],
						["optic_ACO_grn_smg",nil,2500],
						["V_Rangemaster_belt",nil,4900],
						["16Rnd_9x21_Mag",nil,25],
						["9Rnd_45ACP_Mag",nil,45],
						["6Rnd_45ACP_Cylinder",nil,50],
						["30Rnd_9x21_Mag",nil,75]
					]
				];
			};
		};
	};
	
	case "donator":
	{
				["Donator Shop",
					[
						["hgun_Rook40_F",nil,4500],
						["hgun_PDW2000_F",nil,6200],
						["SMG_01_F",nil,20000],
						["arifle_Mk20C_plain_F",nil,50000],
						["LMG_Mk200_F",nil,200000],
						["LMG_Zafir_F",nil,350000],
						["srifle_GM6_F",nil,350000],
						["optic_LRPS",nil,50000],
						["optic_SOS",nil,30000],
						["optic_MRCO",nil,10000],
						["optic_Arco",nil,10000],
						["optic_Hamr",nil,10000],
						["optic_ACO_grn_smg",nil,2000],
						["acc_pointer_IR",nil,10000],
						["ToolKit",nil,250],
						["itemgps",nil,150],
						["FirstAidKit",nil,150],
						["16Rnd_9x21_Mag",nil,50],
						["30Rnd_9x21_Mag",nil,60],
						["30Rnd_45ACP_Mag_SMG_01_tracer_green",nil,60],
						["30Rnd_556x45_Stanag",nil,70],
						["200Rnd_65x39_cased_Box_Tracer",nil,200],
						["150Rnd_762x51_Box_Tracer",nil,200],
						["5Rnd_127x108_Mag",nil,200]
					]
				];
	};
	
	case "genstore":
	{
		["Altis General Store",
			[
				["ItemWatch",nil,50],
			    ["ItemCompass",nil,50],
				["Binocular",nil,150],
				["ItemGPS",nil,100],
				["ToolKit",nil,250],
				["FirstAidKit",nil,150],
				["NVGoggles",nil,2000],
				["Chemlight_red",nil,300],
				["Chemlight_yellow",nil,300],
				["Chemlight_green",nil,300],
				["Chemlight_blue",nil,300]
			]
		];
	};
};
