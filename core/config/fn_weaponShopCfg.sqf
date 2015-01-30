#include <macro.h>
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
       
	   
	   
	   
        case "med_supplies":
        {
                switch (true) do
                {
                        case (playerSide != independent): {"You are not an EMS"};
                        default {
                                ["EMS Supplies Shop",
                                        [
											["FirstAidKit",nil,250],
											["Medikit",nil,500],
											["ToolKit",nil,500]
                                        ]
                                ];
                        };
                };
        };
		case "med_basic":
        {
                switch (true) do
                {
                        case (playerSide != independent): {"You are not an EMS"};
                        default {
                                ["EMS Basic Shop",
                                        [
											["A3L_Extinguisher",nil,350],
											["tf_anprc152",nil,100],
                                            ["tf_rt1523g",nil,300],
											["ItemGPS",nil,250],
											["Binocular",nil,1250],
											["ToolKit",nil,500],
											["Chemlight_red",nil,200],
											["NVGoggles",nil,5000]
                                        ]
                                ];
                        };
                };
        };
	
		
        case "cop_basic":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a cop!"};
                        default
                        {
                                ["Junior Deputy Shop",
                                        [
												["FirstAidKit",nil,250],
												["Medikit",nil,500],
												["ToolKit",nil,500],
												
                                                ["RH_g17",nil,600],
												["RH_17Rnd_9x19_g17",nil,50],
												
                                                ["Taser_26","Taser",2000],
												
                                                ["26_cartridge",nil,50],
                                                ["Chemlight_red",nil,100],
												
                                                ["Binocular",nil,150],
                                                ["ItemGPS",nil,100],
                                                
                                                ["NVGoggles",nil,2000],
                                                ["tf_anprc152",nil,100]
                                        ]
                                ];
                        };
                };
        };
        case "cop_patrol":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a deputy!"};
                        case (__GETC__(life_coplevel) < 2): {"You are not at a deputy rank!"};
                        default
                        {
                                ["Deputy Shop",
                                        [
                                                ["RH_g17",nil,600],
												["RH_g19",nil,600],
												["RH_g19t",nil,650],
												["RH_17Rnd_9x19_g17",nil,50],
												["RH_m1911",nil,1500],
												["RH_kimber",nil,2500],
												["RH_kimber_nw",nil,1900],
												["RH_7Rnd_45cal_m1911",nil,100],
												["RH_m16a3",nil,8000],
												["RH_shortdot",nil,1000],
												["30rnd_556x45_STANAG",nil,300],
												["RH_reflex",nil,1000],
												["MineDetector",nil,1000]
                                        ]
                                ];
                        };
                };
        };
        case "cop_sergeant":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a cop!"};
                        case (__GETC__(life_coplevel) < 3): {"You are not at a sergeant rank!"};
                        default
                        {
                                ["Sergeant Shop",
                                        [
                                                ["RH_33Rnd_9x19_g18",nil,300],
												["RH_33Rnd_9x19_g18",nil,300],
												["RH_m16a3",nil,5000],
												["RH_m16a4",nil,6000],
												["30Rnd_556x45_Stanag_Tracer_Red",nil,300],
												["RH_compM4s",nil,1000],
												["RH_ta31rco",nil,1000],
												["RH_shortdot",nil,1000],
												["RH_reflex",nil,1000]
                                        ]
                                ];
                        };
                };
        };
		
        case "cop_swat":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a cop!"};
                        case (__GETC__(life_coplevel) < 4): {"You are not at a sergeant rank!"};
                        default
                        {
                                ["SERT Shop",
                                        [
                                                ["HandGrenade_Stone","Flashbang",100],
                                            ["RH_SAMR",nil,3500],
                                            ["RH_M4A1_ris",nil,3000],
                                            ["RH_p226",nil,300],
                                            ["RH_X300",nil,300],
                                            ["RH_reflex",nil,500],
                                            ["RH_m3lr",nil,600],
                                            ["RH_SFM952V",nil,300],
                                            ["RH_spr_mbs",nil,300],
                                            ["RH_ta31rco",nil,1000],
                                            ["RH_eotech553",nil,100],
                                            ["RH_saker",nil,100],
                                            ["RH_peq15",nil,100],
                                            ["RH_15Rnd_9x19_SIG",nil,100],
                                            ["RH_12Rnd_45cal_usp",nil,100],
											["RH_mk12mod1",nil,50000],
											["RH_30Rnd_556x45_Mk262",nil,100],
                                            ["Chemlight_green",nil,100],
                                            ["Chemlight_red",nil,100],
                                            ["Chemlight_yellow",nil,100],
                                            ["SmokeShell",nil,100],
                                            ["SmokeShellGreen",nil,100],
											["SmokeShellRed",nil,100],
										    ["arifle_mas_mp5",nil,12000],
											["arifle_mas_mp5sd",nil,20000],
											["RH_SAMR",nil,35000],
                                            ["RH_M4A1_ris",nil,30000],				
											["RH_m16a3",nil,25000],
											["RH_m16a4",nil,26000],
											["RH_mk12mod1",nil,19000],
                                            ["RH_SAMR",nil,35000],
											["RH_M4A1_ris",nil,30000],
											["RH_SAMR",nil,35000],
											["RH_M4A1_ris",nil,30000],
												["RH_ta31rco",nil,1000],
												["RH_shortdot",nil,1000],
												["RH_reflex",nil,1000],
												["RH_fnp45",nil,300],
                                                ["RH_p226",nil,300],
                                                ["RH_X300",nil,300],
                                                ["RH_reflex",nil,500],
                                                ["RH_m3lr",nil,600],
                                                ["RH_SFM952V",nil,300],
                                                ["RH_spr_mbs",nil,300],
                                                ["RH_ta31rco",nil,1000],
                                                ["RH_eotech553",nil,100],
												["RH_saker",nil,100],
                                                ["RH_peq15",nil,100]
                                        ]
                                ];
                        };
                };
        };
      
        case "rebel":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        case (!license_civ_rebel): {"You don't have a Rebel training license!"};
                        default
                        {
                                ["Mohammed's Jihadi Shop",
                                        [
											["RH_g18",nil,35000],
											["RH_33Rnd_9x19_g18",nil,2500],
											["RH_tec9",nil,75000],              
											["RH_32Rnd_9x19_tec",nil,2500],        
											["RH_muzi",nil,80000],              
											["RH_30Rnd_9x19_UZI",nil,2500],
											["RH_m16a3",nil,180000],
											["RH_m16a4",nil,180000],
											["RH_mk12mod1",nil,250000],
											["30rnd_556x45_STANAG",nil,8000],
											["30Rnd_556x45_Stanag_Tracer_Red",nil,8000],
											["RH_ar10",nil,200000],
											["RH_20Rnd_762x51_AR10",nil,10000],
											["RH_compM4s",nil,5000],
											["RH_eotech533",eotech,5000],
											["RH_shortdot",nil,5000],
											["RH_reflex",nil,5000],
											["RH_g18",nil,3500],
                                               ["RH_33Rnd_9x19_g18",nil,500],
                                               ["RH_tec9",nil,3500],              
                                               ["RH_32Rnd_9x19_tec",nil,200],        
                                               ["RH_muzi",nil,3000],              
                                               ["RH_30Rnd_9x19_UZI",nil,125],
											["RH_ar10",nil,45000],
											["RH_20Rnd_762x51_AR10",nil,300],
 												["26_cartridge",nil,200],
                                                ["RH_17Rnd_9x19_g17",nil,25],
                                                ["RH_33Rnd_9x19_g18",nil,100],
                                                ["RH_7Rnd_45cal_m1911",nil,150],
                                                ["RH_20Rnd_762x51_AR10",nil,100],
                                                ["30rnd_556x45_STANAG",nil,250],
                                                ["30Rnd_556x45_Stanag_Tracer_Red",nil,150],
                                                ["5Rnd_mas_762x51_Stanag",nil,250], 
												["RH_15Rnd_9x19_SIG",nil,100],
                                                ["RH_12Rnd_45cal_usp",nil,100],
                                                ["RH_30Rnd_556x45_Mk262",nil,100],
												["RH_ta31rco",nil,1000],
												["RH_shortdot",nil,1000],
												["RH_reflex",nil,1000],
												["RH_fnp45",nil,300],
                                                ["RH_p226",nil,300],
                                                ["RH_X300",nil,300],
                                                ["RH_reflex",nil,500],
                                                ["RH_m3lr",nil,600],
                                                ["RH_SFM952V",nil,300],
                                                ["RH_spr_mbs",nil,300],
                                                ["RH_ta31rco",nil,1000],
                                                ["RH_eotech553",nil,100],
												["RH_saker",nil,100],
                                                ["RH_peq15",nil,100]	
										]
                                ];
                        };
                };
        };
       
        case "gun":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        case (!license_civ_gun): {"You don't have a Firearms license!"};
                        default
                        {
                                ["Billy Joe's Firearms",
                                        [
                                                ["RH_g17",nil,600],
												["RH_g19",nil,600],
												["RH_g19t",nil,650],
												["RH_17Rnd_9x19_g17",nil,50],
												["RH_m1911",nil,1500],
												["RH_kimber",nil,2500],
												["RH_kimber_nw",nil,1900],
												["RH_7Rnd_45cal_m1911",nil,100]
                                        ]
                                ];
                        };
                };
        };
		
        case "rifle":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        case (!license_civ_rifle): {"You don't have a Rifle license!"};
                        default
                        {
                                ["Hunting Rifle Shop",
                                        [
                                                ["A3L_CZ550",nil,75000],
                                                ["A3L_CZ550mag",nil,50],
                                                ["A3L_CZ550Scope",nil,36000],
												
												["arifle_SDAR_F","Turtle Harpoon",30000],
												["20Rnd_556x45_UW_mag","Underwater magazine",1200]
                                        ]
                                ];
                        };
                };
        };		
       
        case "gang":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        default
                        {
                                ["Hideout Armament",
                                        [
                                                ["A3L_Glock17",nil,17600],
												["A3L_Glock17mag",nil,500],
												
												["A3L_UZI",nil,37250],
												["A3L_UZImag",nil,950]												
                                        ]
                                ];
                        };
                };
        };
       
        case "genstore":
        {
                ["Altis General Store",
                        [
								["ItemMap",nil,69],
								["FirstAidKit",nil,250],
                                ["itemRadio",nil,900],
                                ["Binocular",nil,1250],
                                ["ItemGPS",nil,750],
                                ["ToolKit",nil,500],
                                ["NVGoggles_OPFOR",nil,7500],
                                ["NVGoggles",nil,7500],
                                ["Chemlight_red",nil,200],
                                ["Chemlight_yellow",nil,200],
                                ["Chemlight_green",nil,200],
                                ["Chemlight_blue",nil,200]
                        ]
                ];
        };
};