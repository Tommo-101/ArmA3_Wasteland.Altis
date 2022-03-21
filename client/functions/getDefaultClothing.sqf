// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.0
//	@file Name: getDefaultClothing.sqf
//	@file Author: AgentRev
//	@file Created: 22/12/2013 22:04

private ["_unit", "_item", "_side", "_isSniper", "_isDiver", "_defaultVest", "_result"];

_unit = _this select 0;
_item = _this select 1;

if (typeName _unit == "OBJECT") then
{
	_side = if (_unit == player) then { playerSide } else { side _unit };
	_unit = typeOf _unit;
}
else
{
	_side = _this select 2;
};

_isSniper = (["_sniper_", _unit] call fn_findString != -1);
_isDiver = (["_diver_", _unit] call fn_findString != -1);
_isPilot = (["_Pilot_", _unit] call fn_findString != -1);
_isHeliPilot = (["_Helipilot_", _unit] call fn_findString != -1);
_isSharpshooter = (["_Sharpshooter_", _unit] call fn_findString != -1);
_isUAV = (["_UAV_", _unit] call fn_findString != -1);
_isRecon = (["_recon_", _unit] call fn_findString != -1);
_isLAT = (["_LAT_", _unit] call fn_findString != -1);
_isAAA = (["_AAA_", _unit] call fn_findString != -1);
_isPG = (["_PG_", _unit] call fn_findString != -1);
_isMedic = (["_medic_", _unit] call fn_findString != -1);
_isEngineer = (["_engineer_", _unit] call fn_findString != -1);

_defaultVest = "V_Rangemaster_Belt";

_result = "";

switch (_side) do
{
	case BLUFOR:
	{
		switch (true) do
		{
			case (_isSniper):
			{
				if (_item == "uniform") then { _result = "U_B_Ghilliesuit" };
				if (_item == "vest") then { _result = _defaultVest };
			};
			case (_isDiver):
			{
				if (_item == "uniform") then { _result = "U_B_Wetsuit" };
				if (_item == "vest") then { _result = "V_RebreatherB" };
				if (_item == "goggles") then { _result = "G_Diving" };
			};
			case (_isPilot):
			{

			};
			case (_isHeliPilot):
			{

			};
			case (_isSharpshooter):
			{

			};
			case (_isUAV):
			{

			};
			case (_isRecon):
			{

			};
			case (_isLAT):
			{

			};
			case (_isAAA):
			{

			};
			case (_isPG):
			{

			};
			case (_isMedic):
			{

			};
			case (_isEngineer):
			{

			};
			default
			{
				if (_item == "uniform") then { _result = "U_B_CombatUniform_mcam" };
				if (_item == "vest") then { _result = _defaultVest };
			};
		};

		if (_item == "headgear") then { _result = "H_MilCap_mcamo" };
	};
	case OPFOR:
	{
		switch (true) do
		{
			case (_isSniper):
			{
				if (_item == "uniform") then { _result = "U_O_Ghilliesuit" };
				if (_item == "vest") then { _result = _defaultVest };
			};
			case (_isDiver):
			{
				if (_item == "uniform") then { _result = "U_O_Wetsuit" };
				if (_item == "vest") then { _result = "V_RebreatherIR" };
				if (_item == "goggles") then { _result = "G_Diving" };
			};
			case (_isPilot):
			{

			};
			case (_isHeliPilot):
			{

			};
			case (_isSharpshooter):
			{

			};
			case (_isUAV):
			{

			};
			case (_isRecon):
			{

			};
			case (_isLAT):
			{

			};
			case (_isAAA):
			{

			};
			case (_isPG):
			{

			};
			case (_isMedic):
			{

			};
			case (_isEngineer):
			{

			};
			default
			{
				if (_item == "uniform") then { _result = "U_O_officer_noInsignia_hex_F" };
				if (_item == "vest") then { _result = _defaultVest };
			};
		};

		if (_item == "headgear") then { _result = "H_MilCap_ocamo" };
	};
	default
	{
		switch (true) do
		{
			case (_isSniper):
			{
				if (_item == "uniform") then { _result = "U_I_Ghilliesuit" };
				if (_item == "vest") then { _result = _defaultVest };
			};
			case (_isDiver):
			{
				if (_item == "uniform") then { _result = "U_I_Wetsuit" };
				if (_item == "vest") then { _result = "V_RebreatherIA" };
				if (_item == "goggles") then { _result = "G_Diving" };
			};
			case (_isPilot):
			{

			};
			case (_isHeliPilot):
			{

			};
			case (_isSharpshooter):
			{

			};
			case (_isUAV):
			{

			};
			case (_isRecon):
			{

			};
			case (_isLAT):
			{

			};
			case (_isAAA):
			{

			};
			case (_isPG):
			{

			};
			case (_isMedic):
			{

			};
			case (_isEngineer):
			{

			};
			default
			{
				if (_item == "uniform") then { _result = "U_I_CombatUniform" };
				if (_item == "vest") then { _result = _defaultVest };
			};
		};

		if (_item == "headgear") then { _result = "H_MilCap_dgtl" };
	};
};

_result
