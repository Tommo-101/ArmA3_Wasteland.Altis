// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
/*********************************************************#
# @@ScriptName: storeAircraftConfig.sqf
# @@Author: Tommo
# @@Create Date: 2022-04-04
#*********************************************************/

//Text name, classname, buy cost, spawn type, sell price (selling not implemented) or spawning color
landArray = compileFinal str
[
	// SKIPSAVE = will not be autosaved until first manual force save, good for cheap vehicles that usually get abandoned
	["Remote Designator (Khaki)", "B_W_Static_Designator_01_F", 750, "vehicle", "SKIPSAVE", "HIDDEN"], // hidden, for paint & sell price
	["Remote Designator (Sand)", "B_Static_Designator_01_F", 750, "vehicle", "SKIPSAVE", "HIDDEN"], //
	["Remote Designator (Hex)", "O_Static_Designator_02_F", 750, "vehicle", "SKIPSAVE", "HIDDEN"], //
	["Kart", "C_Kart_01_F", 400, "vehicle", "SKIPSAVE"],
	["Tractor", "C_Tractor_01_F", 500, "vehicle", "SKIPSAVE"],
	["Quadbike (Civilian)", "C_Quadbike_01_F", 500, "vehicle", "SKIPSAVE", "HIDDEN"], // hidden, just a paintjob
	["Quadbike (NATO)", "B_Quadbike_01_F", 500, "vehicle", "SKIPSAVE", "HIDDEN"], //
	["Quadbike (CSAT)", "O_Quadbike_01_F", 500, "vehicle", "SKIPSAVE", "HIDDEN"], //
	["Quadbike (AAF)", "I_Quadbike_01_F", 500, "vehicle", "SKIPSAVE", "HIDDEN"], //
	["Quadbike", "I_G_Quadbike_01_F", 500, "vehicle", "SKIPSAVE"],
	["Hatchback", "C_Hatchback_01_F", 750, "vehicle", "SKIPSAVE"],
	["Hatchback Sport", "C_Hatchback_01_sport_F", 900, "vehicle", "SKIPSAVE"],
	["SUV", "C_SUV_01_F", 1000, "vehicle", "SKIPSAVE"],
	["MB 4WD", "C_Offroad_02_unarmed_F", 1000, "vehicle", "SKIPSAVE"],
	["MB 4WD (Guerilla)", "I_C_Offroad_02_unarmed_F", 900, "vehicle", "SKIPSAVE", "HIDDEN"], // hidden, just a paintjob
	["MB 4WD LMG", "I_C_Offroad_02_LMG_F", 1750, "vehicle", "SKIPSAVE"],
	["MB 4WD AT", "I_C_Offroad_02_AT_F", 7500, "vehicle"],
	["Offroad", "C_Offroad_01_F", 1000, "vehicle", "SKIPSAVE"],
	["Offroad Camo", "I_G_Offroad_01_F", 1250, "vehicle", "SKIPSAVE", "HIDDEN"], // hidden, just a paintjob
	["Offroad Police", "B_GEN_Offroad_01_gen_F", 1000, "vehicle", "SKIPSAVE", "noDLC"],
	["Offroad Covered", "I_E_Offroad_01_covered_F", 1100, "vehicle", "SKIPSAVE"],
	["Offroad Repair", "C_Offroad_01_repair_F", 1500, "vehicle", "SKIPSAVE"],
	["Offroad HMG", "I_G_Offroad_01_armed_F", 2500, "vehicle", "SKIPSAVE"],
	["Offroad AT", "I_G_Offroad_01_AT_F", 7500, "vehicle"],
	["Truck", "C_Van_01_transport_F", 700, "vehicle", "SKIPSAVE"],
	["Truck Camo", "I_G_Van_01_transport_F", 800, "vehicle", "SKIPSAVE", "HIDDEN"], // hidden, just a paintjob
	["Truck Box", "C_Van_01_box_F", 900, "vehicle", "SKIPSAVE"],
	["Fuel Truck", "C_Van_01_fuel_F", 2000, "vehicle", "SKIPSAVE"],
	["Fuel Truck Camo", "I_G_Van_01_fuel_F", 2100, "vehicle", "SKIPSAVE", "HIDDEN"], // hidden, just a paintjob
	["Van Cargo", "C_Van_02_vehicle_F", 1000, "vehicle", "SKIPSAVE"],
	["Van Transport", "C_Van_02_transport_F", 1000, "vehicle", "SKIPSAVE"],
	["Van Police Cargo", "B_GEN_Van_02_vehicle_F", 1000, "vehicle", "SKIPSAVE"],
	["Van Police Transport", "B_GEN_Van_02_transport_F", 1000, "vehicle", "SKIPSAVE"],
	["Van Ambulance", "C_Van_02_medevac_F", 1500, "vehicle", "SKIPSAVE"],
	["Van Repair", "C_Van_02_service_F", 2000, "vehicle", "SKIPSAVE"]
];

