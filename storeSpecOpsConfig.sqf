// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
/*********************************************************#
# @@ScriptName: storeAircraftConfig.sqf
# @@Author: Tommo
# @@Create Date: 2022-04-04
#*********************************************************/

droneArray = compileFinal str
[
	["ED-1E Camera UGV", "B_UGV_02_Science_F", GENSTORE_ITEM_PRICE("B_UGV_02_Science_backpack_F"), "vehicle", "SKIPSAVE"],
	["ED-1E Camera UGV", "O_UGV_02_Science_F", GENSTORE_ITEM_PRICE("O_UGV_02_Science_backpack_F"), "vehicle", "SKIPSAVE"],
	["ED-1E Camera UGV", "I_UGV_02_Science_F", GENSTORE_ITEM_PRICE("I_UGV_02_Science_backpack_F"), "vehicle", "SKIPSAVE"],
	["ED-1D Demining UGV", "B_UGV_02_Demining_F", GENSTORE_ITEM_PRICE("B_UGV_02_Demining_backpack_F"), "vehicle", "SKIPSAVE"],
	["ED-1D Demining UGV", "O_UGV_02_Demining_F", GENSTORE_ITEM_PRICE("O_UGV_02_Demining_backpack_F"), "vehicle", "SKIPSAVE"],
	["ED-1D Demining UGV", "I_UGV_02_Demining_F", GENSTORE_ITEM_PRICE("I_UGV_02_Demining_backpack_F"), "vehicle", "SKIPSAVE"],

	["UGV Stomper (NATO)", "B_UGV_01_F", 2500, "vehicle"],
	["UGV Stomper RCWS (NATO)", "B_UGV_01_rcws_F", 15000, "vehicle"],
	["UGV Stomper (AAF)", "I_UGV_01_F", 2500, "vehicle"],
	["UGV Stomper RCWS (AAF)", "I_UGV_01_rcws_F", 15000, "vehicle"],
	["UGV Saif (CSAT)", "O_UGV_01_F", 2500, "vehicle"],
	["UGV Saif RCWS (CSAT)", "O_UGV_01_rcws_F", 15000, "vehicle"],

	["AR-2 Darter UAV", "B_UAV_01_F", GENSTORE_ITEM_PRICE("B_UAV_01_backpack_F"), "vehicle", "SKIPSAVE"],
	["AR-2 Darter UAV", "O_UAV_01_F", GENSTORE_ITEM_PRICE("O_UAV_01_backpack_F"), "vehicle", "SKIPSAVE"],
	["AR-2 Darter UAV", "I_UAV_01_F", GENSTORE_ITEM_PRICE("I_UAV_01_backpack_F"), "vehicle", "SKIPSAVE"],
	["AL-6 Pelican UAV", "B_UAV_06_F", GENSTORE_ITEM_PRICE("B_UAV_06_backpack_F"), "vehicle", "SKIPSAVE"],
	["AL-6 Pelican UAV", "O_UAV_06_F", GENSTORE_ITEM_PRICE("O_UAV_06_backpack_F"), "vehicle", "SKIPSAVE"],
	["AL-6 Pelican UAV", "I_UAV_06_F", GENSTORE_ITEM_PRICE("I_UAV_06_backpack_F"), "vehicle", "SKIPSAVE"],
	["AL-6 Pelican Medical UAV", "B_UAV_06_medical_F", GENSTORE_ITEM_PRICE("B_UAV_06_medical_backpack_F"), "vehicle", "SKIPSAVE"],
	["AL-6 Pelican Medical UAV", "O_UAV_06_medical_F", GENSTORE_ITEM_PRICE("O_UAV_06_medical_backpack_F"), "vehicle", "SKIPSAVE"],
	["AL-6 Pelican Medical UAV", "I_UAV_06_medical_F", GENSTORE_ITEM_PRICE("I_UAV_06_medical_backpack_F"), "vehicle", "SKIPSAVE"],
	["AL-6 Pelican Demining UAV", "C_IDAP_UAV_06_antimine_F", GENSTORE_ITEM_PRICE("C_IDAP_UAV_06_antimine_backpack_F"), "vehicle", "SKIPSAVE"],

	["MQ-12 Falcon", "B_T_UAV_03_F", 110000, "vehicle"], // Do NOT use "B_T_UAV_03_dynamicLoadout_F" (unlees you don't need ASRAAM)

	["K40 Ababil-3 (Missle) Opfor", "O_UAV_02_dynamicLoadout_F", 200000, "vehicle", "variant_greyhawkMissile"],
	["K40 Ababil-3 (Missle) Indy", "I_UAV_02_dynamicLoadout_F", 200000, "vehicle", "variant_greyhawkMissile"],
	["K40 Ababil-3 (Bomber) Opfor", "O_UAV_02_dynamicLoadout_F", 200000, "vehicle", "variant_greyhawkBomber"],
	["K40 Ababil-3 (Bomber) Indy", "I_UAV_02_dynamicLoadout_F", 200000, "vehicle", "variant_greyhawkBomber"],
	["K40 Ababil-3 (Cluster) Opfor", "O_UAV_02_dynamicLoadout_F", 200000, "vehicle", "variant_greyhawkCluster"],
	["K40 Ababil-3 (Cluster) Indy", "I_UAV_02_dynamicLoadout_F", 200000, "vehicle", "variant_greyhawkCluster"],
	["K40 Ababil-3 (DAGR) Opfor", "O_UAV_02_dynamicLoadout_F", 200000, "vehicle", "variant_greyhawkDAGR"],
	["K40 Ababil-3 (DAGR) Indy", "I_UAV_02_dynamicLoadout_F", 200000, "vehicle", "variant_greyhawkDAGR"],

	["MQ4A Greyhawk (Missle)", "B_UAV_02_dynamicLoadout_F", 200000, "vehicle", "variant_greyhawkMissile"],
	["MQ4A Greyhawk (Bomber)", "B_UAV_02_dynamicLoadout_F", 200000, "vehicle", "variant_greyhawkBomber"],
	["MQ4A Greyhawk (Cluster)", "B_UAV_02_dynamicLoadout_F", 200000, "vehicle", "variant_greyhawkCluster"],
	["MQ4A Greyhawk (Missle)", "B_UAV_02_dynamicLoadout_F", 200000, "vehicle", "variant_greyhawkDAGR"],

	["UCAV Sentinel (Missile)", "B_UAV_05_F", 350000, "vehicle", "variant_sentinelMissile"],
	["UCAV Sentinel (Bomber)", "B_UAV_05_F", 350000, "vehicle", "variant_sentinelBomber"],
	["UCAV Sentinel (Cluster)", "B_UAV_05_F", 350000, "vehicle", "variant_sentinelCluster"],

	["MQ-9 Reaper (Multi-Role)", "USAF_MQ9", 370000, "vehicle"],
	["MQ-9 Reaper (Missle)", "USAF_MQ9", 370000, "vehicle", "variant_mq9missle"],
	["MQ-9 Reaper (Bomber)", "USAF_MQ9", 370000, "vehicle", "variant_mq9Bomber"],

	["RQ-4A Global Hawk (Spy)", "USAF_RQ4A", 100000, "vehicle"]
];

