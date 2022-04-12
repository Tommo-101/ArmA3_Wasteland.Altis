// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
/*********************************************************#
# @@ScriptName: storeConfig.sqf
# @@Author: His_Shadow, AgentRev
# @@Create Date: 2013-09-16 20:40:58
#*********************************************************/

// This tracks which store owner the client is interacting with
currentOwnerName = "";

// Gunstore Weapon List - Gun Store Base List
// Text name, classname, buy cost

// empty name = name is extracted from class config

pistolArray = compileFinal str
[
	// Handguns
	["PM Pistol", "hgun_Pistol_01_F", 125],
	["P07 Pistol", "hgun_P07_F", 150],
	["P07 Pistol (Khaki)", "hgun_P07_khk_F", 150, "noDLC"],
	["P07 Pistol (Black)", "hgun_P07_blk_F", 150, "noDLC"],
	["Rook-40 Pistol", "hgun_Rook40_F", 150],
	["ACP-C2 Pistol", "hgun_ACPC2_F", 175],
	["Zubr Revolver", "hgun_Pistol_heavy_02_F", 175],
	["4-five Pistol", "hgun_Pistol_heavy_01_F", 200],
	["4-five Pistol (Green)", "hgun_Pistol_heavy_01_green_F", 200, "noDLC"],
	["Starter Pistol", "hgun_Pistol_Signal_F", 200]
];

smgArray = compileFinal str
[
	["PDW2000 SMG", "hgun_PDW2000_F", 300],
	["Protector SMG", "SMG_05_F", 300],
	["Sting SMG", "SMG_02_F", 325],
	["Vermin SMG", "SMG_01_F", 325],

	["ADR-97C (Black)", "SMG_03C_black", 300],
	["ADR-97C (Camo)", "SMG_03C_camo", 300],
	["ADR-97C (Hex)", "SMG_03C_hex", 300],
	["ADR-97C (Khaki)","SMG_03C_khaki", 300],
	["ADR-97C TR (Black)", "SMG_03C_TR_black", 325],
	["ADR-97C TR (Camo)", "SMG_03C_TR_camo", 325],
	["ADR-97C TR (Hex)", "SMG_03C_TR_hex", 325],
	["ADR-97C TR (Khaki)", "SMG_03C_TR_khaki", 325],
	["ADR-97 (Black)", "SMG_03_black", 325],
	["ADR-97 (Camo)", "SMG_03_camo", 325],
	["ADR-97 (Hex)", "SMG_03_hex", 325],
	["ADR-97 (Khaki)", "SMG_03_khaki", 325],
	["ADR-97 TR (Black)", "SMG_03_TR_black", 350],
	["ADR-97 TR (Camo)", "SMG_03_TR_camo", 350],
	["ADR-97 TR (Hex)", "SMG_03_TR_hex", 350],
	["ADR-97 TR (Khaki)", "SMG_03_TR_khaki", 350],
	// Shotguns
	["Kozlice Shotgun", "sgun_HunterShotgun_01_f", 350],
	["Kozlice Shotgun (Sawed-Off)", "sgun_HunterShotgun_01_sawedoff_f", 175]
];

rifleArray = compileFinal str
[

	// Underwater Gun
	["SDAR Underwater Rifle", "arifle_SDAR_F", 500],

	// Assault Rifles
	["Mk20 Carbine", "arifle_Mk20C_plain_F", 550],
	["Mk20 Carbine (Camo)", "arifle_Mk20C_F", 550],
	["Mk20 Rifle", "arifle_Mk20_plain_F", 600],
	["Mk20 Rifle (Camo)", "arifle_Mk20_F", 600],
	["Mk20 EGLM Rifle", "arifle_Mk20_GL_plain_F", 650],
	["Mk20 EGLM Rifle (Camo)", "arifle_Mk20_GL_F", 650],

	["TRG-20 Carbine", "arifle_TRG20_F", 550],
	["TRG-21 Rifle ", "arifle_TRG21_F", 600],
	["TRG-21 EGLM Rifle", "arifle_TRG21_GL_F", 650],

	["Katiba Carbine", "arifle_Katiba_C_F", 550],
	["Katiba Rifle", "arifle_Katiba_F", 600],
	["Katiba GL Rifle", "arifle_Katiba_GL_F", 650],

	["MX Carbine", "arifle_MXC_F", 550],
	["MX Carbine (Black)", "arifle_MXC_Black_F", 550],
	["MX Carbine (Khaki)", "arifle_MXC_khk_F", 550, "noDLC"],
	["MX Rifle", "arifle_MX_F", 600],
	["MX Rifle (Black)", "arifle_MX_Black_F", 600],
	["MX Rifle (Khaki)", "arifle_MX_khk_F", 600, "noDLC"],
	["MX 3GL Rifle", "arifle_MX_GL_F", 650],
	["MX 3GL Rifle (Black)", "arifle_MX_GL_Black_F", 650],
	["MX 3GL Rifle (Khaki)", "arifle_MX_GL_khk_F", 650, "noDLC"],

	["SPAR-16 Rifle", "arifle_SPAR_01_blk_F", 600],
	["SPAR-16 Rifle (Khaki)", "arifle_SPAR_01_khk_F", 600],
	["SPAR-16 Rifle (Sand)", "arifle_SPAR_01_snd_F", 600],
	["SPAR-16 GL Rifle", "arifle_SPAR_01_GL_blk_F", 650],
	["SPAR-16 GL Rifle (Khaki)", "arifle_SPAR_01_GL_khk_F", 650],
	["SPAR-16 GL Rifle (Sand)", "arifle_SPAR_01_GL_snd_F", 250],

	["CAR-95 Rifle", "arifle_CTAR_blk_F", 600],
	["CAR-95 Rifle (Hex)", "arifle_CTAR_hex_F", 600],
	["CAR-95 Rifle (G Hex)", "arifle_CTAR_ghex_F", 600],
	["CAR-95 GL Rifle", "arifle_CTAR_GL_blk_F", 650],
	["CAR-95 GL Rifle (Hex)", "arifle_CTAR_GL_hex_F", 650],
	["CAR-95 GL Rifle (G Hex)", "arifle_CTAR_GL_ghex_F", 650],
	["Type 115 Stealth Rifle", "arifle_ARX_blk_F", 700],
	["Type 115 Stealth Rifle (Hex)", "arifle_ARX_hex_F", 700],
	["Type 115 Stealth Rifle (G Hex)", "arifle_ARX_ghex_F", 700],

	//RHS
	["Type 115 Stealth Rifle (G Hex)", "rhs_weap_sr25_ec", 700],

	["AKS-74U Carbine", "arifle_AKS_F", 550],
	["AKM Rifle", "arifle_AKM_F", 600],
	["AKU-12 Carbine", "arifle_AK12U_F", 600],
	["AKU-12 Carbine (Arid)", "arifle_AK12U_arid_F", 600],
	["AKU-12 Carbine (Lush)", "arifle_AK12U_lush_F", 600],
	["AK-12 Rifle", "arifle_AK12_F", 650],
	["AK-12 Rifle (Arid)", "arifle_AK12_arid_F", 650],
	["AK-12 Rifle (Lush)", "arifle_AK12_lush_F", 650],
	["AK-12 GL Rifle", "arifle_AK12_GL_F", 700],
	["AK-12 GL Rifle (Arid)", "arifle_AK12_GL_arid_F", 700],
	["AK-12 GL Rifle (Lush)", "arifle_AK12_GL_lush_F", 700],

	["Promet Rifle", "arifle_MSBS65_F", 600, "noDLC"],
	["Promet Rifle (Black)", "arifle_MSBS65_black_F", 600, "noDLC"],
	["Promet Rifle (Camo)", "arifle_MSBS65_camo_F", 600, "noDLC"],
	["Promet Rifle (Sand)", "arifle_MSBS65_sand_F", 600, "noDLC"],
	["Promet GL Rifle", "arifle_MSBS65_GL_F", 650, "noDLC"],
	["Promet GL Rifle (Black)", "arifle_MSBS65_GL_black_F", 650, "noDLC"],
	["Promet GL Rifle (Camo)", "arifle_MSBS65_GL_camo_F", 650, "noDLC"],
	["Promet GL Rifle (Sand)", "arifle_MSBS65_GL_sand_F", 650, "noDLC"],
	["Promet SG Rifle", "arifle_MSBS65_UBS_F", 650, "noDLC"],
	["Promet SG Rifle (Black)", "arifle_MSBS65_UBS_black_F", 650, "noDLC"],
	["Promet SG Rifle (Camo)", "arifle_MSBS65_UBS_camo_F", 650, "noDLC"],
	["Promet SG Rifle (Sand)", "arifle_MSBS65_UBS_sand_F", 650, "noDLC"]
];

sniperArray = compileFinal str
[
	["Mk14 Rifle (Camo)", "srifle_DMR_06_camo_F", 900, "noDLC"],
	["Mk14 Rifle (Olive)", "srifle_DMR_06_olive_F", 900, "noDLC"],
	["Mk14 Rifle (Classic)", "srifle_DMR_06_hunter_F", 900, "noDLC"],
	["Mk18 ABR Rifle", "srifle_EBR_F", 950],
	["Rahim DMR Rifle", "srifle_DMR_01_F", 1000],
	["Cyrus Rifle", "srifle_DMR_05_blk_F", 1250],
	["Cyrus Rifle (Hex)", "srifle_DMR_05_hex_F", 1250],
	["Cyrus Rifle (Tan)", "srifle_DMR_05_tan_f", 1250],

	["Promet MR Rifle", "arifle_MSBS65_Mark_F", 700, "noDLC"],
	["Promet MR Rifle (Black)", "arifle_MSBS65_Mark_black_F", 700, "noDLC"],
	["Promet MR Rifle (Camo)", "arifle_MSBS65_Mark_camo_F", 700, "noDLC"],
	["Promet MR Rifle (Sand)", "arifle_MSBS65_Mark_sand_F", 700, "noDLC"],
	["MXM Rifle", "arifle_MXM_F", 700],
	["MXM Rifle (Black)", "arifle_MXM_Black_F", 700],
	["MXM Rifle (Khaki)", "arifle_MXM_khk_F", 700, "noDLC"],
	["CMR-76 Stealth Rifle", "srifle_DMR_07_blk_F", 1000],
	["CMR-76 Stealth Rifle (Hex)", "srifle_DMR_07_hex_F", 1000],
	["CMR-76 Stealth Rifle (G Hex)", "srifle_DMR_07_ghex_F", 1000],
	["SPAR-17 Rifle", "arifle_SPAR_03_blk_F", 1050],
	["SPAR-17 Rifle (Khaki)", "arifle_SPAR_03_khk_F", 1050],
	["SPAR-17 Rifle (Sand)", "arifle_SPAR_03_snd_F", 1050],

	["Mk-I EMR Rifle", "srifle_DMR_03_F", 1500],
	["Mk-I EMR Rifle (Camo)", "srifle_DMR_03_multicam_F", 1500],
	["Mk-I EMR Rifle (Khaki)", "srifle_DMR_03_khaki_F", 1500],
	["Mk-I EMR Rifle (Sand)", "srifle_DMR_03_tan_F", 1500],
	["Mk-I EMR Rifle (Woodland)", "srifle_DMR_03_woodland_F", 1500],
	["MAR-10 Rifle", "srifle_DMR_02_F", 1250],
	["MAR-10 Rifle (Camo)", "srifle_DMR_02_camo_F", 1250],
	["MAR-10 Rifle (Sand)", "srifle_DMR_02_sniper_F", 1250],
	["ASP-1 Kir Rifle", "srifle_DMR_04_F", 1250],
	["ASP-1 Kir Rifle (Tan)", "srifle_DMR_04_tan_F", 1250],
	["M320 LRR Sniper", "srifle_LRR_LRPS_F", 3000],
	["M320 LRR Sniper (Camo)", "srifle_LRR_camo_LRPS_F", 3200],
	["M320 LRR Sniper (Tropic)", "srifle_LRR_tna_LRPS_F", 3200, "noDLC"],
	["GM6 Lynx Sniper", "srifle_GM6_LRPS_F", 3250],
	["GM6 Lynx Sniper (Camo)", "srifle_GM6_camo_LRPS_F", 3500],
	["GM6 Lynx Sniper (G Hex)", "srifle_GM6_ghex_LRPS_F", 3500, "noDLC"],
	["M107", "rhs_weap_M107", 3500],
	["M107 (Desert)", "rhs_weap_M107_d", 3500],
	["M107 (Woodland)", "rhs_weap_M107_w", 3500]
];

lmgArray = compileFinal str
[
	["MX SW LMG", "arifle_MX_SW_F", 1300],
	["MX SW LMG (Black)", "arifle_MX_SW_Black_F", 1325],
	["MX SW LMG (Khaki)", "arifle_MX_SW_khk_F", 1325, "noDLC"],
	["Mk200 LMG", "LMG_Mk200_F", 1400],
	["Mk200 LMG (Black)", "LMG_Mk200_black_F", 1400, "noDLC"],
	["Zafir LMG", "LMG_Zafir_F", 1500],

	["SPAR-16S LMG", "arifle_SPAR_02_blk_F", 1300],
	["SPAR-16S LMG (Khaki)", "arifle_SPAR_02_khk_F", 1300],
	["SPAR-16S LMG (Sand)", "arifle_SPAR_02_snd_F", 1300],
	["CAR-95-1 LMG", "arifle_CTARS_blk_F", 1300],
	["CAR-95-1 LMG (Hex)", "arifle_CTARS_hex_F", 1300],
	["CAR-95-1 LMG (G Hex)", "arifle_CTARS_ghex_F", 1300],
	["LIM-85 LMG", "LMG_03_F", 1350],

	["RPK-12 LMG", "arifle_RPK12_F", 1500],
	["RPK-12 LMG (Arid)", "arifle_RPK12_arid_F", 1500],
	["RPK-12 LMG (Lush)", "arifle_RPK12_lush_F", 1500],

	["SPMG MMG (Sand)", "MMG_02_sand_F", 2750],
	["SPMG MMG (MTP)", "MMG_02_camo_F", 2750],
	["SPMG MMG (Black)", "MMG_02_black_F", 2750],
	["Navid MMG (Tan)", "MMG_01_tan_F", 3000],
	["Navid MMG (Hex)", "MMG_01_hex_F", 3000]
];

launcherArray = compileFinal str
[
	["RPG-7", "launch_RPG7_F", 2000],
	["RPG-42 Alamut", "launch_RPG32_F", 2250],
	["RPG-42 Alamut (G Hex)", "launch_RPG32_ghex_F", 2250, "noDLC"],
	["RPG-42 Alamut (Green)", "launch_RPG32_green_F", 2250, "noDLC"],
	["PCML", "launch_NLAW_F", 2750],
	["MAAWS Mk4 Mod 0 (Green)", "launch_MRAWS_green_rail_F", 2500, "noDLC"], // RPG-42 and MAAWS are similar, but MAAWS has longer range
	["MAAWS Mk4 Mod 0 (Olive)", "launch_MRAWS_olive_rail_F", 2500, "noDLC"],
	["MAAWS Mk4 Mod 0 (Sand)", "launch_MRAWS_sand_rail_F", 2500, "noDLC"],
	["MAAWS Mk4 Mod 1 (Green)", "launch_MRAWS_green_F", 3000, "noDLC"], // MAAWS Mod 1 has nightvision and laser rangefinder, while Mod 0 doesn't
	["MAAWS Mk4 Mod 1 (Olive)", "launch_MRAWS_olive_F", 3000, "noDLC"],
	["MAAWS Mk4 Mod 1 (Sand)", "launch_MRAWS_sand_F", 3000, "noDLC"],
	["9M135 Vorona (Brown)", "launch_O_Vorona_brown_F", 4500, "noDLC"],
	["9M135 Vorona (Green)", "launch_O_Vorona_green_F", 4500, "noDLC"],
	["Titan MPRL Compact (Sand)", "launch_Titan_short_F", 4250],
	["Titan MPRL Compact (Coyote)", "launch_O_Titan_short_F", 4250],
	["Titan MPRL Compact (Olive)", "launch_I_Titan_short_F", 4250],
	["Titan MPRL Compact (Tropic)", "launch_B_Titan_short_tna_F", 4250, "noDLC"],
	["Titan MPRL Compact (G Hex)", "launch_O_Titan_short_ghex_F", 4250, "noDLC"],
	["Titan MPRL AA (Sand)", "launch_Titan_F", 3500],
	["Titan MPRL AA (Hex)", "launch_O_Titan_F", 3500],
	["Titan MPRL AA (Digi)", "launch_I_Titan_F", 3500],
	["Titan MPRL AA (Tropic)", "launch_B_Titan_tna_F", 3500, "noDLC"],
	["Titan MPRL AA (G Hex)", "launch_O_Titan_ghex_F", 3500, "noDLC"],
	["Titan MPRL AA (Geometric)", "launch_I_Titan_eaf_F", 3500, "noDLC"]
];

