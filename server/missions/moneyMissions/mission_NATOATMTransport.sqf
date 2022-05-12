// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 2.1
//	@file Name: mission_NATOATMTransport.sqf
//	@file Author: JoSchaap / routes by Del1te - (original idea by Sanjo), AgentRev
//	@file Created: 31/08/2013 18:19
//	@file WS Edit: GriffinZS

if (!isServer) exitwith {};
#include "moneyMissionDefines.sqf"

private ["_MoneyShipment", "_moneyAmount", "_convoys", "_vehChoices", "_moneyText", "_vehClasses", "_createVehicle", "_vehicles", "_veh2", "_leader", "_speedMode", "_waypoint", "_vehicleName", "_numWaypoints", "_cash"];

_setupVars =
{
	_locationsArray = LandConvoyPaths;

	// Money Shipments settings
	// Difficulties : Min = 1, Max = infinite
	// Convoys per difficulty : Min = 1, Max = infinite
	// Vehicles per convoy : Min = 1, Max = infinite
	// Choices per vehicle : Min = 1, Max = infinite
	_MoneyShipment = selectRandom
	[
		// Easy
		[
			"Small NATO Money Transport", // Marker text
			50000, // Money
			[
				[ // NATO convoy
					["rhsusf_m1151_m2_v2_usarmy_wd"],  // Machine Gun/Command Vehicle
					["rhsusf_m1151_mk19_v2_usarmy_wd", "rhsusf_m1043_w_mk19"], // MK19
					["rhsusf_m1152_rsv_usarmy_wd", "rhsusf_m1152_sicps_usarmy_wd"], // Transport
					["rhsusf_m1151_m240_v2_usarmy_wd", "rhsusf_m1151_m2_lras3_v1_usarmy_wd"] // Machine Gun
				]
			]
		],
		// Medium
		[
			"Medium NATO Money Transport", // Marker text
			70000, // Money
			[
				[ // NATO convoy
					["rhsusf_M1232_MC_M2_usmc_wd"], // Machine Gun/Command Vehicle
					["rhsusf_m1240a1_m240_usmc_wd"], // Machine Gun/Command Vehicle
					["rhsusf_CGRCAT1A2_Mk19_usmc_wd"], // MK19
					["rhsusf_CGRCAT1A2_usmc_wd", "rhsusf_m1240a1_usmc_wd"], // Transport
					["rhsusf_CGRCAT1A2_M2_usmc_wd", "rhsusf_m1240a1_m240_usmc_wd"] // Machine Gun
				]
			]
		],
		// Hard
		[
			"Large NATO Money Transport", // Marker text
			100000, // Money
			[
				[ // NATO convoy
					["rhsusf_M1232_MC_M2_usmc_wd"], // Machine Gun/Command Vehicle
					["rhsusf_m1240a1_m240_usmc_wd"], // Machine Gun/Command Vehicle
					["rhsusf_CGRCAT1A2_Mk19_usmc_wd"], // MK19
					["rhsusf_CGRCAT1A2_usmc_wd"], // Transport
					["rhsusf_m1240a1_usmc_wd"], // Transport
					["rhsusf_CGRCAT1A2_M2_usmc_wd"], // Machine Gun
					["rhsusf_m1240a1_m240_usmc_wd"], // Machine Gun
					["rhsusf_m1151_m2_v2_usarmy_wd"],  // Machine Gun/Command Vehicle
					["rhsusf_m1151_mk19_v2_usarmy_wd", "rhsusf_m1043_w_mk19"] // MK19
				]
			]
		],
		// Extreme
		[
			"Heavy NATO Money Transport", // Marker text
			200000, // Money
			[
				[ // NATO convoy
					["rhsusf_M1232_MC_M2_usmc_wd"],
					["RHS_M6_wd"],
					["RHS_M6_wd"],
					["RHS_M2A3_BUSKIII_wd"],
					["RHS_M2A3_BUSKI_wd"],
					["rhsusf_stryker_m1132_m2_wd"],
					["rhsusf_M1220_M153_M2_usarmy_wd"],
					["rhsusf_m1240a1_m2crows_usarmy_wd"]
				]
			]
		]
	];

	_missionType = _MoneyShipment select 0;
	_moneyAmount = _MoneyShipment select 1;
	_convoys = _MoneyShipment select 2;
	_vehChoices = selectRandom _convoys;

	_moneyText = format ["$%1", [_moneyAmount] call fn_numbersText];

	_vehClasses = [];
	{ _vehClasses pushBack selectRandom _x } forEach _vehChoices;
};

