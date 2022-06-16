// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.0
//	@file Name: mission_MBT.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy, AgentRev
//	@file Created: 08/12/2012 15:19

if (!isServer) exitwith {};
#include "mainMissionDefines.sqf";

private ["_vehicleClass", "_nbUnits"];

_setupVars =
{
	_vehicleClass = // to specify a vehicleLoadouts variant, simply write "class/variant", e.g. "O_Heli_Light_02_dynamicLoadout_F/orcaDAR"
	[
		//"B_Heli_Light_01_dynamicLoadout_F",
		//"I_Heli_light_03_dynamicLoadout_F",
		//"B_Heli_Attack_01_dynamicLoadout_F",
		//"O_Heli_Attack_02_dynamicLoadout_F"
		"BWA3_Tiger_Gunpod_FZ",
		"RHS_Ka52_vvs",
		"UK3CB_BAF_Wildcat_AH1_6_Armed",
		"RHS_MELB_AH6M",
		"RHS_AH1Z",
		"UK3CB_BAF_Apache_AH1"
	];

	while {_vehicleClass isEqualType []} do { _vehicleClass = selectRandom _vehicleClass };
	if (_vehicleClass find "/" != -1) then { _vehicleClass = _vehicleClass splitString "/" };

	_missionType = "Abandoned Helicopter";
	_locationsArray = MissionSpawnMarkers;

	_nbUnits = if (missionDifficultyHard) then { AI_GROUP_LARGE } else { AI_GROUP_MEDIUM };
};

_this call mission_VehicleCapture;