allGunStoreFirearms = compileFinal str (call pistolArray + call smgArray + call rifleArray + call lmgArray + call sniperArray + call launcherArray);

staticGunsArray = compileFinal str
[
	// ["Vehicle Ammo Crate", "Box_NATO_AmmoVeh_F", 2500],
	["Static Titan AT 4Rnd", "B_static_AT_F", 9000], // Static launchers only have 4 ammo, hence the low price
	["Static Titan AT 4Rnd", "O_static_AT_F", 9000],
	["Static Titan AT 4Rnd", "I_static_AT_F", 9000],
	["Static Titan AA 4Rnd", "B_static_AA_F", 7500],
	["Static Titan AA 4Rnd", "O_static_AA_F", 7500],
	["Static Titan AA 4Rnd", "I_static_AA_F", 7500],
	["M2 HMG .50", "B_G_HMG_02_F", 4000],
	["M2 HMG .50", "O_G_HMG_02_F", 4000],
	["M2 HMG .50", "I_G_HMG_02_F", 4000],
	["M2 HMG .50 (Raised)", "B_G_HMG_02_high_F", 4200],
	["M2 HMG .50 (Raised)", "O_G_HMG_02_high_F", 4200],
	["M2 HMG .50 (Raised)", "I_G_HMG_02_high_F", 4200],
	["Mk30 HMG .50 Low tripod", "B_HMG_01_F", 5000],
	["Mk30 HMG .50 Low tripod", "O_HMG_01_F", 5000],
	["Mk30 HMG .50 Low tripod", "I_HMG_01_F", 5000],
	["Mk30A HMG .50 Sentry", "B_HMG_01_A_F", 15000],
	["Mk30A HMG .50 Sentry", "O_HMG_01_A_F", 15000],
	["Mk30A HMG .50 Sentry", "I_HMG_01_A_F", 15000],
	["Mk30 HMG .50 High tripod", "B_HMG_01_high_F", 5500],
	["Mk30 HMG .50 High tripod", "O_HMG_01_high_F", 5500],
	["Mk30 HMG .50 High tripod", "I_HMG_01_high_F", 5500],
	["Mk32 GMG 20mm Low tripod", "B_GMG_01_F", 7500],
	["Mk32 GMG 20mm Low tripod", "O_GMG_01_F", 7500],
	["Mk32 GMG 20mm Low tripod", "I_GMG_01_F", 7500],
	["Mk32A GMG 20mm Sentry", "B_GMG_01_A_F", 20000],
	["Mk32A GMG 20mm Sentry", "O_GMG_01_A_F", 20000],
	["Mk32A GMG 20mm Sentry", "I_GMG_01_A_F", 20000],
	["Mk32 GMG 20mm High tripod", "B_GMG_01_high_F", 10000],
	["Mk32 GMG 20mm High tripod", "O_GMG_01_high_F", 10000],
	["Mk32 GMG 20mm High tripod", "I_GMG_01_high_F", 10000],
	["Mk6 Mortar", "B_Mortar_01_F", 25000],
	["Mk6 Mortar", "O_Mortar_01_F", 25000],
	["Mk6 Mortar", "I_Mortar_01_F", 25000],
	["M119 Howitzer", "RHS_M119_D", 45000],
	["TOW tripod", "RHS_TOW_TriPod_WD", 10000],
	["M2 .50 High tripod", "RHS_M2StaticMG_WD", 10000],
	["MK19 Low tripod", "RHS_MK19_TriPod_WD", 12000]
];

throwputArray = compileFinal str
[
	["RGN Mini Grenade", "MiniGrenade", 150],
	["RGO Frag Grenade", "HandGrenade", 200],
	["APERS Tripwire Mine", "APERSTripMine_Wire_Mag", 400],
	["APERS Bounding Mine", "APERSBoundingMine_Range_Mag", 420],
	["APERS Mine", "APERSMine_Range_Mag", 450],
	["APERS Mine Dispenser", "APERSMineDispenser_Mag", 2000],
	["Claymore Charge", "ClaymoreDirectionalMine_Remote_Mag", 475],
	["M6 SLAM Mine", "SLAMDirectionalMine_Wire_Mag", 650],
	["AT Mine", "ATMine_Range_Mag", 700],
	["Explosive Charge", "DemoCharge_Remote_Mag", 750],
	["Explosive Satchel", "SatchelCharge_Remote_Mag", 1000],
	["Smoke Grenade (White)", "SmokeShell", 150],
	["Smoke Grenade (Purple)", "SmokeShellPurple", 150],
	["Smoke Grenade (Blue)", "SmokeShellBlue", 150],
	["Smoke Grenade (Green)", "SmokeShellGreen", 150],
	["Smoke Grenade (Yellow)", "SmokeShellYellow", 150],
	["Smoke Grenade (Orange)", "SmokeShellOrange", 150],
	["Smoke Grenade (Red)", "SmokeShellRed", 150],
	["Small IED (Urban)", "IEDUrbanSmall_Remote_Mag", 2000],
	["Large IED (Urban)", "IEDUrbanBig_Remote_Mag", 2500],
	["Chemlight (Blue)", "Chemlight_blue", 75],
	["Chemlight (Green)", "Chemlight_green", 75],
	["Chemlight (Yellow)", "Chemlight_yellow", 75],
	["Chemlight (Red)", "Chemlight_red", 75],
	["IR Designator Grenade", "B_IR_Grenade", 100, "WEST"],
	["IR Designator Grenade", "O_IR_Grenade", 100, "EAST"],
	["IR Designator Grenade", "I_IR_Grenade", 100, "GUER"]
];

//Gun Store Ammo List
//Text name, classname, buy cost
ammoArray = compileFinal str
[
	["9mm 10Rnd Mag", "10Rnd_9x21_Mag", 25],
	["9mm 16Rnd Mag", "16Rnd_9x21_Mag", 30],
	["9mm 30Rnd Mag", "30Rnd_9x21_Mag", 35],
	["9mm 30Rnd SMG Mag", "30Rnd_9x21_Mag_SMG_02", 35],
	[".45 ACP 6Rnd Cylinder", "6Rnd_45ACP_Cylinder", 25],
	[".45 ACP 9Rnd Mag", "9Rnd_45ACP_Mag", 30],
	[".45 ACP 11Rnd Mag", "11Rnd_45ACP_Mag", 35],
	[".45 ACP 30Rnd Vermin Mag", "30Rnd_45ACP_MAG_SMG_01", 40],
	[".45 ACP 30Rnd Vermin Mag T-G", "30Rnd_45ACP_Mag_SMG_01_tracer_green", 35],
	["5.45mm 30Rnd Mag", "30Rnd_545x39_Mag_F", 70],
	["5.45mm 30Rnd Mag T-Y", "30Rnd_545x39_Mag_Tracer_F", 75],
	["5.45mm 30Rnd Mag T-R", "30Rnd_545x39_Mag_Tracer_Green_F", 75],
	["5.56mm 20Rnd Underwater Mag", "20Rnd_556x45_UW_mag", 90],
	["5.56mm 30Rnd Mag", "30Rnd_556x45_Stanag", 70],
	["5.56mm 30Rnd Mag T-G", "30Rnd_556x45_Stanag_Tracer_Green", 75],
	["5.56mm 30Rnd Mag T-Y", "30Rnd_556x45_Stanag_Tracer_Yellow", 75],
	["5.56mm 30Rnd Mag T-R", "30Rnd_556x45_Stanag_Tracer_Red", 75],
	["5.56mm 30Rnd Mag (Sand)", "30Rnd_556x45_Stanag_Sand", 75],
	["5.56mm 30Rnd Mag (Sand) T-G", "30Rnd_556x45_Stanag_Sand_Tracer_Green", 70],
	["5.56mm 30Rnd Mag (Sand) T-Y", "30Rnd_556x45_Stanag_Sand_Tracer_Yellow", 70],
	["5.56mm 30Rnd Mag (Sand) T-R", "30Rnd_556x45_Stanag_Sand_Tracer_Red", 70],
	["5.56mm 150Rnd Mag", "150Rnd_556x45_Drum_Mag_F", 100],
	["5.56mm 150Rnd Mag T-R", "150Rnd_556x45_Drum_Mag_Tracer_F", 185],
	["5.56mm 150Rnd Mag (Khaki)", "150Rnd_556x45_Drum_Green_Mag_F", 110],
	["5.56mm 150Rnd Mag (Khaki) T-R", "150Rnd_556x45_Drum_Green_Mag_Tracer_F", 185],
	["5.56mm 150Rnd Mag (Sand)", "150Rnd_556x45_Drum_Sand_Mag_F", 110],
	["5.56mm 150Rnd Mag (Sand) T-R", "150Rnd_556x45_Drum_Sand_Mag_Tracer_F", 185],
	["5.56mm 200Rnd Box", "200Rnd_556x45_Box_F", 225],
	["5.56mm 200Rnd Box T-Y", "200Rnd_556x45_Box_Tracer_F", 200],
	["5.56mm 200Rnd Box T-R", "200Rnd_556x45_Box_Tracer_Red_F", 200],
	["5.7mm 50Rnd Mag", "50Rnd_570x28_SMG_03", 80],
	["5.8mm 30Rnd Mag", "30Rnd_580x42_Mag_F", 80],
	["5.8mm 30Rnd Mag T-G", "30Rnd_580x42_Mag_Tracer_F", 85],
	["5.8mm 100Rnd Mag", "100Rnd_580x42_Mag_F", 200],
	["5.8mm 100Rnd Mag T-G", "100Rnd_580x42_Mag_Tracer_F", 275],
	["5.8mm 100Rnd Mag (Hex)", "100Rnd_580x42_hex_Mag_F", 210],
	["5.8mm 100Rnd Mag (Hex) T-G", "100Rnd_580x42_hex_Mag_Tracer_F", 285],
	["5.8mm 100Rnd Mag (G Hex)", "100Rnd_580x42_ghex_Mag_F", 210],
	["5.8mm 100Rnd Mag (G Hex) T-G", "100Rnd_580x42_ghex_Mag_Tracer_F", 285],
	["6.5mm 20Rnd CMR Mag", "20Rnd_650x39_Cased_Mag_F", 215],
	["6.5mm 30Rnd Promet Mag", "30Rnd_65x39_caseless_msbs_mag", 220],
	["6.5mm 30Rnd Promet Mag T-R", "30Rnd_65x39_caseless_msbs_mag_Tracer", 215],
	["6.5mm 30Rnd Katiba Mag", "30Rnd_65x39_caseless_green", 220],
	["6.5mm 30Rnd Katiba Mag T-G", "30Rnd_65x39_caseless_green_mag_Tracer", 215],
	["6.5mm 30Rnd MX Mag (Sand)", "30Rnd_65x39_caseless_mag", 220],
	["6.5mm 30Rnd MX Mag (Sand) T-R", "30Rnd_65x39_caseless_mag_Tracer", 215],
	["6.5mm 30Rnd MX Mag (Black)", "30Rnd_65x39_caseless_black_mag", 225],
	["6.5mm 30Rnd MX Mag (Black) T-R", "30Rnd_65x39_caseless_black_mag_Tracer", 225],
	["6.5mm 30Rnd MX Mag (Khaki)", "30Rnd_65x39_caseless_khaki_mag", 225],
	["6.5mm 30Rnd MX Mag (Khaki) T-R", "30Rnd_65x39_caseless_khaki_mag_Tracer", 225],
	["6.5mm 100Rnd MX Mag (Sand)", "100Rnd_65x39_caseless_mag", 275],
	["6.5mm 100Rnd MX Mag (Sand) T-R", "100Rnd_65x39_caseless_mag_Tracer", 250],
	["6.5mm 100Rnd MX Mag (Black)", "100Rnd_65x39_caseless_black_mag", 285],
	["6.5mm 100Rnd MX Mag (Black) T-R", "100Rnd_65x39_caseless_black_mag_tracer", 260],
	["6.5mm 100Rnd MX Mag (Khaki)", "100Rnd_65x39_caseless_khaki_mag", 285],
	["6.5mm 100Rnd MX Mag (Khaki) T-R", "100Rnd_65x39_caseless_khaki_mag_tracer", 260],
	["6.5mm 200Rnd Belt Case", "200Rnd_65x39_cased_Box", 250],
	["6.5mm 200Rnd Belt Case T-Y", "200Rnd_65x39_cased_Box_Tracer", 225],
	["6.5mm 200Rnd Belt Case T-R", "200Rnd_65x39_cased_Box_Tracer_Red", 225],
	["7.62mm 10Rnd Rahim Mag", "10Rnd_762x54_Mag", 315],
	["7.62mm 20Rnd Mag", "20Rnd_762x51_Mag", 325],
	["7.62mm 30Rnd AKM Mag", "30Rnd_762x39_Mag_F", 320],
	["7.62mm 30Rnd AKM Mag T-Y", "30Rnd_762x39_Mag_Tracer_F", 315],
	["7.62mm 30Rnd AKM Mag T-G", "30Rnd_762x39_Mag_Tracer_Green_F", 315],
	["7.62mm 30Rnd AK12 Mag", "30Rnd_762x39_AK12_Mag_F", 320],
	["7.62mm 30Rnd AK12 Mag T-Y", "30Rnd_762x39_AK12_Mag_Tracer_F", 315],
	["7.62mm 30Rnd AK12 Mag (Arid)", "30rnd_762x39_AK12_Arid_Mag_F", 325],
	["7.62mm 30Rnd AK12 Mag (Arid) T-Y", "30rnd_762x39_AK12_Arid_Mag_Tracer_F", 320],
	["7.62mm 30Rnd AK12 Mag (Lush)", "30rnd_762x39_AK12_Lush_Mag_F", 325],
	["7.62mm 30Rnd AK12 Mag (Lush) T-Y", "30rnd_762x39_AK12_Lush_Mag_Tracer_F", 320],
	["7.62mm 75Rnd AKM Mag", "75Rnd_762x39_Mag_F", 175],
	["7.62mm 75Rnd AKM Mag T-Y", "75Rnd_762x39_Mag_Tracer_F", 165],
	["7.62mm 75Rnd AK12 Mag", "75rnd_762x39_AK12_Mag_F", 175],
	["7.62mm 75Rnd AK12 Mag T-Y", "75rnd_762x39_AK12_Mag_Tracer_F", 165],
	["7.62mm 75Rnd AK12 Mag (Arid)", "75rnd_762x39_AK12_Arid_Mag_F", 180],
	["7.62mm 75Rnd AK12 Mag (Arid) T-Y", "75rnd_762x39_AK12_Arid_Mag_Tracer_F", 170],
	["7.62mm 75Rnd AK12 Mag (Lush)", "75rnd_762x39_AK12_Lush_Mag_F", 180],
	["7.62mm 75Rnd AK12 Mag (Lush) T-Y", "75rnd_762x39_AK12_Lush_Mag_Tracer_F", 170],
	["7.62mm 150Rnd Box", "150Rnd_762x54_Box", 350],
	["7.62mm 150Rnd Box T-G", "150Rnd_762x54_Box_Tracer", 325],
	[".338 LM 10Rnd Mag", "10Rnd_338_Mag", 250],
	[".338 NM 130Rnd Belt", "130Rnd_338_Mag", 950],
	["9.3mm 10Rnd Mag", "10Rnd_93x64_DMR_05_Mag", 150],
	["9.3mm 150Rnd Belt", "150Rnd_93x64_Mag", 1050],
	[".408 7Rnd Cheetah Mag", "7Rnd_408_Mag", 150],
	["12.7mm 5Rnd Mag", "5Rnd_127x108_Mag", 250],
	["12.7mm 5Rnd Armor-Piercing Mag", "5Rnd_127x108_APDS_Mag", 260],
	["12.7mm 10Rnd Subsonic Mag", "10Rnd_127x54_Mag", 275],
	["12 Gauge 2Rnd Pellets", "2Rnd_12Gauge_Pellets", 65],
	["12 Gauge 2Rnd Slug", "2Rnd_12Gauge_Slug", 65],
	["12 Gauge 6Rnd Pellets", "6Rnd_12Gauge_Pellets", 90],
	["12 Gauge 6Rnd Slug", "6Rnd_12Gauge_Slug", 100],
	["Signal Flares (Green)", "6Rnd_GreenSignal_F", 45],
	["Signal Flares (Red)", "6Rnd_RedSignal_F", 45],
	///RHS
	[".50 10Rnd M33 M107 Mag", "rhsusf_mag_10Rnd_STD_50BMG_M33", 350],
	[".50 10Rnd MK211 M107 Mag", "rhsusf_mag_10Rnd_STD_50BMG_mk211", 350],
	["7.62mm 20Rnd M118 Mag", "rhsusf_20Rnd_762x51_m118_special_Mag", 60],
	// RHS
	[".50 BW 10Rnd Mag", "10Rnd_50BW_Mag_F", 350],             //                 hit                      hit,  radius
	["PG-7VM HEAT Grenade", "RPG7_F", 900],                   // Direct damage:  343     | Splash damage:  13,  3.0m     | Guidance: none
	["RPG-42 AT Rocket", "RPG32_F", 1000],                     //                 422     |                 28,  2.5m     |           none
	["RPG-42 HE Rocket", "RPG32_HE_F", 1000],                  //                 200     |                 50,  6.0m     |           none
	["MAAWS HEAT 75 Rocket", "MRAWS_HEAT_F", 1500],            //                 495     |                 14,  2.0m     |           none
	["MAAWS HEAT 55 Rocket", "MRAWS_HEAT55_F", 1450],          //                 450     |                 14,  2.0m     |           none
	["MAAWS HE 44 Rocket", "MRAWS_HE_F", 1000],                //                 200     |                 50,  6.0m     |           none
	["9M135 HEAT Missile", "Vorona_HEAT", 2000],              //                 634     |                 28,  2.5m     |           mouse
	["9M135 HE Missile", "Vorona_HE", 1750],                   //                 220     |                 45,  8.0m     |           mouse
	["PCML AT Missile", "NLAW_F", 1750],                       //                 462     |                 25,  2.4m     |           laser/IR, cold/hot ground vehicles
	["Titan Anti-Tank Missile", "Titan_AT", 3000],            //                 515     |                 20,  2.0m     |           mouse, laser/IR, hot ground vehicles
	["Titan Anti-Personnel Missile", "Titan_AP", 1750],        //                 100     |                 25, 10.0m     |           mouse, laser/IR
	["Titan AA Missile", "Titan_AA", 1750],                    //                  80     |                 60,  6.0m     |           aircraft
	["40mm HE Grenade Round", "1Rnd_HE_Grenade_shell", 225],
	["40mm 3Rnd HE Grenades", "3Rnd_HE_Grenade_shell", 750],
	["40mm Smoke Round (White)", "1Rnd_Smoke_Grenade_shell", 100],
	["40mm Smoke Round (Purple)", "1Rnd_SmokePurple_Grenade_shell", 100],
	["40mm Smoke Round (Blue)", "1Rnd_SmokeBlue_Grenade_shell", 100],
	["40mm Smoke Round (Green)", "1Rnd_SmokeGreen_Grenade_shell", 100],
	["40mm Smoke Round (Yellow)", "1Rnd_SmokeYellow_Grenade_shell", 100],
	["40mm Smoke Round (Orange)", "1Rnd_SmokeOrange_Grenade_shell", 100],
	["40mm Smoke Round (Red)", "1Rnd_SmokeRed_Grenade_shell", 100],
	["40mm 3Rnd Smokes (White)", "3Rnd_Smoke_Grenade_shell", 300],
	["40mm 3Rnd Smokes (Purple)", "3Rnd_SmokePurple_Grenade_shell", 300],
	["40mm 3Rnd Smokes (Blue)", "3Rnd_SmokeBlue_Grenade_shell", 300],
	["40mm 3Rnd Smokes (Green)", "3Rnd_SmokeGreen_Grenade_shell", 300],
	["40mm 3Rnd Smokes (Yellow)", "3Rnd_SmokeYellow_Grenade_shell", 300],
	["40mm 3Rnd Smokes (Orange)", "3Rnd_SmokeOrange_Grenade_shell", 300],
	["40mm 3Rnd Smokes (Red)", "3Rnd_SmokeRed_Grenade_shell", 300],
	["40mm Flare Round (White)", "UGL_FlareWhite_F", 125],
	["40mm Flare Round (Green)", "UGL_FlareGreen_F", 125],
	["40mm Flare Round (Yellow)", "UGL_FlareYellow_F", 125],
	["40mm Flare Round (Red)", "UGL_FlareRed_F", 125],
	["40mm Flare Round (IR)", "UGL_FlareCIR_F", 125],
	["40mm 3Rnd Flares (White)", "3Rnd_UGL_FlareWhite_F", 350],
	["40mm 3Rnd Flares (Green)", "3Rnd_UGL_FlareGreen_F", 350],
	["40mm 3Rnd Flares (Yellow)", "3Rnd_UGL_FlareYellow_F", 350],
	["40mm 3Rnd Flares (Red)", "3Rnd_UGL_FlareRed_F", 350],
	["40mm 3Rnd Flares (IR)", "3Rnd_UGL_FlareCIR_F", 350]
];

