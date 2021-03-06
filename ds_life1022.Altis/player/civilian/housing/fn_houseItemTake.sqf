/*
	Darkside Life

	Author: Shawn "Huntah" Macgillivray

	Description:
	Takes inventory items from houses
*/

private ["_check","_vehicle","_dialog","_storeAmount","_list2","_vehWeight","_itemWeight","_storeItem","_held","_parsed","_multiple","_index","_value","_newWeight"];

params [["_check",false,[false]]];

disableSerialization;

_vehicle = DS_bootVeh;
_dialog = findDisplay 666668;
_storeAmount = ctrlText 1400;
_list2 = _dialog displayCtrl 1500;
_storeItem = lbData [1500,lbCurSel 1500];
_index = -1;
_parsed = (parseNumber(_storeAmount));

if(_storeItem == "")exitWith{hint "No item selected"};
if(_parsed < 1)exitWith{hint "Select an amount you wish to store"};

_itemWeight = [_storeItem,_parsed] call DS_fnc_itemWeight;
_vehData = _vehicle getVariable ["boot",[[],0]];
_vehInventory = _vehData select 0;

if((_itemWeight) > (DS_maxWeight - DS_currentWeight))exitWith{hint "You can not carry this amount"};

{
	if((_x select 0) isEqualTo _storeItem)then {
		_index = _forEachIndex;
	};
} forEach _vehInventory;

_value = (_vehInventory select _index) select 1;
_nearbyPlayers = {(alive _x)&&(!(_x isEqualTo player))&&(_x distance player < 20)} count allPlayers;

if(_parsed > _value)exitWith{hint "There isn't that many of that item in this vehicle"};

if((_nearbyPlayers > 0)&&(!_check))exitWith {
	_sleepTimer = (random(3));
	sleep _sleepTimer;
	[true] spawn DS_civ_houseItemTake;
};

[_storeItem,true,_parsed] call DS_fnc_handleInventory;

_value = _value - _parsed;
_newWeight = ((_vehData select 1) - (_itemWeight));

if(_value > 0)then {
	_vehInventory set [_index,[_storeItem,_value]];
} else {
	_vehInventory set [_index,[_storeItem,_value]];
};

if(_newWeight < 1)then{_newWeight = 0};
DS_bootVeh setVariable["boot",[_vehInventory,_newWeight],true];

closeDialog 0;
sleep 0.2;
[]spawn DS_civ_houseStorage;