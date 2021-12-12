/*
filename: UpgradeBase.sqf
Author: GMG_Monkey
Purpos: Allow player to upgrade their base manager, for now just base radius
*/

//Find the players base manager
private _Manager = nearestObject [player, "Land_SatellitePhone_F"];
//Get the current level
private _ManagerLevel = _Manager getVariable ["ManagerLevel", 1];
//Get manager location
private _ManagerPOS = getpos _Manager;
//Get player money
private _money = player getvariable ["cmoney", 0];
//Get Player UID
private _PlayerUID = [getPlayerUID player];
//Initialize upgrade price variable
private _UpgradePrice = 0;
//Initialize base manager radius check value 
private _ManagerRangeCheck = 0;
//Set upgrade price and range based on current manager level
switch (_ManagerLevel) do
{
	case (1):
	{
		_UpgradePrice = 1000000;
		_ManagerRangeCheck = 20;
	};
	case (2):
	{
		_UpgradePrice = 2000000;
		_ManagerRangeCheck = 30;
	};
	case (3):
	{
		_UpgradePrice = 4000000;
		_ManagerRangeCheck = 40;
	};
	case (4):
	{
		_UpgradePrice = 8000000;
		_ManagerRangeCheck = 50;
	};
};
//Find near by base managers
private _NearManagers = nearestObjects [ _Manager, ["Land_SatellitePhone_F"], 100, true];
//Initialize upgrade flag
_upgrade = true;
// Determine if base has enough space to upgrade
{
	private _nearmanager = _x;
	private _nearmanagerPOS = getpos _nearmanager;
	private _NearManagerLevel = _nearmanager getVariable ["ManagerLevel", 1];
	private _distance = _ManagerPOS distance2d _nearmanagerPOS;
	private _NearManagerRangeCheck = 0;
	// Set value based on manager manager level
	switch (_NearManagerLevel) do
	{
		case (1):
		{
			_NearManagerRangeCheck = 10;
		};
		case (2):
		{
			_NearManagerRangeCheck = 20;
		};
		case (3):
		{
			_NearManagerRangeCheck = 30;
		};
		case (4):
		{
			_NearManagerRangeCheck = 40;
		};
		case (5):
		{
			_NearManagerRangeCheck = 50;
		}
	};
	//Set Range Check Value
	private _RangeCheck = (_NearManagerRangeCheck + _ManagerRangeCheck);
	if (_distance < _RangeCheck && _distance != 0) then
	{
		_upgrade = false;
	};
} foreach _NearManagers;
//Start upgrade
//Make Sure manager isn't already at max level
if (_ManagerLevel < 5) then 
{
	//Initialize back variable
	private _isbasebacker = false;
	//Discover is player is backer with base upgrade reward
	private _backercheck = _PlayerUID arrayIntersect BaseSystemBackers;
	//Apply Backer reward
	if (count _backercheck > 0 && _ManagerLevel < 3) then
	{
		if (_upgrade) then
		{
			_Manager setVariable ["ManagerLevel", 3, true];
			_newlevel = _Manager getvariable "ManagerLevel";
			titletext [ format ["Base Successfully upgraded to level %1", _newlevel], "PLAIN DOWN"];
		} 
		else
		{
			titletext ["Hay otra Base demasiado cerca. Reubíquese para Upgradear", "PLAIN DOWN"];
		};
	} 
	else
	{
		//create prompt friendly price number
		private _promptprice = (_UpgradePrice / 1000000);
		//Prompt player to confirm cost
		_msg = format ["%1<br/><br/>%2", format ["Te costará $%1 Millones upgradear la base a %2.", _promptprice, (_ManagerLevel + 1)], "Desea proceder?"];
		if ([_msg, "Resupply Vehicle", true, true] call BIS_fnc_guiMessage) then
		{
			//Make sure the player has enough money
			if (_money >= _UpgradePrice) then
			{
				if (_upgrade) then
				{
					//Subtract cost from player money
					// player setVariable ["cmoney", (player getVariable ["cmoney",0]) - _UpgradePrice, true];
					[player, - _UpgradePrice] call A3W_fnc_setCMoney;
					//Upgrade the manager to the next level and make sure another base isn't too close
					switch (_ManagerLevel) do
					{
						case (1):
						{
							_Manager setVariable ["ManagerLevel", 2, true];
							_Manager spawn fn_manualObjectSave;
						};
						case (2):
						{
							_Manager setVariable ["ManagerLevel", 3, true];
							_Manager spawn fn_manualObjectSave;
						};
						case (3):
						{
							_Manager setVariable ["ManagerLevel", 4, true];
							_Manager spawn fn_manualObjectSave;
						};
						case (4):
						{
							_Manager setVariable ["ManagerLevel", 5, true];
							_Manager spawn fn_manualObjectSave;
						};
					};
					_newlevel = _Manager getvariable "ManagerLevel";
					titletext [ format ["Base Successfully upgraded to level %1", _newlevel], "PLAIN DOWN"];
				}
				else
				{
					titletext ["Another base is too close. Relocate to upgrade", "PLAIN DOWN"];
				};
			} else
			{
				titleText ["You don't have enough money",  "PLAIN DOWN"];
			}
		};
	};
} else
{
	titletext ["Your base manager is already at maximum level", "PLAIN DOWN"];
};