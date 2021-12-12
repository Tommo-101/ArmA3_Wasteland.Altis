//	@file Version:
//	@file Name:
//	@file Author: Cael817, all credit to Killzone Kid Edited by: GMG_Monkey
//	@file Created:
private _manager = nearestObject [player, "Land_SatellitePhone_F"];
private _ManagerPosition = getpos _manager;
//Get manager level
private _ManagerLevel = _manager getVariable ["ManagerLevel", 1];
//set default base radius for level 1 manager
private _BaseRadius = 10;
//set base radius based on manager level
switch (_ManagerLevel) do
{
	case (2):
	{
		_BaseRadius = 20;
	};
	case (3):
	{
		_BaseRadius = 30;
	};
	case (4):
	{
		_BaseRadius = 40;
	};
	case (5):
	{
		_BaseRadius = 50;
	};
};
{
	if (!local _x) then
	{
		private _setOwner_time = time;
		[_x, "setOwnerTo", player] call R3F_LOG_FNCT_exec_commande_MP; // Requires R3F 3.1
		waitUntil {local _x || time > _setOwner_time + 1.5};
	};

	_x setHit ["light_1_hitpoint", 0];
	_x setHit ["light_2_hitpoint", 0];
	_x setHit ["light_3_hitpoint", 0];
	_x setHit ["light_4_hitpoint", 0];
	_x setHit ["light_1_hit", 0];
	_x setHit ["light_2_hit", 0];
	_x setHit ["light_3_hit", 0];
	_x setHit ["light_4_hit", 0];
	_x setVariable ["lights", "on", true];
} forEach nearestObjects [_ManagerPosition, [
	"Static",
	"Thing"
], _BaseRadius, true];

hint "Lights ON";
