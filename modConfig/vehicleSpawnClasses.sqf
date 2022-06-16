// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2016 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: vehicleSpawnClasses.sqf
//	@file Author: AgentRev

A3W_smallVehicles =
[
	"C_Quadbike_01_F",
	["B_Quadbike_01_F", "O_Quadbike_01_F", "I_Quadbike_01_F", "I_G_Quadbike_01_F"]
];

//Civilian Vehicle List - Random Spawns
civilianVehicles =
[
	"C_Hatchback_01_F",
	"C_Hatchback_01_sport_F",
	"C_SUV_01_F",
	"C_Offroad_01_F",
	["C_Van_01_box_F", "C_Van_01_transport_F", "C_Van_01_fuel_F"],
	"rhsusf_M1083A1P2_B_M2_WD_fmtv_usarmy", "UK3CB_BAF_LandRover_Snatch_Green_A",
	"UK3CB_BAF_LandRover_Amb_Green_A"
];

//Light Military Vehicle List - Random Spawns
lightMilitaryVehicles =
[
	//British Vehicles
	"UK3CB_BAF_LandRover_Amb_Green_A", "UK3CB_BAF_LandRover_Hard_Green_A", "UK3CB_BAF_LandRover_Soft_Green_A",
	//US Vehicles
	"rhsusf_M1083A1P2_B_M2_WD_fmtv_usarmy",
	"rhsusf_m1151_usarmy_wd", "rhsusf_m1043_w", "rhsusf_m1151_m2crows_usarmy_wd", "rhsusf_m1151_m240_v1_usarmy_wd"
];

//Medium Military Vehicle List - Random Spawns
mediumMilitaryVehicles =
[
	//British Vehicles
	"UK3CB_BAF_LandRover_Snatch_Green_A", "UK3CB_BAF_Jackal2_L111A1_G", "UK3CB_BAF_FV432_Mk3_GPMG_Green",
	//US Vehicles
	"rhsusf_stryker_m1127_m2_d", "rhsusf_m1151_m2crows_usarmy_wd", "rhsusf_m966_w"
];

//Water Vehicles - Random Spawns
waterVehicles =
[
	"C_Boat_Civil_01_F",
	"C_Boat_Civil_01_F",
	["C_Boat_Civil_01_police_F", "C_Boat_Civil_01_rescue_F"],
	["B_Boat_Armed_01_minigun_F", "O_Boat_Armed_01_hmg_F", "I_Boat_Armed_01_minigun_F"]
];

//Object List - Random Spawns.
staticWeaponsList =
[
	"B_Mortar_01_F",
	"O_Mortar_01_F",
	"I_Mortar_01_F",
	"I_G_Mortar_01_F"
];

//Object List - Random Helis.
staticHeliList =
[
	"C_Heli_Light_01_civil_F",
	//"B_Heli_Light_01_F",
	//"O_Heli_Light_02_unarmed_F",
	//"I_Heli_light_03_unarmed_F"
	"UK3CB_BAF_Wildcat_AH1_TRN_8A",
	"UK3CB_BAF_Wildcat_AH1_6_Armed",
	"rhs_ka60_grey",
	"RHS_UH60M_MEV2"
	// don't put cargo helicopters here, it doesn't make sense to find them in towns; they spawn in the CivHeli mission
];

//Object List - Random Planes.
staticPlaneList =
[
	"I_Plane_Fighter_03_dynamicLoadout_F"
];

A3W_planeSpawnOdds = 0.25; // 0.0 to 1.0

//Random Weapon List - Change this to what you want to spawn in cars.
vehicleWeapons =
[
	["rhsusf_weap_m9","rhsusf_weap_glock17g4","rhs_weap_makarov_pm"],
	["rhs_weap_m32"],
	["rhs_weap_M590_5RD","rhsusf_weap_MP7A2_aor1","rhsusf_weap_MP7A2","BWA3_MP7"],
	["rhs_weap_m4a1_blockII_bk", "rhs_weap_m4a1_blockII_d","rhs_weap_m4a1_blockII_KAC_bk","rhs_weap_m4a1_blockII_KAC_d","rhs_weap_m4a1_blockII_KAC_wd","rhs_weap_m4a1_blockII_KAC","rhs_weap_m4a1_blockII_M203_bk","rhs_weap_m4a1_blockII_M203_d","rhs_weap_m4a1_blockII_M203_wd","rhs_weap_m4a1_blockII_M203","rhs_weap_m4a1_blockII_wd","rhs_weap_m4a1_blockII"],
	["rhs_weap_sr25_d","rhs_weap_sr25_ec_d","rhs_weap_sr25_ec_wd","rhs_weap_sr25_ec","rhs_weap_sr25_wd","rhs_weap_sr25"],
	["rhs_weap_M107_d", "rhs_weap_M107_w", "rhs_weap_M107"],
	["rhs_weap_m24sws_d", "rhs_weap_m24sws_wd", "rhs_weap_m24sws"],
	["rhs_weap_m240B", "rhs_weap_m240G"],
	["rhs_weap_makarov_pm","rhs_weap_pya"],
	["rhs_weap_ak103","rhs_weap_ak103_1","rhs_weap_ak103_2"],
	["BWA3_G38","BWA3_G38_tan","BWA3_G38_AG40","BWA3_G38_AG40_tan"],
	["rhs_weap_m249_light_L", "rhs_weap_m249_light_S", "rhs_weap_m249_pip_L_para", "rhs_weap_m249_pip_L", "rhs_weap_m249_pip_ris", "rhs_weap_m249_pip_S_para", "rhs_weap_m249_pip_S", "rhs_weap_m249_pip", "rhs_weap_m249"]
	//["arifle_TRG20_F", "arifle_TRG21_F", "arifle_TRG21_GL_F"],
	//["arifle_Mk20C_F", "arifle_Mk20_F", "arifle_Mk20_GL_F"],
	//["arifle_Katiba_F", "arifle_Katiba_C_F", "arifle_Katiba_GL_F"],
	//["arifle_MXC_F", "arifle_MX_F", "arifle_MX_GL_F", "arifle_MXM_F"],
	//["srifle_EBR_F", "srifle_DMR_01_F"],
	//["arifle_MX_SW_F", "LMG_Mk200_F", "LMG_Zafir_F"]
];

vehicleAddition =
[
	"optic_Arco",
	"optic_SOS",
	"optic_Hamr",
	"optic_Aco",
	"optic_ACO_grn",
	"optic_aco_smg",
	"optic_Holosight",
	"optic_Holosight_smg",
	"acc_flashlight",
	"acc_pointer_IR",
	"Medikit",
	"Medikit",
	"FirstAidKit",
	"ToolKit"
];

vehicleAddition2 =
[
	"Chemlight_blue",
	"Chemlight_green",
	"Chemlight_yellow",
	"Chemlight_red",
	"rhs_mag_m18_green",
	"rhs_mag_m18_purple",
	"rhs_mag_m18_red",
	"rhs_mag_m18_yellow"
];
