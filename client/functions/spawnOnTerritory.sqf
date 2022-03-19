// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.0
//	@file Name: spawnOnTerritory.sqf
//	@file Author: Leon

private ["_marker", "_height", "_index", "_territories", "_preload", "_pos", "_rad", "_territoryName", "_notInArea", "_playerPos"];
_marker = _this select 0;
_preload = param [1, false, [false]];

_height = (["A3W_spawnBeaconSpawnHeight", 0] call getPublicVar) max 0;
_territories = (call compile preprocessFileLineNumbers "mapConfig\territories.sqf");
_index = _territories findIf { _x select 0 == _marker };
_rad = selectMax (markerSize _marker);
_territoryName = _territories select _index select 1;

_pos = getMarkerPos _marker;
_playerPos = _pos;
_notInArea = true;
while { _notInArea } do
{
	_playerPos = [_pos,5,_rad,1,0,0,0] call findSafePos;
	if (_playerPos inArea _marker) then
	{
		_notInArea = false;
	};
};
_playerPos set [2, if (_height < 25) then { 0 } else { _height }];
if (_preload) then { waitUntil {sleep 0.1; preloadCamera _playerPos} };
waitUntil {!isNil "bis_fnc_init" && {bis_fnc_init}};
player setPos _playerPos;

player setVariable [_marker + "_lastSpawn", diag_tickTime];
[player, _marker] remoteExecCall ["A3W_fnc_updateSpawnTimestamp", 2];

respawnDialogActive = false;
closeDialog 0;

_territoryName spawn
{
	_territoryName = _this;
	sleep 1;

	_hour = date select 3;
	_mins = date select 4;
	["Wasteland", _territoryName, format ["%1:%3%2", _hour, _mins, if (_mins < 10) then {"0"} else {""}]] spawn BIS_fnc_infoText;
};