_setupObjects =
{
	private ["_starts", "_startDirs", "_waypoints"];
	call compile preprocessFileLineNumbers format ["mapConfig\convoys\%1.sqf", _missionLocation];

	_createVehicle =
	{
		private ["_type", "_position", "_direction", "_vehicle", "_soldier"];

		_type = _this select 0;
		_position = _this select 1;
		_direction = _this select 2;

		_vehicle = createVehicle [_type, _position, [], 0, "None"];
		_vehicle setVariable ["R3F_LOG_disabled", true, true];
		[_vehicle] call vehicleSetup;

		// apply tropical textures to vehicles on Tanoa
		if (worldName == "Tanoa" && _type select [1,3] != "_T_") then
		{
			switch (toUpper (_type select [0,2])) do
			{
				case "B_": { [_vehicle, ["Olive"]] call applyVehicleTexture };
				case "O_": { [_vehicle, ["GreenHex"]] call applyVehicleTexture };
			};
		};

		_vehicle setDir _direction;
		_aiGroup addVehicle _vehicle;

		_soldier = [_aiGroup, _position] call createRandomRHSUSFSoldier;
		_soldier moveInDriver _vehicle;

		if !(_type isKindOf "LT_01_base_F") then
		{
			_soldier = [_aiGroup, _position] call createRandomRHSUSFSoldier;
			_soldier moveInCargo [_vehicle, 0];
		};

		if !(_type isKindOf "Truck_F") then
		{
			_soldier = [_aiGroup, _position] call createRandomRHSUSFSoldier;
			_soldier moveInGunner _vehicle;
			if (_type isKindOf "LT_01_base_F") exitWith {};

			_soldier = [_aiGroup, _position] call createRandomRHSUSFSoldier;

			if (_vehicle emptyPositions "commander" > 0) then
			{
				_soldier moveInCommander _vehicle;
			}
			else
			{
				_soldier moveInCargo [_vehicle, 1];
			};
		};

		[_vehicle, _aiGroup] spawn checkMissionVehicleLock;

		_vehicle
	};

	_aiGroup = createGroup CIVILIAN;

	_vehicles = [];
	{
		_vehicles pushBack ([_x, _starts select (_forEachIndex max 0 min (count _starts - 1)), _startdirs select (_forEachIndex max 0 min (count _startdirs - 1)), _aiGroup] call _createVehicle);
	} forEach _vehClasses;

	_veh2 = _vehClasses select (1 min (count _vehClasses - 1));

	_leader = effectiveCommander (_vehicles select 0);
	_aiGroup selectLeader _leader;

	_aiGroup setCombatMode "YELLOW"; // units will defend themselves
	_aiGroup setBehaviour "SAFE"; // units feel safe until they spot an enemy or get into contact
	_aiGroup setFormation "COLUMN";

	_speedMode = if (missionDifficultyHard) then { "NORMAL" } else { "LIMITED" };

	_aiGroup setSpeedMode _speedMode;

	{
		_waypoint = _aiGroup addWaypoint [_x, 0];
		_waypoint setWaypointType "MOVE";
		_waypoint setWaypointCompletionRadius 25;
		_waypoint setWaypointCombatMode "YELLOW";
		_waypoint setWaypointBehaviour "SAFE"; // safe is the best behaviour to make AI follow roads, as soon as they spot an enemy or go into combat they WILL leave the road for cover though!
		_waypoint setWaypointFormation "COLUMN";
		_waypoint setWaypointSpeed _speedMode;
	} forEach _waypoints;

	_missionPos = getPosATL leader _aiGroup;

	//_missionPicture = "pictures\atmtransport.paa";
	_vehicleName = getText (configFile >> "cfgVehicles" >> _veh2 >> "displayName");

	_missionHintText = format ["A NATO convoy is transporting <t color='%1'>%2</t> to an unknown ATM location.<br/>Best chance for you to earn some extra money!", moneyMissionColor, _moneyText];

	_numWaypoints = count waypoints _aiGroup;
};

_waitUntilMarkerPos = {getPosATL _leader};
_waitUntilExec = nil;
_waitUntilCondition = {currentWaypoint _aiGroup >= _numWaypoints};

_failedExec = nil;

// _vehicles are automatically deleted or unlocked in missionProcessor depending on the outcome

_successExec =
{
	// Mission completed

	for "_i" from 1 to 10 do
	{
		_cash = createVehicle ["Land_Money_F", _lastPos, [], 5, "None"];
		_cash setPos ([_lastPos, [[2 + random 3,0,0], random 360] call BIS_fnc_rotateVector2D] call BIS_fnc_vectorAdd);
		_cash setDir random 360;
		_cash setVariable ["cmoney", _moneyAmount / 10, true];
		_cash setVariable ["owner", "world", true];
	};

	_successHintMessage = "Nice! Look's like that ATM shipment won't be going anywhere, NATO will be pretty hurt over that..";
};

_this call moneyMissionProcessor;