//Gun Store item List
//Text name, classname, buy cost, item class
accessoriesArray = compileFinal str
[
	["Suppressor 9mm", "muzzle_snds_L", 250, "item"],
	["Suppressor .45 ACP", "muzzle_snds_acp", 175, "item"],
	["Suppressor 5.56mm", "muzzle_snds_M", 200, "item"],
	["Suppressor 5.56mm (Khaki)", "muzzle_snds_m_khk_F", 200, "item", "noDLC"],
	["Suppressor 5.56mm (Sand)", "muzzle_snds_m_snd_F", 200, "item", "noDLC"],
	["Suppressor 5.7mm", "muzzle_snds_570", 175, "item"],
	["Suppressor 5.8mm Stealth", "muzzle_snds_58_blk_F", 200, "item"],
	["Suppressor 5.8mm Stealth (Hex)", "muzzle_snds_58_hex_F", 200, "item"],
	["Suppressor 5.8mm Stealth (G Hex)", "muzzle_snds_58_ghex_F", 200, "item"],
	["Suppressor 6.5mm", "muzzle_snds_H", 200, "item"],
	["Suppressor 6.5mm (Khaki)", "muzzle_snds_H_khk_F", 200, "item", "noDLC"],
	["Suppressor 6.5mm (Sand)", "muzzle_snds_H_snd_F", 200, "item", "noDLC"],
	["Suppressor 6.5mm LMG", "muzzle_snds_H_MG", 225, "item"],
	["Suppressor 6.5mm LMG (Black)", "muzzle_snds_H_MG_blk_F", 225, "item", "noDLC"],
	["Suppressor 6.5mm LMG (Khaki)", "muzzle_snds_H_MG_khk_F", 225, "item", "noDLC"],
	["Suppressor 6.5mm Stealth", "muzzle_snds_65_TI_blk_F", 225, "item"],
	["Suppressor 6.5mm Stealth (Hex)", "muzzle_snds_65_TI_hex_F", 225, "item"],
	["Suppressor 6.5mm Stealth (G Hex)", "muzzle_snds_65_TI_ghex_F", 225, "item"],
	["Suppressor 7.62mm", "muzzle_snds_B", 300, "item"],
	["Suppressor 7.62mm (Khaki)", "muzzle_snds_B_khk_F", 300, "item", "noDLC"],
	["Suppressor 7.62mm (Sand)", "muzzle_snds_B_snd_F", 300, "item", "noDLC"],
	["Suppressor 7.62mm AK (Arid)", "muzzle_snds_B_arid_F", 300, "item"],
	["Suppressor 7.62mm AK (Lush)", "muzzle_snds_B_lush_F", 300, "item"],
	["Suppressor .338", "muzzle_snds_338_black", 350, "item"],
	["Suppressor .338 (Green)", "muzzle_snds_338_green", 350, "item"],
	["Suppressor .338 (Sand)", "muzzle_snds_338_sand", 1375, "item"],
	["Suppressor 9.3mm", "muzzle_snds_93mmg", 475, "item"],
	["Suppressor 9.3mm (Tan)", "muzzle_snds_93mmg_tan", 475, "item"],
	["Bipod (NATO)", "bipod_01_F_blk", 200, "item", "noDLC"],
	["Bipod (CSAT)", "bipod_02_F_blk", 200, "item", "noDLC"],
	["Bipod (AAF)", "bipod_03_F_blk", 200, "item", "noDLC"],
	["Bipod (MTP)", "bipod_01_F_mtp", 200, "item", "noDLC"],
	["Bipod (Hex)", "bipod_02_F_hex", 200, "item", "noDLC"],
	["Bipod (Olive)", "bipod_03_F_oli", 200, "item", "noDLC"],
	["Bipod (Sand)", "bipod_01_F_snd", 200, "item", "noDLC"],
	["Bipod (Tan)", "bipod_02_F_tan", 200, "item", "noDLC"],
	["Bipod (Khaki)", "bipod_01_F_khk", 200, "item", "noDLC"],
	["Flashlight", "acc_flashlight", 125, "item"],
	["Pistol Flashlight" ,"acc_flashlight_pistol", 125, "item"],
	["IR Laser Pointer", "acc_pointer_IR", 125, "item"],
	["Yorris J2 (Zubr)", "optic_Yorris", 125, "item"],
	["MRD (4-five/Sand)", "optic_MRD", 125, "item"],
	["MRD (4-five/Black)", "optic_MRD_black", 125, "item", "noDLC"],
	["ACO SMG (Red)", "optic_aco_smg", 150, "item"],
	["ACO SMG (Green)", "optic_ACO_grn_smg", 150, "item"],
	["ACO (Red)", "optic_Aco", 175, "item"],
	["ACO (Green)", "optic_Aco_grn", 175, "item"],
	["Holosight SMG", "optic_Holosight_smg", 150, "item"],
	["Holosight SMG (Black)", "optic_Holosight_smg_blk_F", 150, "item", "noDLC"],
	["Holosight SMG (Khaki)", "optic_Holosight_smg_khk_F", 150, "item", "noDLC"],
	["Holosight", "optic_Holosight", 175, "item"],
	["Holosight (Arid)", "optic_Holosight_arid_F", 175, "item", "noDLC"],
	["Holosight (Black)", "optic_Holosight_blk_F", 175, "item", "noDLC"],
	["Holosight (Khaki)", "optic_Holosight_khk_F", 175, "item", "noDLC"],
	["Holosight (Lush)", "optic_Holosight_lush_F", 175, "item", "noDLC"],
	["Promet Modular Sight", "optic_ico_01_f", 200, "item"],
	["Promet Modular Sight (Black)", "optic_ico_01_black_f", 200, "item"],
	["Promet Modular Sight (Camo)", "optic_ico_01_camo_f", 200, "item"],
	["Promet Modular Sight (Sand)", "optic_ico_01_sand_f", 200, "item"],
	["MRCO", "optic_MRCO", 200, "item"],
	["ERCO", "optic_ERCO_blk_F", 200, "item"],
	["ERCO (Khaki)", "optic_ERCO_khk_F", 200, "item"],
	["ERCO (Sand)", "optic_ERCO_snd_F", 200, "item"],
	["ARCO", "optic_Arco", 225, "item"],
	["ARCO (Arid)", "optic_Arco_arid_F", 225, "item", "noDLC"],
	["ARCO (Black)", "optic_Arco_blk_F", 225, "item", "noDLC"],
	["ARCO (G Hex)", "optic_Arco_ghex_F", 225, "item", "noDLC"],
	["ARCO (Lush)", "optic_Arco_lush_F", 225, "item", "noDLC"],
	["ARCO AK (Arid)", "optic_Arco_AK_arid_F", 225, "item", "noDLC"],
	["ARCO AK (Black)", "optic_Arco_AK_black_F", 225, "item", "noDLC"],
	["ARCO AK (Lush)", "optic_Arco_AK_lush_F", 225, "item", "noDLC"],
	["RCO", "optic_Hamr", 250, "item"],
	["RCO (Khaki)", "optic_Hamr_khk_F", 250, "item", "noDLC"],
	["MOS", "optic_SOS", 250, "item"],
	["MOS (Khaki)", "optic_SOS_khk_F", 250, "item", "noDLC"],
	["DMS", "optic_DMS", 275, "item"],
	["DMS (G Hex)", "optic_DMS_ghex_F", 275, "item", "noDLC"],
	["DMS (Weathered)", "optic_DMS_weathered_F", 225, "item", "noDLC"],
	["DMS (Weathered Kir)", "optic_DMS_weathered_Kir_F", 225, "item", "noDLC"],
	["Kahlia (Sightless)", "optic_KHS_old", 300, "item"],
	["Kahlia", "optic_KHS_blk", 325, "item"],
	["Kahlia (Hex)", "optic_KHS_hex", 325, "item"],
	["Kahlia (Tan)", "optic_KHS_tan", 325, "item"],
	["AMS", "optic_AMS", 350, "item"],
	["AMS (Khaki)", "optic_AMS_khk", 350, "item"],
	["AMS (Sand)", "optic_AMS_snd", 350, "item"],
	["LRPS", "optic_LRPS", 500, "item"],
	["LRPS (G Hex)", "optic_LRPS_ghex_F", 500, "item", "noDLC"],
	["LRPS (Tropic)", "optic_LRPS_tna_F", 500, "item", "noDLC"],
	["NVS", "optic_NVS", 1500, "item"],
	["TWS", "optic_tws", 4000, "item", "HIDDEN"], // To hide from store list, add "HIDDEN" after "item", like "item", "HIDDEN"]
	["TWS MG", "optic_tws_mg", 5000, "item", "HIDDEN"],
	["Nightstalker", "optic_Nightstalker", 6500, "item", "HIDDEN"],
	["LEUPOLD MK4", "rhsusf_acc_LEUPOLDMK4_2", 225, "item"]
];

