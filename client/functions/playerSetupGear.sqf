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
_player linkItem "NVGoggles_OPFOR";
_player addBackpack "B_TacticalPack_blk";
_player addVest "V_Rangemaster_belt";
_player addHeadgear "lxWS_H_turban_03_sand";
_player addGoggles "G_Combat";
_player forceAddUniform "U_lxWS_ION_Casual5";
_player addMagazine "35Rnd_556x45_Velko_lxWS";
_player addWeapon "arifle_Velko_lxWS";
_player addPrimaryWeaponItem "optic_ERCO_blk_F";
_player addMagazine "35Rnd_556x45_Velko_lxWS";
_player addMagazine "35Rnd_556x45_Velko_lxWS";
_player addMagazine "35Rnd_556x45_Velko_lxWS";
_player addItem "FirstAidKit";
_player addItem "FirstAidKit";
_player selectWeapon "arifle_Velko_lxWS";
_player addItem "MiniGrenade";
_player addItem "MiniGrenade";
_player addItem "MiniGrenade";
_player addItem "SmokeShell";
_player addWeapon "Binocular";
_player addWeapon "launch_RPG7_F";
_player addSecondaryWeaponItem "RPG7_F";

switch (true) do
{
	case (["_medic_", typeOf _player] call fn_findString != -1):
	{
		_player linkItem "NVGoggles_OPFOR";
		_player addBackpack "B_TacticalPack_blk";
		_player addVest "V_Rangemaster_belt";
		_player addHeadgear "lxWS_H_turban_03_sand";
		_player addGoggles "G_Combat";
		_player forceAddUniform "U_lxWS_ION_Casual5";
		_player addMagazine "35Rnd_556x45_Velko_lxWS";
		_player addWeapon "arifle_Velko_lxWS";
		_player addPrimaryWeaponItem "optic_ERCO_blk_F";
		_player addMagazine "35Rnd_556x45_Velko_lxWS";
		_player addMagazine "35Rnd_556x45_Velko_lxWS";
		_player addMagazine "35Rnd_556x45_Velko_lxWS";
		_player removeItem "FirstAidKit";
		_player addItem "Medikit";
		_player selectWeapon "arifle_Velko_lxWS";
		_player addItem "MiniGrenade";
		_player addItem "MiniGrenade";
		_player addItem "MiniGrenade";
		_player addItem "SmokeShell";
		_player addWeapon "Binocular";
		_player addWeapon "launch_RPG7_F";
		_player addSecondaryWeaponItem "RPG7_F";
	};
	case (["_engineer_", typeOf _player] call fn_findString != -1):
	{
		_player linkItem "NVGoggles_OPFOR";
		_player addBackpack "B_TacticalPack_blk";
		_player addVest "V_BandollierB_cbr";
		_player addHeadgear "lxWS_H_turban_03_gray";
		_player addGoggles "G_Combat";
		_player forceAddUniform "U_BG_Guerilla1_1";
		_player addWeapon "LMG_Mk200_F";
		_player addPrimaryWeaponItem "optic_ERCO_snd_F";
		_player addPrimaryWeaponItem "200Rnd_65x39_cased_Box";
		_player addItem "FirstAidKit";
		_player addItem "FirstAidKit";
		_player addItem "Toolkit";
		_player selectWeapon "LMG_Mk200_F";
		_player addItem "HandGrenade";
		_player addItem "HandGrenade";
		_player addItem "SmokeShell";
		_player addWeapon "Binocular";
		_player addWeapon "launch_RPG7_F";
		_player addSecondaryWeaponItem "RPG7_F";
	};
	case (["_sniper_", typeOf _player] call fn_findString != -1):
	{
		_player linkItem "NVGoggles_OPFOR";
		_player addBackpack "B_TacticalPack_blk";
		_player addVest "V_Rangemaster_belt";
		_player addHeadgear "lxWS_H_turban_03_sand";
		_player addGoggles "G_Combat";
		_player forceAddUniform "U_B_GhillieSuit";
		_player addWeapon "srifle_DMR_06_camo_F";
		_player addPrimaryWeaponItem "optic_ERCO_khk_F";
		_player addPrimaryWeaponItem "20Rnd_762x51_Mag";
		_player addMagazine "20Rnd_762x51_Mag";
		_player addMagazine "20Rnd_762x51_Mag";
		_player addItem "FirstAidKit";
		_player addItem "FirstAidKit";
		_player selectWeapon "srifle_DMR_06_camo_F";
		_player addItem "APERSBoundingMine_Range_Mag";
		_player addItem "APERSBoundingMine_Range_Mag";
		_player addItem "SmokeShell";
		_player addItem "SmokeShell";
		_player addWeapon "Rangefinder";
		_player addWeapon "launch_RPG7_F";
		_player addSecondaryWeaponItem "RPG7_F";
	};
};

if (_player == player) then
{
	thirstLevel = 100;
	hungerLevel = 100;
};
