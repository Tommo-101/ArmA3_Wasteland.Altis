// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
/*********************************************************#
# @@ScriptName: storeAircraftConfig.sqf
# @@Author: Tommo
# @@Create Date: 2022-04-04
#*********************************************************/

civAirArray = compileFinal str
[
	["Caesar BTT", "C_Plane_Civil_01_F", 5000, "vehicle"],
	["M-900 Civilian", "C_Heli_Light_01_civil_F", 4000, "vehicle"] // MH-6, no flares
];

gunshipsHeliArray = compileFinal str
[
	["MH-9 Hummingbird", "B_Heli_Light_01_F", 5000, "vehicle"], // MH-6
	["PO-30 Orca (Unarmed)", "O_Heli_Light_02_unarmed_F", 30000, "vehicle"], // Ka-60
	["UH-80 Ghost Hawk", "B_Heli_Transport_01_F", 35000, "vehicle"], // UH-60 Stealth with 2 side miniguns
	["AH-9 Pawnee (Gun-Only)", "B_Heli_Light_01_dynamicLoadout_F", 60000, "vehicle", "variant_pawneeGun"], // CUSTOM
	["AH-9 Pawnee (CAS)", "B_Heli_Light_01_dynamicLoadout_F", 70000, "vehicle"], // CUSTOM
	["AH-9 Pawnee (Unguided AT)", "B_Heli_Light_01_dynamicLoadout_F", 70000, "vehicle", "variant_pawneeGun"], // CUSTOM
	["PO-30 Orca (DAR)", "O_Heli_Light_02_dynamicLoadout_F", 60000, "vehicle"], // CUSTOM
	["PO-30 Orca (DAGR)", "O_Heli_Light_02_dynamicLoadout_F", 70000, "vehicle", "variant_orcaDAGR"], // CUSTOM
	["PO-30 Orca (DAKKA)", "O_Heli_Light_02_dynamicLoadout_F", 60000, "vehicle", "variant_orcaDAKKA"], // CUSTOM
	["WY-55 Hellcat (Unarmed)", "I_Heli_light_03_unarmed_F", 30000, "vehicle"], // AW159
	["WY-55 Hellcat (DAKKA)", "I_Heli_light_03_dynamicLoadout_F", 80000, "vehicle", "variant_catDAKKA"], // CUSTOM
	["WY-55 Hellcat (MR)", "I_Heli_light_03_dynamicLoadout_F", 80000, "vehicle"], // CUSTOM
	["WY-55 Hellcat (AT)", "I_Heli_light_03_dynamicLoadout_F", 100000, "vehicle", "variant_catAT"], // CUSTOM
	["AH-99 Blackfoot (CAS)", "B_Heli_Attack_01_dynamicLoadout_F", 100000, "vehicle"], // RAH-66 with gunner // CUSTOM
	["AH-99 Blackfoot (MR)", "B_Heli_Attack_01_dynamicLoadout_F", 100000, "vehicle", "variant_footMR"], // CUSTOM
	["Mi-48 Kajman (MR)", "O_Heli_Attack_02_dynamicLoadout_F", 120000, "vehicle"], // Mi-28 with gunner // CUSTOM
	["Mi-48 Kajman (AT)", "O_Heli_Attack_02_dynamicLoadout_F", 120000, "vehicle", "variant_kajAT"], // Mi-28 with gunner // CUSTOM
	["Mi-48 Kajman (AA)", "O_Heli_Attack_02_dynamicLoadout_F", 120000, "vehicle", "variant_kajAA"], // Mi-28 with gunner // CUSTOM
	["Mi-48 Kajman (HVY)", "O_Heli_Attack_02_dynamicLoadout_F", 120000, "vehicle", "variant_kajHVY"] // Mi-28 with gunner // CUSTOM
];

combatJetsArray = compileFinal str
[
	["A-143 Buzzard (AA)", "I_Plane_Fighter_03_dynamicLoadout_F", 150000, "vehicle", "variant_buzzardAA"],
	["A-143 Buzzard (CAS)", "I_Plane_Fighter_03_dynamicLoadout_F", 200000, "vehicle", "variant_buzzardCAS"],
	["A-149 Gryphon (AA)", "I_Plane_Fighter_04_F", 150000, "vehicle"], // CUSTOM
	["A-149 Gryphon (CLST)", "I_Plane_Fighter_04_F", 150000, "vehicle", "variant_gryphonCLST"], // CUSTOM
	["F/A-181 Black Wasp Stealth (AA)", "B_Plane_Fighter_01_Stealth_F", 150000, "vehicle"], // CUSTOM
	["F/A-181 Black Wasp (AT)", "B_Plane_Fighter_01_F", 150000, "vehicle"], // CUSTOM
	["F/A-181 Black Wasp (MR)", "B_Plane_Fighter_01_F", 200000, "vehicle", "variant_blackwaspMR"], // CUSTOM
	["To-201 Shikra Stealth (AA)", "O_Plane_Fighter_02_Stealth_F", 150000, "vehicle"], // CUSTOM
	["To-201 Shikra (AT)", "O_Plane_Fighter_02_F", 150000, "vehicle"], // CUSTOM
	["A-164 Wipeout (CAS)", "B_Plane_CAS_01_dynamicLoadout_F", 200000, "vehicle"], // CUSTOM
	["A-164 Wipeout (CLST)", "B_Plane_CAS_01_dynamicLoadout_F", 200000, "vehicle", "variant_wipeCLST"], // CUSTOM
	["To-199 Neophron (CAS)", "O_Plane_CAS_02_dynamicLoadout_F", 200000, "vehicle"], // CUSTOM
	["Y-32 Xi'an", "O_T_VTOL_02_infantry_dynamicLoadout_F", 120000, "vehicle"]
];

utilityJetsArray = compileFinal str
[

];

utilityHeliArray = compileFinal str
[
	["CH-49 Mohawk", "I_Heli_Transport_02_F", 30000, "vehicle"], // AW101
	["Mi-290 Taru (Resupply)", "O_Heli_Transport_04_ammo_F", 45000, "vehicle"],
	["Mi-290 Taru (Crane)", "O_Heli_Transport_04_F", 45000, "vehicle"], // CH-54
	["Mi-290 Taru (Box)", "O_Heli_Transport_04_box_F", 45000, "vehicle"],
	["Mi-290 Taru (Fuel)", "O_Heli_Transport_04_fuel_F", 45000, "vehicle"],
	["Mi-290 Taru (Bench)", "O_Heli_Transport_04_bench_F", 45000, "vehicle"],
	["Mi-290 Taru (Transport)", "O_Heli_Transport_04_covered_F", 45000, "vehicle"],
	["Mi-290 Taru (Medical)", "O_Heli_Transport_04_medevac_F", 45000, "vehicle"],
	["Mi-290 Taru (Repair)", "O_Heli_Transport_04_repair_F", 45000, "vehicle"],
	["CH-67 Huron (Unarmed)", "B_Heli_Transport_03_unarmed_F", 45000, "vehicle"], // CH-47
	["CH-67 Huron (Armed)", "B_Heli_Transport_03_F", 50000, "vehicle"] // CH-47 with 2 side miniguns
];

specialistAirArray = compileFinal str
[

];

allAirStoreVehicles = compileFinal str (call civAirArray + call gunshipsHeliArray + call combatJetsArray + call utilityJetsArray + call utilityHeliArray + call specialistAirArray);