// If commented, means the color/camo isn't implemented or is a duplicate of another hat
headArray = compileFinal str
[
	["Tin Foil Hat", "H_Hat_Tinfoil_F", 666, "hat"],
	["Advanced Modular Helmet", "H_HelmetHBK_headset_F", 50, "hat"],
	["Advanced Modular Helmet (Olive)", "H_HelmetHBK_F", 50, "hat"],
	["Advanced Modular Helmet (Chops)", "H_HelmetHBK_chops_F", 75, "hat"],
	["Advanced Modular Helmet (Ear Protectors)", "H_HelmetHBK_ear_F", 75, "hat"],
	["Modular Helmet (Digi)", "H_HelmetIA", 50, "hat"],
	// ["MICH (Camo)", "H_HelmetIA_net", 50, "hat"],
	// ["MICH 2 (Camo)", "H_HelmetIA_camo", 50, "hat"],
	["Combat Helmet", "H_HelmetB", 50, "hat"],
	["Combat Helmet (Black)", "H_HelmetB_black", 50, "hat"],
	["Combat Helmet (Camonet)", "H_HelmetB_camo", 50, "hat"],
	["Stealth Combat Helmet", "H_HelmetB_TI_tna_F", 75, "hat"],
	["Enhanced Combat Helmet", "H_HelmetSpecB", 75, "hat"],
	["Enhanced Combat Helmet (Black)", "H_HelmetSpecB_blk", 75, "hat"],
	["Enhanced Combat Helmet (Snakeskin)", "H_HelmetSpecB_snakeskin", 75, "hat"],
	["Enhanced Combat Helmet (Tropic)", "H_HelmetB_Enh_tna_F", 75, "hat", "noDLC"],
	["Protector Helmet (Hex)", "H_HelmetO_ocamo", 60, "hat"],
	["Protector Helmet (Urban)", "H_HelmetO_oucamo", 60, "hat"],
	["Assassin Helmet (Hex)", "H_HelmetSpecO_ocamo", 75, "hat"],
	["Assassin Helmet (Black)", "H_HelmetSpecO_blk", 75, "hat"],
	["Avenger Helmet", "H_HelmetAggressor_F", 75, "hat"],
	["Avenger Helmet (Cover B)", "H_HelmetAggressor_cover_F", 75, "hat"],
	["Avenger Helmet (Cover T)", "H_HelmetAggressor_cover_taiga_F", 75, "hat"],
	["Defender Helmet (Hex)", "H_HelmetLeaderO_ocamo", 100, "hat"],
	["Defender Helmet (Urban)", "H_HelmetLeaderO_oucamo", 100, "hat"],
	["Defender Helmet (G Hex)", "H_HelmetLeaderO_ghex_F", 100, "hat", "noDLC"],
	// RHS
	["Pilot Helmet (IHADSS)", "rhsusf_ihadss", 60, "hat"],
 	//
	["Pilot Helmet (NATO)", "H_PilotHelmetFighter_B", 60, "hat"],
	["Pilot Helmet (CSAT)", "H_PilotHelmetFighter_O", 60, "hat"],
	["Pilot Helmet (AAF)", "H_PilotHelmetFighter_I", 60, "hat"],
	["Crew Helmet (NATO)", "H_HelmetCrew_B", 60, "hat"],
	["Crew Helmet (CSAT)", "H_HelmetCrew_O", 60, "hat"],
	["Crew Helmet (AAF)", "H_HelmetCrew_I", 60, "hat"],
	// RHS
	["Pilot Helmet (IHADSS)", "rhsusf_ihadss", 60, "hat"],

	["Crew Helmet Green (Skull)", "rhsusf_hgu56p_visor_mask_skull", 60, "hat"],
	["Crew Helmet Tan", "rhsusf_hgu56p_visor_mask_tan", 60, "hat"],
	["Crew Helmet Pink", "rhsusf_hgu56p_visor_mask_pink", 60, "hat"],
	["Crew Helmet Blue", "rhsusf_hgu56p_visor_mask_saf", 60, "hat"],
	["Crew Helmet White", "rhsusf_hgu56p_visor_white", 60, "hat"],
	["Crew Helmet Black (Skull)", "rhsusf_hgu56p_visor_mask_black_skull", 60, "hat"],
	["Crew Helmet Smiley", "rhsusf_hgu56p_visor_mask_smiley", 60, "hat"],
	["Crew Helmet Mostash", "rhsusf_hgu56p_visor_mask_green_mo", 60, "hat"],
	["Crew Helmet USA", "rhsusf_hgu56p_visor_usa", 60, "hat"],
	["Crew Helmet Empire", "rhsusf_hgu56p_visor_mask_Empire_black", 60, "hat"],

	["Tank Helmet CVC", "rhsusf_cvc_green_helmet", 60, "hat"],
	["Tank Helmet CVC (Alt)", "rhsusf_cvc_green_alt_helmet", 60, "hat"],
	["Tank Helmet CVC ESS", "rhsusf_cvc_green_ess", 60, "hat"],
	["Tank Helmet CVC ESS", "rhsusf_cvc_ess", 60, "hat"],

	["Ops-Core 1", "rhsusf_opscore_01", 60, "hat"],
	["Ops-Core 2", "rhsusf_opscore_02", 60, "hat"],
	["Booniehat UCP", "rhs_Booniehat_ucp", 60, "hat"],
	["Booniehat OCP", "rhs_Booniehat_ocp", 60, "hat"],
	["Patrol Cap UCP", "rhsusf_patrolcap_ucp", 60, "hat"],
	["Patrol Cap OCP", "rhsusf_patrolcap_ocp", 60, "hat"],
	///
	["Heli Pilot Helmet (NATO)", "H_PilotHelmetHeli_B", 50, "hat"],
	["Heli Pilot Helmet (CSAT)", "H_PilotHelmetHeli_O", 50, "hat"],
	["Heli Pilot Helmet (AAF)", "H_PilotHelmetHeli_I", 50, "hat"],
	["Heli Crew Helmet (NATO)", "H_CrewHelmetHeli_B", 50, "hat"],
	["Heli Crew Helmet (CSAT)", "H_CrewHelmetHeli_O", 50, "hat"],
	["Heli Crew Helmet (AAF)", "H_CrewHelmetHeli_I", 50, "hat"],
	["Military Cap (Blue)", "H_MilCap_blue", 25, "hat"],
	["Military Cap (Gray)", "H_MilCap_gry", 25, "hat"],
	["Military Cap (Urban)", "H_MilCap_oucamo", 25, "hat"],
	["Military Cap (Russia)", "H_MilCap_rucamo", 25, "hat"],
	["Military Cap (MTP)", "H_MilCap_mcamo", 25, "hat"],
	["Military Cap (Hex)", "H_MilCap_ocamo", 25, "hat"],
	["Military Cap (AAF)", "H_MilCap_dgtl", 25, "hat"],
	["Military Cap (Gendarmerie)", "H_MilCap_gen_F", 45, "hat", "noDLC"],
	["Rangemaster Cap", "H_Cap_headphones", 25, "hat"],
	["Bandana (Black)", "H_Bandanna_gry", 10, "hat"],
	["Bandana (Blue)", "H_Bandanna_blu", 10, "hat"],
	["Bandana (Coyote)", "H_Bandanna_cbr", 10, "hat"],
	["Bandana (Headset)", "H_Bandanna_khk_hs", 10, "hat"],
	["Bandana (Khaki)", "H_Bandanna_khk", 10, "hat"],
	["Bandana (MTP)", "H_Bandanna_mcamo", 10, "hat"],
	["Bandana (Sage)", "H_Bandanna_sgg", 10, "hat"],
	["Bandana (Sand)", "H_Bandanna_sand", 10, "hat"],
	["Bandana (Surfer)", "H_Bandanna_surfer", 10, "hat"],
	["Bandana (Surfer, Black)", "H_Bandanna_surfer_blk", 10, "hat"],
	["Bandana (Surfer, Green)", "H_Bandanna_surfer_grn", 10, "hat"],
	["Bandana (Woodland)", "H_Bandanna_camo", 10, "hat"],
	// ["Bandanna Mask (Black)", "H_BandMask_blk", 10, "hat"],
	// ["Bandanna Mask (Demon)", "H_BandMask_demon", 10, "hat"],
	// ["Bandanna Mask (Khaki)", "H_BandMask_khk", 10, "hat"],
	// ["Bandanna Mask (Reaper)", "H_BandMask_reaper", 10, "hat"],
	["Beanie (Black)", "H_Watchcap_blk", 10, "hat"],
	["Beanie (Brown)", "H_Watchcap_cbr", 10, "hat"],
	["Beanie (Khaki)", "H_Watchcap_khk", 10, "hat"],
	["Beanie (Navy)", "H_Watchcap_sgg", 10, "hat"],
	["Beanie (Olive)", "H_Watchcap_camo", 10, "hat"],
	["Beret (Black)", "H_Beret_blk", 10, "hat"],
	["Beret (Colonel)", "H_Beret_Colonel", 10, "hat"],
	["Beret (NATO)", "H_Beret_02", 10, "hat"],
	["Beret (Gendarmerie)", "H_Beret_gen_F", 30, "hat", "noDLC"],
	// ["Beret (Green)", "H_Beret_grn", 10, "hat"],
	// ["Beret (Police)", "H_Beret_blk_POLICE", 10, "hat"],
	// ["Beret (Red)", "H_Beret_red", 10, "hat"],
	// ["Beret (SAS)", "H_Beret_brn_SF", 10, "hat"],
	// ["Beret (SF)", "H_Beret_grn_SF", 10, "hat"],
	// ["Beret (RED)", "H_Beret_ocamo", 10, "hat"],
	// ["Black Turban", "H_TurbanO_blk", 50, "hat"],
	// ["Booniehat (Dirty)", "H_Booniehat_dirty", 10, "hat"],
	// ["Booniehat (Green)", "H_Booniehat_grn", 10, "hat"],
	// ["Booniehat (Khaki)", "H_Booniehat_indp", 10, "hat"],
	["Booniehat (AAF)", "H_Booniehat_dgtl", 10, "hat"],
	["Booniehat (Headset)", "H_Booniehat_khk_hs", 10, "hat"],
	["Booniehat (Khaki)", "H_Booniehat_khk", 10, "hat"],
	["Booniehat (MTP)", "H_Booniehat_mcamo", 10, "hat"],
	["Booniehat (Olive)", "H_Booniehat_oli", 10, "hat"],
	["Booniehat (Sand)", "H_Booniehat_tan", 10, "hat"],
	["Fedora (Blue)", "H_Hat_blue", 10, "hat"],
	["Fedora (Brown)", "H_Hat_brown", 10, "hat"],
	["Fedora (Camo)", "H_Hat_camo", 10, "hat"],
	["Fedora (Checker)", "H_Hat_checker", 10, "hat"],
	["Fedora (Gray)", "H_Hat_grey", 10, "hat"],
	["Fedora (Tan)", "H_Hat_tan", 10, "hat"],
	["Cap (BI)", "H_Cap_grn_BI", 10, "hat"],
	["Cap (Black)", "H_Cap_blk", 10, "hat"],
	["Cap (Blue)", "H_Cap_blu", 10, "hat"],
	["Cap (CMMG)", "H_Cap_blk_CMMG", 10, "hat"],
	["Cap (Green)", "H_Cap_grn", 10, "hat"],
	["Cap (ION)", "H_Cap_blk_ION", 10, "hat"],
	["Cap (Olive)", "H_Cap_oli", 10, "hat"],
	["Cap (Olive, Headset)", "H_Cap_oli_hs", 10, "hat"],
	["Cap (Police)", "H_Cap_police", 10, "hat"],
	["Cap (Press)", "H_Cap_press", 10, "hat"],
	["Cap (Red)", "H_Cap_red", 10, "hat"],
	["Cap (Surfer)", "H_Cap_surfer", 10, "hat"],
	["Cap (Tan)", "H_Cap_tan", 10, "hat"],
	["Cap (UK)", "H_Cap_khaki_specops_UK", 10, "hat"],
	["Cap (US Black)", "H_Cap_usblack", 10, "hat"],
	["Cap (US MTP)", "H_Cap_tan_specops_US", 10, "hat"],
	["Cap (AAF)", "H_Cap_blk_Raven", 10, "hat"],
	["Cap (OPFOR)", "H_Cap_brn_SPECOPS", 10, "hat"],
	["Shemag (Olive)", "H_Shemag_olive", 25, "hat"],
	["Shemag (Olive, Headset)", "H_Shemag_olive_hs", 25, "hat"],
	["Shemag (Tan)", "H_ShemagOpen_tan", 25, "hat"],
	["Shemag (White)", "H_ShemagOpen_khk", 25, "hat"],
	// ["Shemag mask (Tan)", "H_Shemag_tan", 25, "hat"],
	["Racing Helmet (Black)", "H_RacingHelmet_1_black_F", 25, "hat"],
	["Racing Helmet (Blue)", "H_RacingHelmet_1_blue_F", 25, "hat"],
	["Racing Helmet (Green)", "H_RacingHelmet_1_green_F", 25, "hat"],
	["Racing Helmet (Yellow)", "H_RacingHelmet_1_yellow_F", 25, "hat"],
	["Racing Helmet (Orange)", "H_RacingHelmet_1_orange_F", 25, "hat"],
	["Racing Helmet (Red)", "H_RacingHelmet_1_red_F", 25, "hat"],
	["Racing Helmet (White)", "H_RacingHelmet_1_white_F", 25, "hat"],
	["Racing Helmet (Fuel)", "H_RacingHelmet_1_F", 25, "hat"],
	["Racing Helmet (Bluking)", "H_RacingHelmet_2_F", 25, "hat"],
	["Racing Helmet (Redstone)", "H_RacingHelmet_3_F", 25, "hat"],
	["Racing Helmet (Vrana)", "H_RacingHelmet_4_F", 25, "hat"]
];