lightInfArray = compileFinal str
[
	["Prowler Light", "B_CTRG_LSV_01_light_F", 8000, "vehicle", "SKIPSAVE"],
	["Prowler", "B_T_LSV_01_unarmed_F", 10000, "vehicle", "SKIPSAVE"],
	["Prowler HMG", "B_T_LSV_01_armed_F", 14000, "vehicle", "SKIPSAVE"],
	["Qilin", "O_T_LSV_02_unarmed_F", 10000, "vehicle", "SKIPSAVE"],
	["Qilin Minigun", "O_T_LSV_02_armed_F", 20000, "vehicle", "SKIPSAVE"],
	// Hidden
	["Hunter", "B_MRAP_01_F", 10000, "vehicle", "SKIPSAVE", "HIDDEN"],
	["Hunter HMG", "B_MRAP_01_hmg_F", 14000, "vehicle", "SKIPSAVE", "HIDDEN"],
	["Hunter GMG", "B_MRAP_01_gmg_F", 20000, "vehicle", "SKIPSAVE", "HIDDEN"],
	["Ifrit", "O_MRAP_02_F", 15000, "vehicle", "SKIPSAVE", "HIDDEN"],
	["Ifrit HMG", "O_MRAP_02_hmg_F", 20000, "vehicle", "SKIPSAVE", "HIDDEN"],
	["Ifrit GMG", "O_MRAP_02_gmg_F", 25000, "vehicle", "SKIPSAVE", "HIDDEN"],
	["Strider", "I_MRAP_03_F", 15000, "vehicle", "SKIPSAVE", "HIDDEN"],
	["Strider HMG", "I_MRAP_03_hmg_F", 20000, "vehicle", "SKIPSAVE", "HIDDEN"],
	["Strider GMG", "I_MRAP_03_gmg_F", 25000, "vehicle", "SKIPSAVE", "HIDDEN"],
	/// New Humvees
	["M1043 HMMWV Unarmed", "rhsusf_m1043_w", 12000, "vehicle"],
	["M1043 HMMWV M2 HMG", "rhsusf_m1043_w_m2", 18000, "vehicle"],
	["M1043 HMMWV MK19 GMG", "rhsusf_m1043_w_mk19", 25000, "vehicle"],
	// Humvees Newer
	["M1151 HMMWV LPV Unarmed", "rhsusf_m1151_usarmy_wd", 16000, "vehicle"],
	["M1151 HMMWV M240 LMG", "rhsusf_m1151_m240_v1_usarmy_wd", 18000, "vehicle"],
	["M1151 HMMWV M2 HMG", "rhsusf_m1151_m2_v1_usarmy_wd", 20000, "vehicle"],
	["M1151 HMMWV M2 HMG (v2)", "rhsusf_m1151_m2_v2_usarmy_wd", 22000, "vehicle"],
	["M1151 HMMWV M2 HMG LSR", "rhsusf_m1151_m2_lras3_v1_usarmy_wd", 22000, "vehicle"],
	["M1151 HMMWV MK19 GMG", "rhsusf_m1151_mk19_v1_usarmy_wd", 24000, "vehicle"],
	["M1151 HMMWV MK19 GMG (v2)", "rhsusf_m1151_mk19_v2_usarmy_wd", 26000, "vehicle"],
	["M1151 HMMWV M2 Crows", "rhsusf_m1151_m2crows_usarmy_wd", 28000, "vehicle"],
	["M1151 HMMWV MK19 Crows", "rhsusf_m1151_mk19crows_usarmy_wd", 30000, "vehicle"],
	["M1151 HMMWV TOW", "rhsusf_m966_w", 34000, "vehicle"]
];

