// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: playerSetupGear.sqf
//	@file Author: [GoT] JoSchaap, AgentRev

private ["_player", "_uniform", "_vest", "_headgear", "_goggles"];
_player = _this;

// Clothing is now defined in "client\functions\getDefaultClothing.sqf"
_uniform = [_player, "uniform"] call getDefaultClothing;
_vest = [_player, "vest"] call getDefaultClothing;
_headgear = [_player, "headgear"] call getDefaultClothing;
_goggles = [_player, "goggles"] call getDefaultClothing;

if (_uniform != "") then { _player addUniform _uniform };
if (_vest != "") then { _player addVest _vest };
if (_headgear != "") then { _player addHeadgear _headgear };
if (_goggles != "") then { _player addGoggles _goggles };

sleep 0.1;

// Remove GPS
_player unlinkItem "ItemGPS";

// Remove radio
//_player unlinkItem "ItemRadio";

// Remove NVG
if (hmd _player != "") then { _player unlinkItem hmd _player };

// Add NVG
_player linkItem "NVGoggles";

_player addBackpack "B_AssaultPack_rgr";

_player addMagazine "9Rnd_45ACP_Mag";
_player addWeapon "hgun_ACPC2_F";
_player addMagazine "9Rnd_45ACP_Mag";
_player addMagazine "9Rnd_45ACP_Mag";
_player addMagazine "9Rnd_45ACP_Mag";
_player addItem "FirstAidKit";
_player selectWeapon "hgun_ACPC2_F";

switch (true) do
{
	case (["_Pilot_", typeOf _player] call fn_findString != -1):
	{
		_player forceAddUniform "U_O_PilotCoveralls";
	};
	case (["_Helipilot_", typeOf _player] call fn_findString != -1):
	{
		_player forceAddUniform "U_B_HeliPilotCoveralls";
	};
	case (["_Sharpshooter_", typeOf _player] call fn_findString != -1):
	{
		_player forceAddUniform "U_IG_leader";
	};
	case (["_UAV_", typeOf _player] call fn_findString != -1):
	{
		_player forceAddUniform "U_B_CombatUniform_mcam";
	};
	case (["_recon_", typeOf _player] call fn_findString != -1):
	{
		_player forceAddUniform "U_B_CombatUniform_mcam_vest";
	};
	case (["_LAT_", typeOf _player] call fn_findString != -1):
	{
		_player forceAddUniform "U_B_T_Soldier_F";
	};
	case (["_AAA_", typeOf _player] call fn_findString != -1):
	{
		_player forceAddUniform "U_B_CombatUniform_mcam_wdl_f";
	};
	case (["_PG_", typeOf _player] call fn_findString != -1):
	{
		_player forceAddUniform "U_B_T_Soldier_F";
		_player addHeadgear "H_HelmetB_tna_F";
		_player addVest "V_PlateCarrierSpec_tna_F";
		_player addBackpack "B_TacticalPack_blk";
		_player addWeapon "Rangefinder";
		_player linkItem "NVGoggles_tna_F";
		_player addItem "SmokeShell";
		_player addItem "SmokeShellOrange";
		_player addItem "SmokeShellBlue";
		_player addItem "SmokeShellGreen";
		_player addItem "FirstAidKit";
		_player addWeapon "arifle_MX_khk_ACO_Pointer_F";
		_player addPrimaryWeaponItem "optic_Aco";
		_player addPrimaryWeaponItem "30Rnd_65x39_caseless_khaki_mag";
		_player addMagazine "30Rnd_65x39_caseless_khaki_mag";
		_player addMagazine "30Rnd_65x39_caseless_khaki_mag";
		_player selectWeapon "arifle_MX_khk_ACO_Pointer_F";
		//_player addWeapon "launch_RPG7_F";
		//_player addSecondaryWeaponItem "RPG7_F";
	};
	case (["_medic_", typeOf _player] call fn_findString != -1):
	{
		_player forceAddUniform "U_B_CombatUniform_mcam_tshirt";
		_player addHeadgear "H_HelmetB_light_desert";
		_player addVest "V_PlateCarrierSpec_rgr";
		_player addBackpack "B_TacticalPack_blk";
		_player addWeapon "Rangefinder";
		_player linkItem "NVGoggles";
		_player addItem "SmokeShell";
		_player addItem "SmokeShellOrange";
		_player addItem "SmokeShellBlue";
		_player addItem "SmokeShellGreen";
		_player addItem "FirstAidKit";
		_player addWeapon "arifle_MX_pointer_F";
		_player addPrimaryWeaponItem "optic_Holosight_khk_F";
		_player addPrimaryWeaponItem "30Rnd_65x39_caseless_mag";
		_player addMagazine "30Rnd_65x39_caseless_mag";
		_player addMagazine "30Rnd_65x39_caseless_mag";
		_player selectWeapon "arifle_MX_pointer_F";
		//_player addWeapon "launch_RPG7_F";
		//_player addSecondaryWeaponItem "RPG7_F";
	};
	case (["_engineer_", typeOf _player] call fn_findString != -1):
	{
		_player forceAddUniform "U_B_T_Soldier_SL_F";
		_player addHeadgear "H_HelmetB_tna_F";
		_player addVest "V_Chestrig_rgr";
		_player addBackpack "B_TacticalPack_blk";
		_player addWeapon "Rangefinder";
		_player linkItem "NVGoggles";
		_player addItem "SmokeShell";
		_player addItem "SmokeShell";
		_player addItem "FirstAidKit";
		_player addWeapon "arifle_MXC_khk_Holo_Pointer_F";
		_player addPrimaryWeaponItem "optic_Holosight_khk_F";
		_player addPrimaryWeaponItem "30Rnd_65x39_caseless_khaki_mag";
		_player addMagazine "30Rnd_65x39_caseless_khaki_mag";
		_player addMagazine "30Rnd_65x39_caseless_khaki_mag";
		_player selectWeapon "arifle_MXC_khk_Holo_Pointer_F";
		//_player addWeapon "launch_RPG7_F";
		//_player addSecondaryWeaponItem "RPG7_F";
	};
	case (["_sniper_", typeOf _player] call fn_findString != -1):
	{
		_player forceAddUniform "U_B_GhillieSuit";
		_player addVest "V_Chestrig_rgr";
		_player addBackpack "B_TacticalPack_blk";
		_player addWeapon "Rangefinder";
		_player linkItem "NVGoggles";
		_player addItem "SmokeShell";
		_player addItem "SmokeShell";
		_player addItem "APERSBoundingMine_Range_Mag";
		_player addItem "APERSBoundingMine_Range_Mag";
		_player addItem "FirstAidKit";
		_player addWeapon "srifle_LRR_camo_LRPS_F";
		_player addPrimaryWeaponItem "optic_ERCO_khk_F";optic_Aco
		_player addPrimaryWeaponItem "7Rnd_408_Mag";
		_player addMagazine "7Rnd_408_Mag";
		_player addMagazine "7Rnd_408_Mag";
		_player selectWeapon "srifle_LRR_camo_LRPS_F";
		_player addWeapon "launch_RPG7_F";
		_player addSecondaryWeaponItem "RPG7_F";
	};
};

if (_player == player) then
{
	thirstLevel = 100;
	hungerLevel = 100;
};