uniformArray = compileFinal str
[
	["Wetsuit", "U_B_Wetsuit", 200, "uni"],
	["Wetsuit", "U_O_Wetsuit", 200, "uni"],
	["Wetsuit", "U_I_Wetsuit", 200, "uni"],
	["Gendarmerie Commander Uniform", "U_B_GEN_Commander_F", 200, "uni", "noDLC"],
	["Gendarmerie Uniform", "U_B_GEN_Soldier_F", 200, "uni", "noDLC"],
	["Gendarmerie Commander Uniform", "U_O_GEN_Commander_F", 200, "uni", "noDLC"],
	["Gendarmerie Uniform", "U_O_GEN_Soldier_F", 200, "uni", "noDLC"],
	["Light Ghillie", "U_B_GhillieSuit", 200, "uni"],
	["Light Ghillie", "U_O_GhillieSuit", 200, "uni"],
	["Light Ghillie", "U_I_GhillieSuit", 200, "uni"],
	["Light Ghillie (Jungle)", "U_B_T_Sniper_F", 200, "uni"],
	["Light Ghillie (Jungle)", "U_O_T_Sniper_F", 200, "uni"],
	["Full Ghillie (Arid)", "U_B_FullGhillie_ard", 2000, "uni"],
	["Full Ghillie (Arid)", "U_O_FullGhillie_ard", 2000, "uni"],
	["Full Ghillie (Arid)", "U_I_FullGhillie_ard", 2000, "uni"],
	["Full Ghillie (Lush)", "U_B_FullGhillie_lsh", 2000, "uni"],
	["Full Ghillie (Lush)", "U_O_FullGhillie_lsh", 2000, "uni"],
	["Full Ghillie (Lush)", "U_I_FullGhillie_lsh", 2000, "uni"],
	["Full Ghillie (Semi-Arid)", "U_B_FullGhillie_sard", 2000, "uni"],
	["Full Ghillie (Semi-Arid)", "U_O_FullGhillie_sard", 2000, "uni"],
	["Full Ghillie (Semi-Arid)", "U_I_FullGhillie_sard", 2000, "uni"],
	["Full Ghillie (Jungle)", "U_B_T_FullGhillie_tna_F", 2000, "uni"],
	["Full Ghillie (Jungle)", "U_O_T_FullGhillie_tna_F", 2000, "uni"],
	["CTRG Stealth Uniform", "U_B_CTRG_Soldier_F", 1000, "uni"],
	["Special Purpose Suit (Hex)", "U_O_V_Soldier_Viper_hex_F", 1000, "uni"],
	["Special Purpose Suit (G Hex)", "U_O_V_Soldier_Viper_F", 1000, "uni"],
	["Survival Fatigues (NATO)", "U_B_survival_uniform", 200, "uni"],
	["CBRN Suit (AAF)", "U_I_CBRN_Suit_01_AAF_F", 200, "uni"],
	["CBRN Suit (Blue)", "U_C_CBRN_Suit_01_Blue_F", 200, "uni"],
	["CBRN Suit (LDF)", "U_I_E_CBRN_Suit_01_EAF_F", 200, "uni"],
	["CBRN Suit (MTP)", "U_B_CBRN_Suit_01_MTP_F", 200, "uni"],
	["CBRN Suit (Tropic)", "U_B_CBRN_Suit_01_Tropic_F", 200, "uni"],
	["CBRN Suit (White)", "U_C_CBRN_Suit_01_White_F", 200, "uni"],
	["CBRN Suit (Woodland)", "U_B_CBRN_Suit_01_Wdl_F", 200, "uni"],
	["Granit-B Suit", "U_O_R_Gorka_01_F", 200, "uni"],
	["Granit-B Suit (Weathered)", "U_O_R_Gorka_01_brown_F", 200, "uni"],
	["Granit-T Suit", "U_O_R_Gorka_01_camo_F", 200, "uni"],
	["Granit-N Suit", "U_O_R_Gorka_01_black_F", 200, "uni"],
	["Default Uniform (NATO)", "U_B_CombatUniform_mcam", 25, "uni"],
	["Default Uniform (CSAT)", "U_O_officer_noInsignia_hex_F", 25, "uni", "noDLC"],
	["Default Uniform (AAF)", "U_I_CombatUniform", 25, "uni"],
	["Recon Fatigues (MTP)", "U_B_CombatUniform_mcam_vest", 25, "uni"],
	["Recon Fatigues (Tropic)", "U_B_T_Soldier_SL_F", 25, "uni", "noDLC"],
	["Recon Fatigues (Woodland)", "U_B_CombatUniform_vest_mcam_wdl_f", 25, "uni", "noDLC"],
	["Combat Fatigues (Tropic)", "U_B_T_Soldier_F", 25, "uni", "noDLC"],
	["Combat Fatigues (Tee)", "U_B_CombatUniform_mcam_tshirt", 25, "uni"],
	["Combat Fatigues (Gangsta)", "U_I_G_resistanceLeader_F", 25, "uni"],
	["Combat Fatigues (Rolled-up)", "U_I_CombatUniform_shortsleeve", 25, "uni"],
	["CTRG Combat Uniform", "U_B_CTRG_1", 25, "uni"],
	["CTRG Combat Uniform (Tee)", "U_B_CTRG_2", 25, "uni"],
	["CTRG Combat Uniform (Rolled-up)", "U_B_CTRG_3", 25, "uni"],
	["Fatigues (Hex)", "U_O_CombatUniform_ocamo", 50, "uni"],
	["Fatigues (Urban)", "U_O_CombatUniform_oucamo", 50, "uni"],
	["Fatigues (G Hex)", "U_O_T_Soldier_F", 50, "uni", "noDLC"],
	["Officer Fatigues", "U_I_OfficerUniform", 25, "uni"],
	["Pilot Coveralls", "U_B_PilotCoveralls", 25, "uni"],
	["Pilot Coveralls", "U_O_PilotCoveralls", 25, "uni"],
	["Pilot Coveralls", "U_I_pilotCoveralls", 25, "uni"],
	["Heli Pilot Coveralls", "U_B_HeliPilotCoveralls", 25, "uni"],
	["Heli Pilot Coveralls", "U_I_HeliPilotCoveralls", 25, "uni"],
	["Guerilla Garment", "U_BG_Guerilla1_1", 25, "uni"],  // BLUFOR
	["Guerilla Outfit (Plain, Dark)", "U_BG_Guerilla2_1", 25, "uni"],
	["Guerilla Outfit (Pattern)", "U_BG_Guerilla2_2", 25, "uni"],
	["Guerilla Outfit (Plain, Light)", "U_BG_Guerilla2_3", 25, "uni"],
	["Guerilla Smocks", "U_BG_Guerilla3_1", 25, "uni"],
	["Guerilla Apparel", "U_BG_Guerrilla_6_1", 25, "uni"],
	["Guerilla Uniform", "U_BG_leader", 25, "uni"],
	["Guerilla Garment", "U_OG_Guerilla1_1", 25, "uni"], // OPFOR
	["Guerilla Outfit (Plain, Dark)", "U_OG_Guerilla2_1", 25, "uni"],
	["Guerilla Outfit (Pattern)", "U_OG_Guerilla2_2", 25, "uni"],
	["Guerilla Outfit (Plain, Light)", "U_OG_Guerilla2_3", 25, "uni"],
	["Guerilla Smocks", "U_OG_Guerilla3_1", 25, "uni"],
	["Guerilla Apparel", "U_OG_Guerrilla_6_1", 25, "uni"],
	["Guerilla Uniform", "U_OG_leader", 25, "uni"],
	["Guerilla Garment", "U_IG_Guerilla1_1", 25, "uni"], // Independent
	["Guerilla Outfit (Plain, Dark)", "U_IG_Guerilla2_1", 25, "uni"],
	["Guerilla Outfit (Pattern)", "U_IG_Guerilla2_2", 25, "uni"],
	["Guerilla Outfit (Plain, Light)", "U_IG_Guerilla2_3", 25, "uni"],
	["Guerilla Smocks", "U_IG_Guerilla3_1", 25, "uni"],
	["Guerilla Apparel", "U_IG_Guerrilla_6_1", 25, "uni"],
	["Guerilla Uniform", "U_IG_leader", 25, "uni"],

	/*["Worker Coveralls", "U_C_WorkerCoveralls", 25, "uni"], // can only be worn by civilian units
	["T-Shirt (Blue)", "U_C_Poor_1", 25, "uni"],
	["Polo (Red/white)", "U_C_Poloshirt_redwhite", 25, "uni"],
	["Polo (Salmon)", "U_C_Poloshirt_salmon", 25, "uni"],
	["Polo (Tri-color)", "U_C_Poloshirt_tricolour", 25, "uni"],
	["Polo (Navy)", "U_C_Poloshirt_blue", 25, "uni"],
	["Polo (Burgundy)", "U_C_Poloshirt_burgundy", 25, "uni"],
	["Polo (Blue/green)", "U_C_Poloshirt_stripped", 25, "uni"],*/

	["Polo (Competitor)", "U_Competitor", 25, "uni"],
	["Polo (Rangemaster)", "U_Rangemaster", 25, "uni"],

	// RHS
	["G3 Uniform (AOR)", "rhs_uniform_g3_aor2", 500, "uni"],
	["G3 Uniform (Black)", "rhs_uniform_g3_blk", 500, "uni"],
	["G3 Uniform (M81)", "rhs_uniform_g3_m81", 500, "uni"],
	["G3 Uniform (MultiCam)", "rhs_uniform_g3_mc", 500, "uni"],
	["G3 Uniform (Ranger Green)", "rhs_uniform_g3_rgr", 500, "uni"],
	["G3 Uniform (Tan)", "rhs_uniform_g3_tan", 500, "uni"],
	["Airman Battle Uniform", "rhs_uniform_abu", 500, "uni"],
	["Army Combat Uniform (OCP)", "rhs_uniform_acu_ocp", 500, "uni"],
	["Army Combat Uniform (OEF-CP)", "rhs_uniform_acu_oefcp", 500, "uni"],
	["Army Combat Uniform (UCP)", "rhs_uniform_acu_ucp", 500, "uni"],
	["Army Combat Uniform (UCP-D)", "rhs_uniform_acu_ucpd", 500, "uni"],
	["Battle Dress Uniform (ERDL)", "rhs_uniform_bdu_erdl", 500, "uni"],
	["Combat Uniform OCP (101st Airborne Div.)", "rhs_uniform_cu_ocp_101st", 500, "uni"],
	["Combat Uniform OCP (10th Mountain Div.)", "rhs_uniform_cu_ocp_10th", 500, "uni"],
	["Combat Uniform OCP (1st Cavalry Div.)", "rhs_uniform_cu_ocp_1stcav", 500, "uni"],
	["Combat Uniform OCP (82nd Airborne Div.)", "rhs_uniform_cu_ocp_82nd", 500, "uni"],
	["Combat Uniform OCP", "rhs_uniform_cu_ocp", 500, "uni"],
	["Combat Uniform UCP (101st Airborne Div.)", "rhs_uniform_cu_ucp_101st", 500, "uni"],
	["Combat Uniform UCP (10th Mountain Div.)", "rhs_uniform_cu_ucp_10th", 500, "uni"],
	["Combat Uniform UCP (1st Cavalry Div.)", "rhs_uniform_cu_ucp_1stcav", 500, "uni"],
	["Combat Uniform UCP (82nd Airborne Div.)", "rhs_uniform_cu_ucp_82nd", 500, "uni"],
	["Combat Uniform UCP", "rhs_uniform_cu_ucp", 500, "uni"],
	["FROG MARPAT-D", "rhs_uniform_FROG01_d", 500, "uni"],
	["FROG MARPAT-WD", "rhs_uniform_FROG01_wd", 500, "uni"],
	//
	/*["Racing Suit (Black)", "U_C_Driver_1_black", 25, "uni"], // can only be worn by civilian units
	["Racing Suit (Blue)", "U_C_Driver_1_blue", 25, "uni"],
	["Racing Suit (Green)", "U_C_Driver_1_green", 25, "uni"],
	["Racing Suit (Yellow)", "U_C_Driver_1_yellow", 25, "uni"],
	["Racing Suit (Orange)", "U_C_Driver_1_orange", 25, "uni"],
	["Racing Suit (Red)", "U_C_Driver_1_red", 25, "uni"],
	["Racing Suit (White)", "U_C_Driver_1_white", 25, "uni"],
	["Racing Suit (Fuel)", "U_C_Driver_1", 25, "uni"],
	["Racing Suit (Bluking)", "U_C_Driver_2", 25, "uni"],
	["Racing Suit (Redstone)", "U_C_Driver_3", 25, "uni"],
	["Racing Suit (Vrana)", "U_C_Driver_4", 25, "uni"],*/

	["Tron Light Suit (Blue)", "U_B_Protagonist_VR", 5000, "uni"],
	["Tron Light Suit (Red)", "U_O_Protagonist_VR", 5000, "uni"],
	["Tron Light Suit (Green)", "U_I_Protagonist_VR", 5000, "uni"]
];

vestArray = compileFinal str
[
	["Rebreather (NATO)", "V_RebreatherB", 200, "vest"],
	["Rebreather (CSAT)", "V_RebreatherIR", 200, "vest"],
	["Rebreather (AAF)", "V_RebreatherIA", 200, "vest"],
	["Carrier Lite (Green)", "V_PlateCarrier1_rgr", -1, "vest"],
	["Carrier Lite (Black)", "V_PlateCarrier1_blk", 200, "vest"],
	["Carrier Lite (CTRG)", "V_PlateCarrierL_CTRG", 200, "vest"],
	["Carrier Lite (Tropic)", "V_PlateCarrier1_tna_F", 200, "vest", "noDLC"],
	["Carrier Lite (Woodland)", "V_PlateCarrier1_wdl", 200, "vest", "noDLC"],
	["Carrier Rig (Green)", "V_PlateCarrier2_rgr", 200, "vest"],
	["Carrier Rig (Black)", "V_PlateCarrier2_blk", 200, "vest"],
	["Carrier Rig (CTRG)", "V_PlateCarrierH_CTRG", 200, "vest"],
	["Carrier Rig (Tropic)", "V_PlateCarrier2_tna_F", 200, "vest", "noDLC"],
	["Carrier Rig (Woodland)", "V_PlateCarrier2_wdl", 200, "vest", "noDLC"],
	["Carrier GL Rig (Green)", "V_PlateCarrierGL_rgr", 200, "vest"],
	["Carrier GL Rig (Black)", "V_PlateCarrierGL_blk", 200, "vest"],
	["Carrier GL Rig (MTP)", "V_PlateCarrierGL_mtp", 200, "vest"],
	["Carrier GL Rig (Tropic)", "V_PlateCarrierGL_tna_F", 200, "vest", "noDLC"],
	["Carrier GL Rig (Woodland)", "V_PlateCarrierGL_wdl", 200, "vest", "noDLC"],
	["Carrier Special Rig (Green)", "V_PlateCarrierSpec_rgr", 200, "vest"],
	["Carrier Special Rig (Black)", "V_PlateCarrierSpec_blk", 200, "vest"],
	["Carrier Special Rig (MTP)", "V_PlateCarrierSpec_mtp", 200, "vest"],
	["Carrier Special Rig (Tropic)", "V_PlateCarrierSpec_tna_F", 200, "vest", "noDLC"],
	["Carrier Special Rig (Woodland)", "V_PlateCarrierSpec_wdl", 200, "vest", "noDLC"],
	["GA Carrier Lite (Digi)", "V_PlateCarrierIA1_dgtl", 200, "vest"],
	["GA Carrier Rig (Digi)", "V_PlateCarrierIA2_dgtl", 200, "vest"],
	["GA Carrier GL Rig (Digi)", "V_PlateCarrierIAGL_dgtl", 200, "vest"],
	["GA Carrier GL Rig (Olive)", "V_PlateCarrierIAGL_oli", 200, "vest"],
	["Modular Carrier GL Rig (LDF)", "V_CarrierRigKBT_01_heavy_EAF_F", 200, "vest"],
	["Modular Carrier GL Rig (Olive)", "V_CarrierRigKBT_01_heavy_Olive_F", 200, "vest"],
	["Modular Carrier Lite (LDF)", "V_CarrierRigKBT_01_light_EAF_F", 200, "vest"],
	["Modular Carrier Lite (Olive)", "V_CarrierRigKBT_01_light_Olive_F", 200, "vest"],
	["Modular Carrier Vest (LDF)", "V_CarrierRigKBT_01_EAF_F", 200, "vest"],
	["Modular Carrier Vest (Olive)", "V_CarrierRigKBT_01_Olive_F", 200, "vest"],
	["LBV Harness", "V_HarnessO_brn", 200, "vest"],
	["LBV Harness (Gray)", "V_HarnessO_gry", 200, "vest"],
	["LBV Grenadier Harness", "V_HarnessOGL_brn", 200, "vest"],
	["LBV Grenadier Harness (Gray)", "V_HarnessOGL_gry", 200, "vest"],
	["Slash Bandolier (Black)", "V_BandollierB_blk", 200, "vest"],
	["Slash Bandolier (Coyote)", "V_BandollierB_cbr", 200, "vest"],
	["Slash Bandolier (Green)", "V_BandollierB_rgr", 200, "vest"],
	["Slash Bandolier (Khaki)", "V_BandollierB_khk", 200, "vest"],
	["Slash Bandolier (Olive)", "V_BandollierB_oli", 200, "vest"],
	["Chest Rig (Khaki)", "V_Chestrig_khk", 200, "vest"],
	["Chest Rig (Green)", "V_Chestrig_rgr", 200, "vest"],
	["Fighter Chestrig (Black)", "V_Chestrig_blk", 200, "vest"],
	["Fighter Chestrig (Olive)", "V_Chestrig_oli", 200, "vest"],
	["Tactical Vest (Black)", "V_TacVest_blk", 200, "vest"],
	["Tactical Vest (Brown)", "V_TacVest_brn", 200, "vest"],
	["Tactical Vest (Camo)", "V_TacVest_camo", 200, "vest"],
	["Tactical Vest (Khaki)", "V_TacVest_khk", 200, "vest"],
	["Tactical Vest (Olive)", "V_TacVest_oli", 200, "vest"],
	["Tactical Vest (Police)", "V_TacVest_blk_POLICE", 200, "vest"],
	["Gendarmerie Vest", "V_TacVest_gen_F", 200, "vest", "noDLC"],
	["Raven Night Vest", "V_TacVestIR_blk", 200, "vest"],
	["Press Vest", "V_Press_F", 200, "vest"],
	["Deck Crew Vest (Blue)", "V_DeckCrew_blue_F", 200, "vest", "noDLC"],
	["Deck Crew Vest (Green)", "V_DeckCrew_green_F", 200, "vest", "noDLC"],
	["Deck Crew Vest (Yellow)", "V_DeckCrew_yellow_F", 200, "vest", "noDLC"],
	["Deck Crew Vest (Red)", "V_DeckCrew_red_F", 200, "vest", "noDLC"],
	["Deck Crew Vest (Brown)", "V_DeckCrew_brown_F", 200, "vest", "noDLC"],
	["Deck Crew Vest (Violet)", "V_DeckCrew_violet_F", 200, "vest", "noDLC"],
	["Deck Crew Vest (White)", "V_DeckCrew_white_F", 200, "vest", "noDLC"],

	["IOTV (Grenadier/OEF-CP)", "rhsusf_iotv_ocp_Grenadier", 200, "vest"],
	["IOTV (Medic/OEF-CP)", "rhsusf_iotv_ocp_Medic", 200, "vest"],
	["IOTV (Repair/OEF-CP)", "rhsusf_iotv_ocp_Repair", 200, "vest"],
	["IOTV (Rifleman/OEF-CP)", "rhsusf_iotv_ocp_Rifleman", 200, "vest"],
	["IOTV (SAW/OCP)", "rhsusf_iotv_ocp_SAW", 200, "vest"],
	["IOTV (Squadleader/OCP)", "rhsusf_iotv_ocp_Squadleader", 200, "vest"],
	["IOTV (Teamleader/OCP)", "rhsusf_iotv_ocp_Teamleader", 200, "vest"],
	["IOTV (OEF-CP)", "rhsusf_iotv_ocp", 200, "vest"],
	["IOTV (Grenadier/UCP)", "rhsusf_iotv_ucp_Grenadier", 200, "vest"],
	["IOTV (Medic/UCP)", "rhsusf_iotv_ucp_Medic", 200, "vest"],
	["IOTV (Repair/UCP)", "rhsusf_iotv_ucp_Repair", 200, "vest"],
	["IOTV (Rifleman/UCP)", "rhsusf_iotv_ucp_Rifleman", 200, "vest"],
	["IOTV (SAW/UCP)", "rhsusf_iotv_ucp_SAW", 200, "vest"],
	["IOTV (Squadleader/UCP)", "rhsusf_iotv_ucp_Squadleader", 200, "vest"],
	["IOTV (Teamleader/UCP)", "rhsusf_iotv_ucp_Teamleader", 200, "vest"],
	["IOTV (UCP)", "rhsusf_iotv_ucp", 200, "vest"],
	["MBAV (Grenadier)", "rhsusf_mbav_grenadier", 200, "vest"],
	["MBAV (Light)", "rhsusf_mbav_light", 200, "vest"],
	["MBAV (Medic)", "rhsusf_mbav_medic", 200, "vest"],
	["MBAV (Machinegunner)", "rhsusf_mbav_mg", 200, "vest"],
	["MBAV (Rifleman)", "rhsusf_mbav_rifleman", 200, "vest"],
	["MBAV", "rhsusf_mbav", 200, "vest"],
	["Plateframe (Grenadier)", "rhsusf_plateframe_grenadier", 200, "vest"],
	["Plateframe (Light)", "rhsusf_plateframe_light", 200, "vest"],
	["Plateframe (Machinegunner)", "rhsusf_plateframe_machinegunner", 200, "vest"],
	["Plateframe (Marksman)", "rhsusf_plateframe_marksman", 200, "vest"],
	["Plateframe (Medic)", "rhsusf_plateframe_medic", 200, "vest"],
	["Plateframe (Rifleman)", "rhsusf_plateframe_rifleman", 200, "vest"],
	["Plateframe", "rhsusf_plateframe_sapi", 200, "vest"],
	["Plateframe (Teamleader)", "rhsusf_plateframe_teamleader", 200, "vest"],
	["SPC (Corpsman)", "rhsusf_spc_corpsman", 200, "vest"],
	["SPC (Corpsman)", "rhsusf_spc_crewman", 200, "vest"],
	["SPC (IAR)", "rhsusf_spc_iar", 200, "vest"],
	["SPC (Light)", "rhsusf_spc_light", 200, "vest"],
	["SPC (Marksman)", "rhsusf_spc_marksman", 200, "vest"],
	["SPC (Machinegunner)", "rhsusf_spc_mg", 200, "vest"],
	["SPC (Patchless/Radio)", "rhsusf_spc_patchless_radio", 200, "vest"],
	["SPC (Patchless)", "rhsusf_spc_patchless", 200, "vest"],
	["SPC (Rifleman)", "rhsusf_spc_rifleman", 200, "vest"],
	["SPC (Scout Sniper)", "rhsusf_spc_sniper", 200, "vest"],
	["SPC (Squadleader)", "rhsusf_spc_squadleader", 200, "vest"],
	["SPC (Teamleader)", "rhsusf_spc_teamleader", 200, "vest"],
	["SPC", "rhsusf_spc", 200, "vest"],
	["SPCS (Crewman/OEF-CP)", "rhsusf_spcs_ocp_crewman", 200, "vest"],
	["SPCS (Grenadier/OEF-CP)", "rhsusf_spcs_ocp_grenadier", 200, "vest"],
	["SPCS (Machinegunner/OEF-CP)", "rhsusf_spcs_ocp_machinegunner", 200, "vest"],
	["SPCS (Medic/OEF-CP)", "rhsusf_spcs_ocp_medic", 200, "vest"],
	["SPCS (Rifleman Alt/OEF-CP)", "rhsusf_spcs_ocp_rifleman_alt", 200, "vest"],
	["SPCS (Rifleman/OEF-CP)", "rhsusf_spcs_ocp_rifleman", 200, "vest"],
	["SPCS (SAW/OEF-CP)", "rhsusf_spcs_ocp_sniper", 200, "vest"],
	["SPCS (Sniper/OEF-CP)", "rhsusf_spcs_ocp_saw", 200, "vest"],
	["SPCS (Squad leader/OEF-CP)", "rhsusf_spcs_ocp_squadleader", 200, "vest"],
	["SPCS (Team leader Alt/OEF-CP)", "rhsusf_spcs_ocp_teamleader_alt", 200, "vest"],
	["SPCS (Team leader/OEF-CP)", "rhsusf_spcs_ocp_teamleader", 200, "vest"],
	["SPCS (OEF-CP)", "rhsusf_spcs_ocp", 200, "vest"],
	["SPCS (Crewman/UCP)", "rhsusf_spcs_ucp_crewman", 200, "vest"],
	["SPCS (Grenadier/UCP)", "rhsusf_spcs_ucp_grenadier", 200, "vest"],
	["SPCS (Machinegunner/UCP)", "rhsusf_spcs_ucp_machinegunner", 200, "vest"],
	["SPCS (Medic/UCP)", "rhsusf_spcs_ucp_medic", 200, "vest"],
	["SPCS (Rifleman Alt/UCP)", "rhsusf_spcs_ucp_rifleman_alt", 200, "vest"],
	["SPCS (Rifleman/UCP)", "rhsusf_spcs_ucp_rifleman", 200, "vest"],
	["SPCS (SAW/UCP)", "rhsusf_spcs_ucp_saw", 200, "vest"],
	["SPCS (Sniper/UCP)", "rhsusf_spcs_ucp_sniper", 200, "vest"],
	["SPCS (Squad Leader/UCP)", "rhsusf_spcs_ucp_squadleader", 200, "vest"],
	["SPCS (Team Leader Alt/UCP)", "rhsusf_spcs_ucp_teamleader_alt", 200, "vest"],
	["SPCS (Team Leader/UCP)", "rhsusf_spcs_ucp_teamleader", 200, "vest"],
	["SPCS (UCP)", "rhsusf_spcs_ucp", 200, "vest"]
];

