// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: storeOwners.sqf
//	@file Author: AgentRev, JoSchaap, His_Shadow

// Notes: Gun and general stores have position of spawned crate, vehicle stores have an extra air spawn direction
//
// Array contents are as follows:
// Name, Building Position, Desk Direction (or [Desk Direction, Front Offset]), Excluded Buttons
storeOwnerConfig = compileFinal str
[
	["GenStore1", 6, 240, []],
	["GenStore2", 6, 250, []],
	["GenStore3", 6, 45, []],
	["GenStore4", 0, 265, []],
	["GenStore5", 5, 350, []],
	["GenStore6", 0, 220, []],

	["GunStore1", 1, 0, []],
	["GunStore2", 1, 75, []],
	["GunStore3", 6, 135, []],
	["GunStore4", 1, 65, []],

	// Buttons you can disable: "Land", "Armored", "Tanks", "Helicopters", "Boats", "Planes"
	["VehStore1", 1, 75, ["Boats"]],
	["VehStore2", 6, 45, ["Boats"]],
	["VehStore3", 1, 250, ["Boats"]],
	["VehStore4", 5, 80, ["Boats"]],
	["VehStore5", 0, 190, []],

	["SpecStore1", 5, 155, []],

	["AirStore1", 0, 20, []],
	["AirStore2", 5, 155, []],
	["AirStore3", 1, 75, []],
	["AirStore4", 4, 250, []]
];

// Outfits for store owners
storeOwnerConfigAppearance = compileFinal str
[
	["GenStore1", [["weapon", ""], ["uniform", "U_IG_Guerilla2_2"]]],
	["GenStore2", [["weapon", ""], ["uniform", "U_IG_Guerilla2_3"]]],
	["GenStore3", [["weapon", ""], ["uniform", "U_IG_Guerilla3_1"]]],
	["GenStore4", [["weapon", ""], ["uniform", "U_IG_Guerilla2_1"]]],
	["GenStore5", [["weapon", ""], ["uniform", "U_IG_Guerilla3_2"]]],
	["GenStore6", [["weapon", ""], ["uniform", "U_IG_Guerilla3_3"]]],

	["GunStore1", [["weapon", ""], ["uniform", "U_B_SpecopsUniform_sgg"]]],
	["GunStore2", [["weapon", ""], ["uniform", "U_O_SpecopsUniform_blk"]]],
	["GunStore3", [["weapon", ""], ["uniform", "U_I_CombatUniform_tshirt"]]],
	["GunStore4", [["weapon", ""], ["uniform", "U_IG_Guerilla1_1"]]],

	["VehStore1", [["weapon", ""], ["uniform", "U_Competitor"]]],
	["VehStore2", [["weapon", ""], ["uniform", "U_Competitor"]]],
	["VehStore3", [["weapon", ""], ["uniform", "U_Competitor"]]],
	["VehStore4", [["weapon", ""], ["uniform", "U_Competitor"]]],
	["VehStore5", [["weapon", ""], ["uniform", "U_Competitor"]]],

	["SpecStore1", [["weapon", ""], ["uniform", "U_O_SpecopsUniform_blk"]]],

	["AirStore1", [["weapon", ""], ["uniform", "U_O_SpecopsUniform_blk"]]],
	["AirStore2", [["weapon", ""], ["uniform", "U_O_SpecopsUniform_blk"]]]
];