armoredArray = compileFinal str
[
	["M1132 Stryker Mine Clearance", "rhsusf_stryker_m1132_m2_wd", 32000, "vehicle"],
	["M1132 Stryker M2", "rhsusf_stryker_m1127_m2_d", 34000, "vehicle"],
	["M1132 Stryker MK19", "rhsusf_stryker_m1126_mk19_wd", 36000, "vehicle"],

	["AWC 304 Nyx Autocannon", "I_LT_01_cannon_F", 40000, "vehicle"],
	["IFV-6c Panther", "B_APC_Tracked_01_rcws_F", 45000, "vehicle"],
	["FV-720 Mora", "I_APC_tracked_03_cannon_F", 50000, "vehicle"],
	["BTR-K Kamysh", "O_APC_Tracked_02_cannon_F", 50000, "vehicle"],
	["MSE-3 Marid", "O_APC_Wheeled_02_rcws_v2_F", 60000, "vehicle"],
	["AMV-7 Marshall", "B_APC_Wheeled_01_cannon_F", 65000, "vehicle"],
	["AFV-4 Gorgon", "I_APC_Wheeled_03_cannon_F", 70000, "vehicle"],
	/// New IFV RHS
	["M2A3 Bradley", "RHS_M2A2_wd", 75000, "vehicle"],
	["M2A2 Bradley B1", "RHS_M2A2_BUSKI_WD", 80000, "vehicle"],
	["M2A3 Bradley", "RHS_M2A3_wd", 85000, "vehicle"],
	["M2A3 Bradley B1", "RHS_M2A3_BUSKI_wd", 90000, "vehicle"],
	["M2A3 Bradley B3", "RHS_M2A3_BUSKIII_wd", 95000, "vehicle"],
	["M6A2 Bradley (AA)", "RHS_M6_wd", 120000, "vehicle"]
];

antiArray = compileFinal str
[
	["Prowler AT", "B_T_LSV_01_AT_F", 25000, "vehicle"],
	["Qilin AT", "O_T_LSV_02_AT_F", 25000, "vehicle"],
	["AWC 301 Nyx AT", "I_LT_01_AT_F", 30000, "vehicle"],
	["AWC 302 Nyx AA", "I_LT_01_AA_F", 30000, "vehicle"],
	["M1132 Stryker AT", "rhsusf_stryker_m1134_wd", 55000, "vehicle"],
	["IFV-6a Cheetah AA", "B_APC_Tracked_01_AA_F", 65000, "vehicle"],
	["ZSU-39 Tigris AA", "O_APC_Tracked_02_AA_F", 65000, "vehicle"],
	["Rhino MGS", "B_AFV_Wheeled_01_cannon_F", 85000, "vehicle"],
	["Rhino MGS UP", "B_AFV_Wheeled_01_up_cannon_F", 90000, "vehicle"]
];

tanksArray = compileFinal str
[
	["M2A1 Slammer", "B_MBT_01_cannon_F", 90000, "vehicle"],
	["M2A4 Slammer HMG", "B_MBT_01_TUSK_F", 95000, "vehicle"], // Commander gun variant
	["T-100 Varsuk", "O_MBT_02_cannon_F", 95000, "vehicle"],
	["MBT-52 Kuma", "I_MBT_03_cannon_F", 95000, "vehicle"],
	["T-140 Angara", "O_MBT_04_cannon_F", 10000, "vehicle"],
	["T-140K Angara", "O_MBT_04_command_F", 120000, "vehicle"],
	/// New Tanks RHS
	["M1A2 Abrams", "rhsusf_m1a1aimwd_usarmy", 100000, "vehicle"],
	["M1A2 Abrams T1", "rhsusf_m1a1aim_tuski_wd", 120000, "vehicle"],
	["M1A2 Abrams SEPV1", "rhsusf_m1a2sep1wd_usarmy", 140000, "vehicle"],
	["M1A2 Abrams SEPV1 T1", "rhsusf_m1a2sep1tuskiwd_usarmy", 160000, "vehicle"],
	["M1A2 Abrams SEPV1 T2", "rhsusf_m1a2sep1tuskiiwd_usarmy", 180000, "vehicle"],
	["M1A2 Abrams SEPV2", "rhsusf_m1a2sep2wd_usarmy", 190000, "vehicle"]
];