backpackArray = compileFinal str
[
	//["Parachute", "B_Parachute", 200, "backpack"],

	["Assault Pack (Black)", "B_AssaultPack_blk", 100, "backpack"],
	["Assault Pack (Green)", "B_AssaultPack_rgr", 100, "backpack"],
	["Assault Pack (MTP)", "B_AssaultPack_mcamo", 100, "backpack"],
	["Assault Pack (Hex)", "B_AssaultPack_ocamo", 100, "backpack"],
	["Assault Pack (Tropic)", "B_AssaultPack_tna_F", 100, "backpack", "noDLC"],

	["Field Pack (Black)", "B_FieldPack_blk", 200, "backpack"],
	["Field Pack (Coyote)", "B_FieldPack_cbr", 200, "backpack"],
	["Field Pack (Khaki)", "B_FieldPack_khk", 200, "backpack"],
	["Field Pack (Urban)", "B_FieldPack_oucamo", 200, "backpack"],
	["Field Pack (G Hex)", "B_FieldPack_ghex_F", 200, "backpack", "noDLC"],

	["Kitbag (Coyote)", "B_Kitbag_cbr", 350, "backpack"],
	["Kitbag (Green)", "B_Kitbag_rgr", 350, "backpack"],
	["Kitbag (MTP)", "B_Kitbag_mcamo", 350, "backpack"],
	["Kitbag (Sage)", "B_Kitbag_sgg", 350, "backpack"],

	["Viper Light Harness (Black)", "B_ViperLightHarness_blk_F", 350, "backpack", "noDLC"],
	["Viper Light Harness (Hex)", "B_ViperLightHarness_hex_F", 350, "backpack", "noDLC"],
	["Viper Light Harness (G Hex)", "B_ViperLightHarness_ghex_F", 350, "backpack", "noDLC"],
	["Viper Light Harness (Khaki)", "B_ViperLightHarness_khk_F", 350, "backpack", "noDLC"],
	["Viper Light Harness (Olive)", "B_ViperLightHarness_oli_F", 350, "backpack", "noDLC"],

	["Viper Harness (Black)", "B_ViperHarness_blk_F", 425, "backpack", "noDLC"],
	["Viper Harness (Hex)", "B_ViperHarness_hex_F", 425, "backpack", "noDLC"],
	["Viper Harness (G Hex)", "B_ViperHarness_ghex_F", 425, "backpack", "noDLC"],
	["Viper Harness (Khaki)", "B_ViperHarness_khk_F", 425, "backpack", "noDLC"],
	["Viper Harness (Olive)", "B_ViperHarness_oli_F", 425, "backpack", "noDLC"],

	["Carryall (Khaki)", "B_Carryall_khk", 500, "backpack"],
	["Carryall (MTP)", "B_Carryall_mcamo", 500, "backpack"],
	["Carryall (Olive)", "B_Carryall_oli", 500, "backpack"],
	["Carryall (Urban)", "B_Carryall_oucamo", 500, "backpack"],
	["Carryall (G Hex)", "B_Carryall_ghex_F", 500, "backpack", "noDLC"],

	["Bergen (Digital)", "B_Bergen_dgtl_F", 1000, "backpack", "noDLC"],
	["Bergen (Hex)", "B_Bergen_hex_F", 1000, "backpack", "noDLC"],
	["Bergen (MTP)", "B_Bergen_mcamo_F", 1000, "backpack", "noDLC"],
	["Bergen (Tropic)", "B_Bergen_tna_F", 1000, "backpack", "noDLC"]
];

genItemArray = compileFinal str
[
	["UAV Terminal", "B_UavTerminal", 150, "gps"],
	["UAV Terminal", "O_UavTerminal", 150, "gps"],
	["UAV Terminal", "I_UavTerminal", 150, "gps"],
	["AR-2 Darter UAV", "B_UAV_01_backpack_F", 2500, "backpack"],
	["AR-2 Darter UAV", "O_UAV_01_backpack_F", 2500, "backpack"],
	["AR-2 Darter UAV", "I_UAV_01_backpack_F", 2500, "backpack"],
	["AL-6 Pelican UAV", "B_UAV_06_backpack_F", 250, "backpack"],
	["AL-6 Pelican UAV", "O_UAV_06_backpack_F", 250, "backpack"],
	["AL-6 Pelican UAV", "I_UAV_06_backpack_F", 250, "backpack"],
	["AL-6 Pelican Medical UAV", "B_UAV_06_medical_backpack_F", 1000, "backpack"],
	["AL-6 Pelican Medical UAV", "O_UAV_06_medical_backpack_F", 1000, "backpack"],
	["AL-6 Pelican Medical UAV", "I_UAV_06_medical_backpack_F", 1000, "backpack"],
	["AL-6 Pelican Demining UAV", "C_IDAP_UAV_06_antimine_backpack_F", 10000, "backpack"],
	["ED-1E Camera UGV", "B_UGV_02_Science_backpack_F", 1000, "backpack"],
	["ED-1E Camera UGV", "O_UGV_02_Science_backpack_F", 1000, "backpack"],
	["ED-1E Camera UGV", "I_UGV_02_Science_backpack_F", 1000, "backpack"],
	["ED-1D Demining UGV", "B_UGV_02_Demining_backpack_F", 5000, "backpack"],
	["ED-1D Demining UGV", "O_UGV_02_Demining_backpack_F", 5000, "backpack"],
	["ED-1D Demining UGV", "I_UGV_02_Demining_backpack_F", 5000, "backpack"],
	["Remote Designator (Khaki)", "B_W_Static_Designator_01_weapon_F", 750, "backpack"],
	["Remote Designator (Sand)", "B_Static_Designator_01_weapon_F", 750, "backpack"],
	["Remote Designator (Hex)", "O_Static_Designator_02_weapon_F", 750, "backpack"],
	["GPS", "ItemGPS", 100, "gps"],
	["First Aid Kit", "FirstAidKit", 25, "item"],
	["Medikit", "Medikit", 150, "item"],
	["Toolkit", "ToolKit", 150, "item"],
	["Mine Detector", "MineDetector", 100, "item"],
	["Diving Goggles", "G_Diving", 100, "gogg"],
	["NV Goggles (Brown)", "NVGoggles", 100, "nvg"],
	["NV Goggles (Black)", "NVGoggles_OPFOR", 100, "nvg"],
	["NV Goggles (Green)", "NVGoggles_INDEP", 100, "nvg"],
	["NV Goggles (Tropic)", "NVGoggles_tna_F", 100, "nvg", "noDLC"],
	["Compact NVG (Hex)", "O_NVGoggles_hex_F", 300, "nvg", "noDLC"],
	["Compact NVG (G Hex)", "O_NVGoggles_ghex_F", 300, "nvg", "noDLC"],
	["Compact NVG (Green)", "O_NVGoggles_grn_F", 300, "nvg", "noDLC"],
	["Compact NVG (Urban)", "O_NVGoggles_urb_F", 300, "nvg", "noDLC"],
	["ENVG-II (Black)", "NVGogglesB_blk_F", 2000, "nvg"],
	["ENVG-II (Green)", "NVGogglesB_grn_F", 2000, "nvg"],
	["ENVG-II (Grey)", "NVGogglesB_gry_F", 2000, "nvg"],
	// RHS
	["AN/PVS-14", "rhsusf_ANPVS_14", 2000, "nvg"],
	//
	["Binoculars", "Binocular", 50, "binoc"],
	["Rangefinder", "Rangefinder", 150, "binoc"],
	["Laser Designator (Sand)", "Laserdesignator", 250, "binoc", "noDLC"],
	["Laser Designator (Olive)", "Laserdesignator_03", 250, "binoc", "noDLC"],
	["Laser Designator (Khaki)", "Laserdesignator_01_khk_F", 250, "binoc", "noDLC"],
	["Laser Designator (Hex)", "Laserdesignator_02", 300, "binoc", "noDLC"],
	["Laser Designator (G Hex)", "Laserdesignator_02_ghex_F", 300, "binoc", "noDLC"],
	["IR Designator Grenade", "B_IR_Grenade", 50, "mag", "WEST"],
	["IR Designator Grenade", "O_IR_Grenade", 50, "mag", "EAST"],
	["IR Designator Grenade", "I_IR_Grenade", 50, "mag", "GUER"],
	["Chemlight (Blue)", "Chemlight_blue", 25, "mag"],
	["Chemlight (Green)", "Chemlight_green", 25, "mag"],
	["Chemlight (Yellow)", "Chemlight_yellow", 25, "mag"],
	["Chemlight (Red)", "Chemlight_red", 25, "mag"],

	//RHS
	["Shemagh (OD)", "rhsusf_shemagh2_gogg_grn", 10, "gogg"],
	["Shemagh (TAN)", "rhsusf_shemagh2_gogg_tan", 10, "gogg"],
	["Shemagh (TAN)", "rhsusf_shemagh2_gogg_tan", 10, "gogg"],

	["Stealth Balaclava (Black)", "G_Balaclava_TI_blk_F", 200, "gogg"],
	["Stealth Balaclava (Black, Goggles)", "G_Balaclava_TI_G_blk_F", 250, "gogg"],
	["Stealth Balaclava (Green)", "G_Balaclava_TI_tna_F", 200, "gogg"],
	["Stealth Balaclava (Green, Goggles)", "G_Balaclava_TI_G_tna_F", 250, "gogg"],
	["Regulator Facepiece", "G_RegulatorMask_F", 25, "gogg"],
	["APR Gasmask (NATO/Black)", "G_AirPurifyingRespirator_01_F", 25, "gogg"],
	["APR Gasmask (CSAT/Black)", "G_AirPurifyingRespirator_02_black_F", 25, "gogg"],
	["APR Gasmask (CSAT/Olive)", "G_AirPurifyingRespirator_02_olive_F", 25, "gogg"],
	["APR Gasmask (CSAT/Sand)", "G_AirPurifyingRespirator_02_sand_F", 25, "gogg"],
	["Blindfold (Black)", "G_Blindfold_01_black_F", 25, "gogg"],
	["Blindfold (White)", "G_Blindfold_01_white_F", 25, "gogg"],
	["Combat Goggles", "G_Combat", 25, "gogg"],
	["Combat Goggles (Green)", "G_Combat_Goggles_tna_F", 25, "gogg", "noDLC"],
	["VR Goggles", "G_Goggles_VR", 25, "gogg"],
	["Balaclava (Black)", "G_Balaclava_blk", 25, "gogg"],
	["Balaclava (Combat Goggles)", "G_Balaclava_combat", 25, "gogg"],
	["Balaclava (Low Profile Goggles)", "G_Balaclava_lowprofile", 25, "gogg"],
	["Balaclava (Olive)", "G_Balaclava_oli", 25, "gogg"],
	["Bandana (Aviator)", "G_Bandanna_aviator", 25, "gogg"],
	["Bandana (Beast)", "G_Bandanna_beast", 25, "gogg"],
	["Bandana (Black)", "G_Bandanna_blk", 25, "gogg"],
	["Bandana (Khaki)", "G_Bandanna_khk", 25, "gogg"],
	["Bandana (Olive)", "G_Bandanna_oli", 25, "gogg"],
	["Bandana (Shades)", "G_Bandanna_shades", 25, "gogg"],
	["Bandana (Sport)", "G_Bandanna_sport", 25, "gogg"],
	["Bandana (Tan)", "G_Bandanna_tan", 25, "gogg"],

	["Aviator Glasses", "G_Aviator", 10, "gogg"],
	["Ladies Shades", "G_Lady_Blue", 10, "gogg"],
	["Ladies Shades (Fire)", "G_Lady_Red", 10, "gogg"],
	["Ladies Shades (Iridium)", "G_Lady_Mirror", 10, "gogg"],
	["Ladies Shades (Sea)", "G_Lady_Dark", 10, "gogg"],
	["Low Profile Goggles", "G_Lowprofile", 10, "gogg"],
	["Shades (Black)", "G_Shades_Black", 10, "gogg"],
	["Shades (Blue)", "G_Shades_Blue", 10, "gogg"],
	["Shades (Green)", "G_Shades_Green", 10, "gogg"],
	["Shades (Red)", "G_Shades_Red", 10, "gogg"],
	["Spectacle Glasses", "G_Spectacles", 10, "gogg"],
	["Sport Shades (Fire)", "G_Sport_Red", 10, "gogg"],
	["Sport Shades (Poison)", "G_Sport_Blackyellow", 10, "gogg"],
	["Sport Shades (Shadow)", "G_Sport_BlackWhite", 10, "gogg"],
	["Sport Shades (Style)", "G_Sport_Checkered", 10, "gogg"],
	["Sport Shades (Vulcan)", "G_Sport_Blackred", 10, "gogg"],
	["Sport Shades (Yetti)", "G_Sport_Greenblack", 10, "gogg"],
	["Square Shades", "G_Squares_Tinted", 10, "gogg"],
	["Square Spectacles", "G_Squares", 10, "gogg"],
	["Tactical Glasses", "G_Tactical_Clear", 10, "gogg"],
	["Tactical Shades", "G_Tactical_Black", 10, "gogg"],
	["Tinted Spectacles", "G_Spectacles_Tinted", 10, "gogg"]
];

#define GENSTORE_ITEM_PRICE(CLASS) ((call genItemArray) select {_x select 1 == CLASS} select 0 select 2)

allStoreMagazines = compileFinal str (call ammoArray + call throwputArray + call genItemArray);
allRegularStoreItems = compileFinal str (call allGunStoreFirearms + call allStoreMagazines + call accessoriesArray);
allStoreGear = compileFinal str (call headArray + call uniformArray + call vestArray + call backpackArray);

