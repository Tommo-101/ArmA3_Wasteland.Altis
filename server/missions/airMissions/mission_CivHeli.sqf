// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.0
//	@file Name: mission_CivHeli.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy, AgentRev
//	@file Created: 08/12/2012 15:19

if (!isServer) exitwith {};
#include "airMissionDefines.sqf";

private ["_vehicleClass", "_nbUnits"];

_setupVars =
{
	//_vehicleClass = selectRandom ["I_Heli_Transport_02_F", "B_Heli_Transport_03_unarmed_F", "O_Heli_Transport_04_covered_F"];
	_vehicleClass = selectRandom ["UK3CB_BAF_Merlin_HC4_18_GPMG", "RHS_CH_47F", "rhsusf_CH53E_USMC_GAU21"];

	_missionType = "NATO Supply Helicopter";
	_locationsArray = MissionSpawnMarkers;

	_nbUnits = if (missionDifficultyHard) then { AI_GROUP_LARGE } else { AI_GROUP_MEDIUM };
};

private _customVehicleSetup =
{
	_vehicle call fn_refilltruck;
};

_this call mission_VehicleCapture;