boatsArray = compileFinal str
[
	["Water Scooter", "C_Scooter_Transport_01_F", 5000, "boat", "SKIPSAVE"],

	["Rescue Boat", "C_Rubberboat", 5000, "boat", "SKIPSAVE", "HIDDEN"], // hidden, just a paintjob
	["Rescue Boat (NATO)", "B_Lifeboat", 5000, "boat", "SKIPSAVE", "HIDDEN"], //
	["Rescue Boat (CSAT)", "O_Lifeboat", 5000, "boat", "SKIPSAVE", "HIDDEN"], //
	["Assault Boat", "B_Boat_Transport_01_F", 10000, "boat", "SKIPSAVE"],
	["Assault Boat (CSAT)", "O_Boat_Transport_01_F", 10000, "boat", "SKIPSAVE", "HIDDEN"], // hidden, just a paintjob
	["Assault Boat (AAF)", "I_Boat_Transport_01_F", 10000, "boat", "SKIPSAVE", "HIDDEN"], //
	["Assault Boat (FIA)", "I_G_Boat_Transport_01_F", 10000, "boat", "SKIPSAVE", "HIDDEN"], //
	["Motorboat", "C_Boat_Civil_01_F", 10000, "boat", "SKIPSAVE"],
	["Motorboat Rescue", "C_Boat_Civil_01_rescue_F", 9000, "boat", "SKIPSAVE", "HIDDEN"], // hidden, just a paintjob
	["Motorboat Police", "C_Boat_Civil_01_police_F", 9000, "boat", "SKIPSAVE", "HIDDEN"], //

	["RHIB", "I_C_Boat_Transport_02_F", 15000, "boat", "SKIPSAVE"],

	["Speedboat HMG", "O_Boat_Armed_01_hmg_F", 20000, "boat", "SKIPSAVE"],
	["Speedboat Minigun", "B_Boat_Armed_01_minigun_F", 20000, "boat", "SKIPSAVE"],
	["Speedboat Minigun (AAF)", "I_Boat_Armed_01_minigun_F", 20000, "boat", "SKIPSAVE", "HIDDEN"], // hidden, just a paintjob
	["SDV Submarine (NATO)", "B_SDV_01_F", 20000, "submarine", "SKIPSAVE"],
	["SDV Submarine (CSAT)", "O_SDV_01_F", 20000, "submarine", "SKIPSAVE"],
	["SDV Submarine (AAF)", "I_SDV_01_F", 20000, "submarine", "SKIPSAVE"],

	["Mk.V SOC", "rhsusf_mkvsoc", 90000, "boat", "SKIPSAVE"]
];

utilityArray = compileFinal str
[
	["HEMTT Tractor", "B_Truck_01_mover_F", 4000, "vehicle"],
	["HEMTT Resupply", "B_Truck_01_ammo_F", 5000, "vehicle"],
	//["HEMTT Box", "B_Truck_01_box_F", 5000, "vehicle"],
	["HEMTT Transport", "B_Truck_01_transport_F", 6000, "vehicle"],
	["HEMTT Covered", "B_Truck_01_covered_F", 7000, "vehicle"],
	["HEMTT Fuel", "B_Truck_01_fuel_F", 8000, "vehicle"],
	["HEMTT Medical", "B_Truck_01_medical_F", 9000, "vehicle"],
	["HEMTT Repair", "B_Truck_01_Repair_F", 10000, "vehicle"],

	//["Tempest Device", "O_Truck_03_device_F", 4000, "vehicle"],
	["Tempest Resupply", "O_Truck_03_ammo_F", 5000, "vehicle"],
	["Tempest Transport", "O_Truck_03_transport_F", 6000, "vehicle"],
	["Tempest Covered", "O_Truck_03_covered_F", 7000, "vehicle"],
	["Tempest Fuel", "O_Truck_03_fuel_F", 8000, "vehicle"],
	["Tempest Medical", "O_Truck_03_medical_F", 9000, "vehicle"],
	["Tempest Repair", "O_Truck_03_repair_F", 10000, "vehicle"],

	["Zamak Resupply", "I_Truck_02_ammo_F", 4000, "vehicle"],
	["Zamak Transport", "I_Truck_02_transport_F", 4500, "vehicle"],
	["Zamak Covered", "I_Truck_02_covered_F", 5000, "vehicle"],
	["Zamak Fuel", "I_Truck_02_fuel_F", 6000, "vehicle"],
	["Zamak Medical", "I_Truck_02_medical_F", 7000, "vehicle"],
	["Zamak Repair", "I_Truck_02_box_F", 8000, "vehicle"],

	["AWC 303 Nyx Recon", "I_LT_01_scout_F", 10000, "vehicle"],
	["CRV-6e Bobcat (Resupply)", "B_APC_Tracked_01_CRV_F", 30000, "vehicle"],

	// Humvee Utility
	["M1097A2 Transporter (2 Door)", "rhsusf_m998_w_2dr", 12000, "vehicle"],
	["M1097A2 Transporter (4 Door)", "rhsusf_m998_w_4dr", 14000, "vehicle"],
	["M1097A2 Transporter Covered", "rhsusf_m998_w_2dr_fulltop", 14000, "vehicle"],
	["M1097A2 Transporter Armored", "rhsusf_m1165_usarmy_wd", 15000, "vehicle"]
];

//allVehStoreVehicles = compileFinal str (call landArray + call armoredArray + call tanksArray + call helicoptersArray + call planesArray + call boatsArray);
allVehStoreVehicles = compileFinal str (call landArray + call lightInfArray + call armoredArray + call antiArray + call tanksArray + call boatsArray + call utilityArray);