genObjectsArray = compileFinal str
[
	//["Base Re-Locker", "Land_Device_assembled_F", 25000, "object"],  //Cael817, SNAFU,Used for base operations <-- Destroyable
	["Ammo Cache", "Box_FIA_Support_F", 250, "ammocrate"],
	["Container (Resupply Crate)", "Land_Cargo10_red_F", 4000, "resupplyObject"],
	["Boom Gate", "Land_BarGate_F", 150, "object"],
	["Decon Shower (Large)	", "DeconShower_02_F", 200, "object"],
	["Razor Fence (Gate)", "Land_Mil_WiredFence_Gate_F", 200, "object"],
	["Entrance Gate (IDAP)", "Land_EntranceGate_01_narrow_F", 200, "object"],
	["Dragon's Tooth", "Land_DragonsTeeth_01_1x1_new_F", 50, "object"],
	["Dragon's Tooth (Red-White)", "Land_DragonsTeeth_01_1x1_new_redwhite_F", 50, "object"],
	["Concrete Hedgehog", "Land_ConcreteHedgehog_01_F", 65, "object"],
	["Czech Hedgehog (New)", "Land_CzechHedgehog_01_new_F", 65, "object"],
	["Czech Hedgehog", "Land_CzechHedgehog_01_old_F", 60, "object"],
	["Gas Station (Malevil, Pump)", "Land_FuelStation_01_pump_malevil_F", 2500, "object"],
	["Gas Station (Tanoil, Pump)", "Land_FuelStation_01_pump_F", 2500, "object"],
	["Gas Station (Benzyna, Pump)", "Land_FuelStation_03_pump_F", 2500, "object"],
	["Gas Station (Fuel, Pump)", "Land_fs_feed_F", 2500, "object"],
	["Gas Station (Sun Oil, Pump)", "Land_FuelStation_Feed_F", 2500, "object"],
	["Water Pump (Forest)", "WaterPump_01_forest_F", 7500, "object"],
	["Water Pump (Sand)", "WaterPump_01_sand_F", 7500, "object"],
	["Food sacks", "Land_Sacks_goods_F", 1800, "object"],
	["Water Barrel", "Land_BarrelWater_F", 1800, "object"],
	["Lamp Post (Harbour)", "Land_LampHarbour_F", 100, "object"],
	["Lamp Post (Shabby)", "Land_LampShabby_F", 100, "object"],
	["Lamp (Halogen)", "Land_LampHalogen_F", 150, "object"],
	["Street Lamp", "Land_LampStreet_02_F", 150, "object"],
	["Street Lamp (Double)", "Land_LampStreet_02_double_F", 200, "object"],
	["Street Lamp (Triple)", "Land_LampStreet_02_triple_F", 250, "object"],
	["Airport Lamp ", "Land_LampAirport_F", 350, "object"],
	["Toiletbox", "Land_ToiletBox_F", 120, "object"],
	["Field Toilet", "Land_FieldToilet_F", 120, "object"],
	["Concrete Frame", "Land_CncShelter_F", 200, "object"],
	["Concrete Ramp", "Land_RampConcrete_F", 350, "object"],
	["Concrete Ramp (High)", "Land_RampConcreteHigh_F", 500, "object"],
	["Walkover Staircase", "Land_Walkover_01_F", 120, "object"],
	["Canal Wall (Small)", "Land_Canal_WallSmall_10m_F", 400, "object"],
	["Canal Stairs", "Land_Canal_Wall_Stairs_F", 500, "object"],
	["Pier Ladder", "Land_PierLadder_F", 250, "object"],
	["Pipes", "Land_Pipes_Large_F", 200, "object"],
	["Scaffolding", "Land_Scaffolding_F", 250, "object"],
	["Scaffolding (New)", "Land_Scaffolding_New_F", 250, "object"],
	["Fireplace", "Land_FirePlace_F", 50, "object"],
	["Campfire", "Land_Campfire_F", 65, "object"]
];

genBuildingsArray = compileFinal str
[
	["Lifeguard Tower", "Land_LifeguardTower_01_F", 50, "object"],
	["HBarrier Watchtower", "Land_HBarrierTower_F", 600, "object"],
	["H-barrier Watchtower (Green)", "Land_HBarrier_01_big_tower_green_F", 600, "object"],
	["Bag Fence (Corner)", "Land_BagFence_Corner_F", 150, "object"],
	["Bag Fence (End)", "Land_BagFence_End_F", 150, "object"],
	["Bag Fence (Long)", "Land_BagFence_Long_F", 200, "object"],
	["Bag Fence (Round)", "Land_BagFence_Round_F", 150, "object"],
	["Bag Fence (Short)", "Land_BagFence_Short_F", 150, "object"],
	["Bag Fence (Corner, Green)", "Land_BagFence_01_corner_green_F", 150, "object"],
	["Bag Fence (End, Green)", "Land_BagFence_01_end_green_F", 150, "object"],
	["Bag Fence (Long, Green)", "Land_BagFence_01_long_green_F", 200, "object"],
	["Bag Fence (Round, Green)", "Land_BagFence_01_round_green_F", 150, "object"],
	["Bag Fence (Short, Green)", "Land_BagFence_01_short_green_F", 150, "object"],
	["Bag Bunker (Small)", "Land_BagBunker_Small_F", 250, "object"],
	["Bag Bunker (Large)", "Land_BagBunker_Large_F", 500, "object"],
	["Bag Bunker (Tower)", "Land_BagBunker_Tower_F", 1000, "object"],
	["Bag Bunker (Small, Green)", "Land_BagBunker_01_small_green_F", 250, "object"],
	["Bag Bunker (Large, Green)", "Land_BagBunker_01_large_green_F", 500, "object"],
	["Bag Bunker (Tower, Green)", "Land_HBarrier_01_tower_green_F", 1000, "object"],
	["Old Bunker", "Land_Bunker_02_light_double_F", 1000, "object"],
	["Modular Bunker", "Land_Bunker_01_small_F", 1000, "object"],
	["Guard Tower (Big)", "Land_GuardTower_01_F", 200, "object"],
	["Guard Tower (Small)", "Land_GuardTower_02_F", 150, "object"],
	["Slum Canvas (Blue)", "Land_cargo_addon02_V1_F", 30, "object"],
	["Slum Canvas (Black)", "Land_cargo_addon02_V2_F", 30, "object"],
	["Slum House (Small)", "Land_Slum_House01_F", 100, "object"],
	["Slum House", "Land_Slum_House02_F", 150, "object"],
	["Slum House (Big)", "Land_Slum_House03_F", 200, "object"],
	["Slum House Container", "Land_cargo_house_slum_F", 300, "object"],
	["Grey Metal Shed (Large)", "Land_Metal_Shed_F", 120, "object"],
	["Industrial Shed (Small)", "Land_Shed_Small_F", 200, "object"],
	["Industrial Shed (Big)", "Land_Shed_Big_F", 400, "object"],
	["Cargo Container (Medium, Blue)", "Land_Cargo20_blue_F", 350, "object"],
	["Cargo Container (Medium, Brick Red)", "Land_Cargo20_brick_red_F", 350, "object"],
	["Cargo Container (Medium, Cyan)", "Land_Cargo20_cyan_F", 350, "object"],
	["Cargo Container (Medium, Grey)", "Land_Cargo20_grey_F", 350, "object"],
	["Cargo Container (Medium, Light Blue)", "Land_Cargo20_light_blue_F", 350, "object"],
	["Cargo Container (Medium, Light Green)", "Land_Cargo20_light_green_F", 350, "object"],
	["Cargo Container (Medium, Military Green)", "Land_Cargo20_military_green_F", 350, "object"],
	["Cargo Container (Medium, Orange)", "Land_Cargo20_orange_F", 350, "object"],
	["Cargo Container (Medium, Red)", "Land_Cargo20_red_F", 350, "object"],
	["Cargo Container (Medium, Sand)", "Land_Cargo20_sand_F", 350, "object"],
	["Cargo Container (Medium, White)", "Land_Cargo20_white_F", 350, "object"],
	["Cargo Container (Medium, Yellow)", "Land_Cargo20_yellow_F", 350, "object"],
	["Cargo Container (Long, Blue)", "Land_Cargo40_blue_F", 600, "object"],
	["Cargo Container (Long, Brick Red)", "Land_Cargo40_brick_red_F", 600, "object"],
	["Cargo Container (Long, Cyan)", "Land_Cargo40_cyan_F", 600, "object"],
	["Cargo Container (Long, Grey)", "Land_Cargo40_grey_F", 600, "object"],
	["Cargo Container (Long, Light Blue)", "Land_Cargo40_light_blue_F", 600, "object"],
	["Cargo Container (Long, Light Green)", "Land_Cargo40_light_green_F", 600, "object"],
	["Cargo Container (Long, Military Green)", "Land_Cargo40_military_green_F", 600, "object"],
	["Cargo Container (Long, Orange)", "Land_Cargo40_orange_F", 600, "object"],
	["Cargo Container (Long, Red)", "Land_Cargo40_red_F", 600, "object"],
	["Cargo Container (Long, Sand)", "Land_Cargo40_sand_F", 600, "object"],
	["Cargo Container (Long, White)", "Land_Cargo40_white_F", 600, "object"],
	["Cargo Container (Long, Yellow)", "Land_Cargo40_yellow_F", 600, "object"],
	["Military Cargo House (Green)", "Land_Cargo_House_V1_F", 500, "object"],
	["Military Cargo Post (Green)", "Land_Cargo_Patrol_V1_F", 800, "object"],
	["Military Cargo HQ (Green)", "Land_Cargo_HQ_V1_F", 1500, "object"],
	["Military Cargo Tower (Green)", "Land_Cargo_Tower_V1_F", 5000, "object"],
	["Military Cargo House (Rusty)", "Land_Cargo_House_V2_F", 500, "object"],
	["Military Cargo Post (Rusty)", "Land_Cargo_Patrol_V2_F", 800, "object"],
	["Military Cargo HQ (Rusty)", "Land_Cargo_HQ_V2_F", 1500, "object"],
	["Military Cargo Tower (Rusty)", "Land_Cargo_Tower_V2_F", 5000, "object"],
	["Military Cargo House (Brown)", "Land_Cargo_House_V3_F", 500, "object"],
	["Military Cargo Post (Brown)", "Land_Cargo_Patrol_V3_F", 800, "object"],
	["Military Cargo HQ (Brown)", "Land_Cargo_HQ_V3_F", 1500, "object"],
	["Military Cargo Tower (Brown)", "Land_Cargo_Tower_V3_F", 5000, "object"],
	["Military Cargo House (Jungle)", "Land_Cargo_House_V4_F", 500, "object"],
	["Military Cargo Post (Jungle)", "Land_Cargo_Patrol_V4_F", 800, "object"],
	["Military Cargo HQ (Jungle)", "Land_Cargo_HQ_V4_F", 1500, "object"],
	["Military Cargo Tower (Jungle)", "Land_Cargo_Tower_V4_F", 5000, "object"],
	["Connector Tent (Open)", "Land_ConnectorTent_01_NATO_open_F", 75, "object"],
	["Connector Tent (Cross)", "Land_ConnectorTent_01_NATO_cross_F", 100, "object"],
	["Tent (Outer)", "Land_MedicalTent_01_NATO_generic_outer_F", 350, "object"],
	["Tent (Inner)", "Land_MedicalTent_01_NATO_generic_inner_F", 500, "object"],
	["Connector Tent (Open)[Tropic]", "Land_ConnectorTent_01_NATO_tropic_open_F", 75, "object"],
	["Connector Tent (Cross)[Tropic]", "Land_ConnectorTent_01_NATO_tropic_cross_F", 100, "object"],
	["Tent (Outer)[Tropic]", "Land_MedicalTent_01_NATO_tropic_generic_outer_F", 350, "object"],
	["Tent (Inner)[Tropic]", "Land_MedicalTent_01_NATO_tropic_generic_inner_F", 500, "object"],
	["Connector Tent (Open)[Hex]", "Land_ConnectorTent_01_CSAT_brownhex_open_F", 75, "object"],
	["Connector Tent (Cross)[Hex]", "Land_ConnectorTent_01_CSAT_brownhex_cross_F", 100, "object"],
	["Tent (Outer)[Hex]", "Land_MedicalTent_01_CSAT_brownhex_generic_outer_F", 350, "object"],
	["Tent (Inner)[Hex]", "Land_MedicalTent_01_CSAT_brownhex_generic_inner_F", 500, "object"],
	["Connector Tent (Open)[G Hex]", "Land_ConnectorTent_01_CSAT_greenhex_open_F", 75, "object"],
	["Connector Tent (Cross)[G Hex]", "Land_ConnectorTent_01_CSAT_greenhex_cross_F", 100, "object"],
	["Tent (Outer)[G Hex]", "Land_MedicalTent_01_CSAT_greenhex_generic_outer_F", 350, "object"],
	["Tent (Inner)[G Hex]", "Land_MedicalTent_01_CSAT_greenhex_generic_inner_F", 500, "object"],
	["Connector Tent (Open)[AAF]", "Land_ConnectorTent_01_AAF_open_F", 75, "object"],
	["Connector Tent (Cross)[AAF]", "Land_ConnectorTent_01_AAF_cross_F", 100, "object"],
	["Tent (Outer)[AAF]", "Land_MedicalTent_01_aaf_generic_outer_F", 350, "object"],
	["Tent (Inner)[AAF]", "Land_MedicalTent_01_aaf_generic_inner_F", 500, "object"],
	["Connector Tent (Open)[Woodland]", "Land_ConnectorTent_01_wdl_open_F", 75, "object"],
	["Connector Tent (Cross)[Woodland]", "Land_ConnectorTent_01_wdl_cross_F", 100, "object"],
	["Tent (Outer)[Woodland]", "Land_MedicalTent_01_wdl_generic_outer_F", 350, "object"],
	["Tent (Inner)[Woodland]", "Land_MedicalTent_01_wdl_generic_inner_F", 500, "object"]
];

genWallsArray = compileFinal str
[
	["Barbed Wire Fence", "Land_New_WiredFence_5m_F", 30, "object"],
	["Barbed Wire Fence (Long)", "Land_New_WiredFence_10m_F", 30, "object"],
	["Razor Fence", "Land_Mil_WiredFence_F", 30, "object"],
	["Razorwire Barrier", "Land_Razorwire_F", 75, "object"],
	["Highway Guardrail", "Land_Crash_barrier_F", 200, "object"],
	["Modular Bunker (Block)", "Land_Bunker_01_blocks_1_F", 300, "object"],
	["Concrete Barrier", "Land_CncBarrier_F", 200, "object"],
	["Concrete Barrier (Stripes)", "Land_CncBarrier_stripes_F", 200, "object"],
	["Concrete Barrier (Medium)", "Land_CncBarrierMedium_F", 350, "object"],
	["Concrete Barrier (Long)", "Land_CncBarrierMedium4_F", 500, "object"],
	["HBarrier (1 block)", "Land_HBarrier_1_F", 150, "object"],
	["HBarrier (3 blocks)", "Land_HBarrier_3_F", 200, "object"],
	["HBarrier (5 blocks)", "Land_HBarrier_5_F", 250, "object"],
	["HBarrier (1 block, Green)", "Land_HBarrier_01_line_1_green_F", 150, "object"],
	["HBarrier (3 blocks, Green)", "Land_HBarrier_01_line_3_green_F", 200, "object"],
	["HBarrier (5 blocks, Green)", "Land_HBarrier_01_line_5_green_F", 250, "object"],
	["HBarrier Big", "Land_HBarrierBig_F", 500, "object"],
	["H-barrier (Big, 4 Blocks, Green)", "Land_HBarrier_01_big_4_green_F", 500, "object"],
	["HBarrier Wall (4 blocks)", "Land_HBarrierWall4_F", 400, "object"],
	["HBarrier Wall (6 blocks)", "Land_HBarrierWall6_F", 500, "object"],
	["H-barrier Wall (Corner)", "Land_HBarrierWall_corner_F", 200, "object"],
	["H-barrier (Corridor)", "Land_HBarrierWall_corridor_F", 400, "object"],
	["HBarrier Wall (4 blocks, Green)", "Land_HBarrier_01_wall_4_green_F", 400, "object"],
	["HBarrier Wall (6 blocks, Green)", "Land_HBarrier_01_wall_6_green_F", 500, "object"],
	["H-barrier Wall (Corner, Green)", "Land_HBarrier_01_wall_corner_green_F", 200, "object"],
	["H-barrier (Corridor, Green)", "Land_HBarrier_01_wall_corridor_green_F", 400, "object"],
	["Concrete Wall", "Land_CncWall1_F", 400, "object"],
	["Concrete Military Wall", "Land_Mil_ConcreteWall_F", 400, "object"],
	["Concrete Wall (Long)", "Land_CncWall4_F", 600, "object"],
	["Military Wall (Big)", "Land_Mil_WallBig_4m_F", 600, "object"],
	["Sandbag Barricade (Short)", "Land_SandbagBarricade_01_half_F", 200, "object"],
	["Sandbag Barricade (Tall, Hole)", "Land_SandbagBarricade_01_hole_F", 300, "object"],
	["Sandbag Barricade (Tall)", "Land_SandbagBarricade_01_F", 300, "object"]
];

