//Client Menu Building for Airdrop Assistance
//Builds client commanding menus dynamically based on config file arrays
//Author: Apoc
//Credits to Cre4mpie for the command menu approach and static structure of menus

AirdropMenu =
[
	["Airdrop",true],
			["US Vehicles", [2], "#USER:VehicleUSMenu", -5, [["expression", ""]], "1", "1"],
			["UK Vehicles", [3], "#USER:VehicleUKMenu", -5, [["expression", ""]], "1", "1"],
			["RUS Vehicles", [4], "#USER:VehicleRUSMenu", -5, [["expression", ""]], "1", "1"],
			["Supplies", [5], "#USER:SupplyMenu", -5, [["expression", ""]], "1", "1"],
			["Cancel Airdrop", [6], "", -3, [["expression", ""]], "1", "1"]
];
//////////////////////////////////////////////////////
//Setting up the US Vehicle Menu ///////////////////////
/////////////////////////////////////////////////////
VehicleUSMenu = [];
_startVehUSMenu = ["Vehicles",true];
VehicleUSMenu pushback _startVehUSMenu;

_i=0;
{
_optionVehUSMenu = [];
_lineElement1=format ["%1 ($%2)",(APOC_AA_VehOptions select _i) select 0, (APOC_AA_VehOptions select _i) select 2];
_type = (APOC_AA_VehOptions select _i) select 3;
_optionVehUSMenu pushback _lineElement1;

_optionVehUSMenu append [[_i+2], "", -5];

_optionVehUSMenu pushback [["expression", format ['["%1",%2,player] execVM "addons\APOC_Airdrop_Assistance\APOC_cli_startAirdrop.sqf"',_type,_i]]];

_optionVehUSMenu append ["1","1"];

VehicleUSMenu pushback _optionVehUSMenu;
//diag_log format["Here's the menu structure: %1",VehicleUSMenu];
_i=_i+1;
}forEach APOC_AA_VehUSOptions;

_endVehUSMenu = ["Cancel Airdrop", [_i+2], "", -3, [["expression", ""]], "1", "1"];
VehicleUSMenu pushback _endVehUSMenu;
///////////////////////////////////////////////////////

//////////////////////////////////////////////////////
//Setting up the Supply Menu ////////////////////////
/////////////////////////////////////////////////////
SupplyMenu = [];
_startSupMenu = ["Supplies",true];
SupplyMenu pushback _startSupMenu;

_i=0;
{
_optionSupMenu = [];
_lineElement1=format ["%1 ($%2)",(APOC_AA_SupOptions select _i) select 0, (APOC_AA_SupOptions select _i) select 2];
_type = (APOC_AA_SupOptions select _i) select 3;
_optionSupMenu pushback _lineElement1;

_optionSupMenu append [[_i+2], "", -5];

_optionSupMenu pushback [["expression", format ['["%1",%2,player] execVM "addons\APOC_Airdrop_Assistance\APOC_cli_startAirdrop.sqf"',_type,_i]]];

_optionSupMenu append ["1","1"];

SupplyMenu pushback _optionSupMenu;
//diag_log format["Here's the menu structure: %1",SupplyMenu];
_i=_i+1;
}forEach APOC_AA_SupOptions;

_endSupMenu = ["Cancel Airdrop", [_i+2], "", -3, [["expression", ""]], "1", "1"];
SupplyMenu pushback _endSupMenu;
///////////////////////////////////////////////////////


showCommandingMenu "#USER:AirdropMenu";