antiAirArray = compileFinal str
[
	["Mk21 Centurion", "B_SAM_System_02_F", 150000],
	["Mk41 VLS", "B_Ship_MRLS_01_F", 300000],
	["Mk45 Hammer", "B_Ship_Gun_01_F", 240000],
	["Mk49 Spartan", "B_SAM_System_01_F", 160000],
	["Praetorian 1C", "B_AAA_System_01_F", 120000],
	["AN/MPQ-105 Radar", "B_Radar_System_01_F", 80000],
	["MIM-145 Defender", "B_SAM_System_03_F", 140000],
	["R-750 Cronus Radar", "O_Radar_System_02_F", 80000],
	["S-750 Rhea", "O_SAM_System_04_F", 150000]
];

advHeliArray = compileFinal str
[

];

advJetArray = compileFinal str
[
	["A10", "USAF_A10", 480000, "vehicle"],
	["F22 Stealth", "USAF_F22", 400000, "vehicle"],
	["F22 Heavy", "USAF_F22_Heavy", 500000, "vehicle"],
	["F35A Stealth", "USAF_F35A_STEALTH", 400000, "vehicle"],
	["F35A Heavy", "USAF_F35A", 500000, "vehicle"]
];

advUtilityArray = compileFinal str
[
	["C130 Super Hercules", "USAF_C130J", 100000, "vehicle"],
	["C130 Super Hercules (Cargo)", "USAF_C130J_Cargo", 100000, "vehicle"],
	["V-44 X Blackfish (Infantry)", "B_T_VTOL_01_infantry_F", 100000, "vehicle"],
	["V-44 X Blackfish (Gunship)", "B_T_VTOL_01_armed_F", 200000, "vehicle"]
];

specOpsStore = compileFinal str (call droneArray + call antiAirArray + call advJetArray + call advUtilityArray);