genMiscArray = compileFinal str
[
	["Target Human", "TargetBootcampHuman_F", 50, "object"],
	["Shooting Range Bell", "Land_MysteriousBell_01_F", 30, "object"],
	["Shoot House - Wall", "Land_Shoot_House_Wall_F", 30, "object"],
	["Shoot House - Wall (Stand)", "Land_Shoot_House_Wall_Stand_F", 30, "object"],
	["Shoot House - Wall (Crouch)", "Land_Shoot_House_Wall_Crouch_F", 30, "object"],
	["Shoot House - Wall (Prone)", "Land_Shoot_House_Wall_Prone_F", 30, "object"],
	["Shoot House - Corner", "Land_Shoot_House_Corner_F", 30, "object"],
	["Shoot House - Corner (Stand)", "Land_Shoot_House_Corner_Stand_F", 30, "object"],
	["Shoot House - Corner (Crouch)", "Land_Shoot_House_Corner_Crouch_F", 30, "object"],
	["Shoot House - Corner (Prone)", "Land_Shoot_House_Corner_Prone_F", 30, "object"],
	["Shoot House - Panels", "Land_Shoot_House_Panels_F", 30, "object"],
	["Shoot House - Panels (Crouch)", "Land_Shoot_House_Panels_Crouch_F", 30, "object"],
	["Shoot House - Panels (Prone)", "Land_Shoot_House_Panels_Prone_F", 30, "object"],
	["Shoot House - Panels (Vault)", "Land_Shoot_House_Panels_Vault_F", 30, "object"],
	["Shoot House - Panels (Window)", "Land_Shoot_House_Panels_Window_F", 30, "object"],
	["Shoot House - Tunnel", "Land_Shoot_House_Tunnel_F", 30, "object"],
	["Shoot House - Tunnel (Stand)", "Land_Shoot_House_Tunnel_Stand_F", 30, "object"],
	["Shoot House - Tunnel (Crouch)", "Land_Shoot_House_Tunnel_Crouch_F", 30, "object"],
	["Shoot House - Tunnel (Prone)", "Land_Shoot_House_Tunnel_Prone_F", 30, "object"]
];

//allGenStoreVanillaItems = compileFinal str (call genItemArray + call genObjectsArray + call allStoreGear);
allGenStoreVanillaItems = compileFinal str (call genItemArray + call genObjectsArray + call allStoreGear + call genBuildingsArray + call genWallsArray + call genMiscArray);

[] execVM "storeAircraftConfig.sqf";
[] execVM "storeVehiclesConfig.sqf";
[] execVM "storeSpecOpsConfig.sqf";

uavArray = compileFinal str
[
	// Deprecated
];

noColorVehicles = compileFinal str
[
	// Deprecated
];

rgbOnlyVehicles = compileFinal str
[
	// Deprecated
];

_color = "#(rgb,1,1,1)color";
_texDir = "client\images\vehicleTextures\";
_kartDir = "\A3\soft_f_kart\Kart_01\Data\";
_mh9Dir = "\A3\air_f\Heli_Light_01\Data\";
_mohawkDir = "\A3\air_f_beta\Heli_Transport_02\Data\";
_wreckDir = "\A3\structures_f\wrecks\data\";
_gorgonDir = "\A3\armor_f_gamma\APC_Wheeled_03\data\";
_cheetahDir = "\A3\armor_f_beta\apc_tracked_01\data\";
_zamakDir = "\A3\soft_f_beta\truck_02\data\";

colorsArray = compileFinal str
[
	[ // Main colors
		"All", // "All" must always be first in colorsArray
		[
			["Black", _color + "(0.01,0.01,0.01,1)"], // #(argb,8,8,3)color(0.1,0.1,0.1,0.1)
			["Gray", _color + "(0.15,0.151,0.152,1)"], // #(argb,8,8,3)color(0.5,0.51,0.512,0.3)
			["White", _color + "(0.75,0.75,0.75,1)"], // #(argb,8,8,3)color(1,1,1,0.5)
			["Dark Blue", _color + "(0,0.05,0.15,1)"], // #(argb,8,8,3)color(0,0.3,0.6,0.05)
			["Blue", _color + "(0,0.03,0.5,1)"], // #(argb,8,8,3)color(0,0.2,1,0.75)
			["Teal", _color + "(0,0.3,0.3,1)"], // #(argb,8,8,3)color(0,1,1,0.15)
			["Green", _color + "(0,0.5,0,1)"], // #(argb,8,8,3)color(0,1,0,0.15)
			["Yellow", _color + "(0.5,0.4,0,1)"], // #(argb,8,8,3)color(1,0.8,0,0.4)
			["Orange", _color + "(0.4,0.09,0,1)"], // #(argb,8,8,3)color(1,0.5,0,0.4)
			["Red", _color + "(0.45,0.005,0,1)"], // #(argb,8,8,3)color(1,0.1,0,0.3)
			["Pink", _color + "(0.5,0.03,0.3,1)"], // #(argb,8,8,3)color(1,0.06,0.6,0.5)
			["Purple", _color + "(0.1,0,0.3,1)"], // #(argb,8,8,3)color(0.8,0,1,0.1)
			["NATO Tan", _texDir + "nato.paa"], // #(argb,8,8,3)color(0.584,0.565,0.515,0.3)
			["CSAT Brown", _texDir + "csat.paa"], // #(argb,8,8,3)color(0.624,0.512,0.368,0.3)
			["AAF Green", _texDir + "aaf.paa"], // #(argb,8,8,3)color(0.546,0.59,0.363,0.2)
			["Bloodshot", _texDir + "bloodshot.paa"],
			["Carbon", _texDir + "carbon.paa"],
			["Confederate", _texDir + "confederate.paa"],
			["Denim", _texDir + "denim.paa"],
			["Digital", _texDir + "digi.paa"],
			["Digital Black", _texDir + "digi_black.paa"],
			["Digital Desert", _texDir + "digi_desert.paa"],
			["Digital Woodland", _texDir + "digi_wood.paa"],
			["Doritos", _texDir + "doritos.paa"],
			["Drylands", _texDir + "drylands.paa"],
			["Hello Kitty", _texDir + "hellokitty.paa"],
			["Hex", _texDir + "hex.paa"],
			["Hippie", _texDir + "hippie.paa"],
			// ["ISIS", _texDir + "isis.paa"],
			["Leopard", _texDir + "leopard.paa"],
			["Mountain Dew", _texDir + "mtndew.paa"],
			["'Murica", _texDir + "murica.paa"],
			// ["Nazi", _texDir + "nazi.paa"],
			["Orange Camo", _texDir + "camo_orange.paa"],
			["Pink Camo", _texDir + "camo_pink.paa"],
			["Pride", _texDir + "pride.paa"],
			["Psych", _texDir + "psych.paa"],
			["Red Camo", _texDir + "camo_red.paa"],
			["Rusty", _texDir + "rusty.paa"],
			["Sand", _texDir + "sand.paa"],
			["Snake", _texDir + "snake.paa"],
			["Stripes", _texDir + "stripes.paa"],
			["Stripes 2", _texDir + "stripes2.paa"],
			["Stripes 3", _texDir + "stripes3.paa"],
			["Swamp", _texDir + "swamp.paa"],
			["Tiger", _texDir + "tiger.paa"],
			["Trippy", _texDir + "rainbow.paa"],
			["Union Jack", _texDir + "unionjack.paa"],
			["Urban", _texDir + "urban.paa"],
			["Weed", _texDir + "weed.paa"],
			["Woodland", _texDir + "woodland.paa"],
			["Woodland Dark", _texDir + "wooddark.paa"],
			["Woodland Tiger", _texDir + "woodtiger.paa"]
		]
	],
	[ // Kart colors
		"Kart_01_Base_F",
		[
			["Red - Kart", [[0, _kartDir + "kart_01_base_red_co.paa"]]] // no red TextureSource :(
		]
	],
	[ // MH-9 colors
		"Heli_Light_01_base_F",
		[
			["AAF Camo - MH-9", [[0, _mh9Dir + "heli_light_01_ext_indp_co.paa"]]],
			["Blue 'n White - MH-9", [[0, _mh9Dir + "heli_light_01_ext_blue_co.paa"]]],
			["Blueline - MH-9", [[0, _mh9Dir + "Skins\heli_light_01_ext_blueline_co.paa"]]],
			["Cream Gravy - MH-9", [[0, _mh9Dir + "heli_light_01_ext_co.paa"]]],
			["Digital - MH-9", [[0, _mh9Dir + "Skins\heli_light_01_ext_digital_co.paa"]]],
			["Elliptical - MH-9", [[0, _mh9Dir + "Skins\heli_light_01_ext_elliptical_co.paa"]]],
			["Furious - MH-9", [[0, _mh9Dir + "Skins\heli_light_01_ext_furious_co.paa"]]],
			["Graywatcher - MH-9", [[0, _mh9Dir + "Skins\heli_light_01_ext_graywatcher_co.paa"]]],
			["ION - MH-9", [[0, _mh9Dir + "heli_light_01_ext_ion_co.paa"]]],
			["Jeans - MH-9", [[0, _mh9Dir + "Skins\heli_light_01_ext_jeans_co.paa"]]],
			["Light - MH-9", [[0, _mh9Dir + "Skins\heli_light_01_ext_light_co.paa"]]],
			["Shadow - MH-9", [[0, _mh9Dir + "Skins\heli_light_01_ext_shadow_co.paa"]]],
			["Sheriff - MH-9", [[0, _mh9Dir + "Skins\heli_light_01_ext_sheriff_co.paa"]]],
			["Speedy - MH-9", [[0, _mh9Dir + "Skins\heli_light_01_ext_speedy_co.paa"]]],
			["Sunset - MH-9", [[0, _mh9Dir + "Skins\heli_light_01_ext_sunset_co.paa"]]],
			["Vrana - MH-9", [[0, _mh9Dir + "Skins\heli_light_01_ext_vrana_co.paa"]]],
			["Wasp - MH-9", [[0, _mh9Dir + "Skins\heli_light_01_ext_wasp_co.paa"]]],
			["Wave - MH-9", [[0, _mh9Dir + "Skins\heli_light_01_ext_wave_co.paa"]]]
		]
	],
	[ // Blackfoot paintjob
		"Heli_Attack_01_base_F",
		[
			["Rusty - AH-99 Blackfoot", [[0, _wreckDir + "wreck_heli_attack_01_co.paa"]]]
		]
	],
	[ // Kajman paintjobs
		"Heli_Attack_02_base_F",
		[
			["Rusty - Mi-48 Kajman", [
				[0, _wreckDir + "wreck_heli_attack_02_body1_co.paa"],
				[1, _wreckDir + "wreck_heli_attack_02_body2_co.paa"]
			]],
			["Mossy - Mi-48 Kajman", [
				[0, _wreckDir + "uwreck_heli_attack_02_body1_co.paa"],
				[1, _wreckDir + "uwreck_heli_attack_02_body2_co.paa"]
			]]
		]
	],
	[ // Gorgon paintjobs
		"APC_Wheeled_03_base_F",
		[
			["Tan - AFV-4 Gorgon", [
				[0, _gorgonDir + "apc_wheeled_03_ext_co.paa"],
				[1, _gorgonDir + "apc_wheeled_03_ext2_co.paa"],
				[2, _gorgonDir + "rcws30_co.paa"],
				[3, _gorgonDir + "apc_wheeled_03_ext_alpha_co.paa"]
			]]
		]
	],
	[ // Hatchback wreck paintjob
		"Hatchback_01_base_F",
		[
			["Rusty - Hatchback", [[0, _wreckDir + "civilcar_extwreck_co.paa"]]]
		]
	],
	[ // GOD EMPEROR
		"B_MBT_01_cannon_F",
		[
			["Trump - Slammer", [
				[0, _texDir + "slammer_trump_0.paa"],
				[1, _texDir + "slammer_trump_1.paa"]
			]]
		]
	],
	[
		"B_MBT_01_TUSK_F",
		[
			["Trump - Slammer", [[2, _texDir + "slammer_trump_2.paa"]]]
		]
	],
	[
		"I_Heli_Transport_02_F",
		[
			["Marine One", [
				[0, _texDir + "mohawk_marine_one_0.paa"],
				[1, _texDir + "mohawk_marine_one_1.paa"],
				[2, _texDir + "mohawk_marine_one_2.paa"]
			]]
		]
	],
	[
		"B_MRAP_01_F",
		[
			["Gendarmerie", [
				[0, _texDir + "hunter_gendarmerie_0.paa"],
				[1, _texDir + "hunter_gendarmerie_1.paa"]
			]]
		]
	],
	[
		"I_Heli_light_03_unarmed_F",
		[
			["Gendarmerie", [
				[0, _texDir + "hellcat_gendarmerie_0.paa"]
			]]
		]
	]
];

//General Store Item List
//Display Name, Class Name, Description, Picture, Buy Price, Sell Price.
// ["Medical Kit", "medkits", localize "STR_WL_ShopDescriptions_MedKit", "client\icons\medkit.paa", 400, 200],  // not needed since there are First Ait Kits
customPlayerItems = compileFinal str
[
	["LSD", "lsd", localize "STR_WL_ShopDescriptions_LSD", "client\icons\lsd.paa", 12500, 6250],
	["Marijuana", "marijuana", localize "STR_WL_ShopDescriptions_Marijuana", "client\icons\marijuana.paa", 10000, 5000],
	["Cocaine", "cocaine", localize "STR_WL_ShopDescriptions_Cocaine", "client\icons\cocaine.paa", 14000, 7000],
	["Heroin", "heroin", localize "STR_WL_ShopDescriptions_Heroin", "client\icons\heroin.paa", 15000, 7500],

	["Artillery Strike", "artillery", "", "client\icons\tablet.paa", 500000, 100000, "HIDDEN"],
	["Vehicle Pinlock", "pinlock", localize "STR_WL_ShopDescriptions_Pinlock", "client\icons\keypad.paa", 1000, 500],
	["Repair Kit", "repairkit", localize "STR_WL_ShopDescriptions_RepairKit", "client\icons\briefcase.paa", 750, 375],
	//["Defibrillator", "defibrillator", localize "STR_WL_ShopDescriptions_Defibrillator", "client\icons\defibrillator.paa", 13000, 5000],
	["Jerry Can (Full)", "jerrycanfull", localize "STR_WL_ShopDescriptions_fuelFull", "client\icons\jerrycan.paa", 150, 75],
	["Jerry Can (Empty)", "jerrycanempty", localize "STR_WL_ShopDescriptions_fuelEmpty", "client\icons\jerrycan.paa", 50, 25],
	["Spawn Beacon", "spawnbeacon", localize "STR_WL_ShopDescriptions_spawnBeacon", "client\icons\spawnbeacon.paa", 5000, 2500],
	//["Strap-on Bomb", "straponbomb", localize "STR_WL_ShopDescriptions_strapBomb", "client\icons\straponbomb.paa", 2500, 1250],
	["Camo Net", "camonet", localize "STR_WL_ShopDescriptions_Camo", "client\icons\camonet.paa", 600, 300],
	["Syphon Hose", "syphonhose", localize "STR_WL_ShopDescriptions_SyphonHose", "client\icons\syphonhose.paa", 200, 100],
	["Energy Drink", "energydrink", localize "STR_WL_ShopDescriptions_Energy_Drink", "client\icons\energydrink.paa", 100, 50],
	["Quadbike", "quadbike", localize "STR_WL_ShopDescriptions_QuadBike", "\A3\Soft_F\Quadbike_01\Data\UI\Quadbike_01_CA.paa", 500, 250],
	["Warchest", "warchest", localize "STR_WL_ShopDescriptions_Warchest", "client\icons\warchest.paa", 1000, 500]

	//["IP/Net Camera", "cctv_camera", localize "STR_WL_ShopDescriptions_CCTV_Camera", "addons\cctv\icons\camcorder.paa", 850, 500],
	//["Camera Terminal", "cctv_base", localize "STR_WL_ShopDescriptions_CCTV_Base", "addons\cctv\icons\laptop.paa", 500, 300]
];

call compile preprocessFileLineNumbers "mapConfig\storeOwners.sqf";

storeConfigDone = compileFinal "true";
