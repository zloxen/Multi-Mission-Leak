/*
	Darkside Life

	Author: Shawn "Huntah" Macgillivray

	Description:
	Opens the house storage system
*/

private ["_titleImg","_img","_vehMaxWeight","_vehCurWeight","_vehData","_dialog","_title","_list1","_list2","_vehicle","_img1","_img2","_vehTitle","_playerTitle","_vehicleWeight","_takeAmount","_storeAmount","_storedItems","_index","_string","_amount","_short","_btnStore","_btnTake"];

disableSerialization;

if([player,30,west] call DS_fnc_nearbyPlayers)exitWith{titleText ["You can not do this with police nearby","PLAIN"];};

closeDialog 0;
createDialog "bootMenu";

_vehicle = (nearestObjects [player,["Flag_White_F"],10]) select 0;
if(isNil "_vehicle")exitWith{closeDialog 0};

if(([] call DS_fnc_getPlayerBase) getVariable ["baseClosed",false])exitWith{closeDialog 0;hint "This base has been shut down by the police. Bases remain closed for 1 hour";};

DS_bootVeh = _vehicle;

_dialog = findDisplay 666668;
_list1 = _dialog displayCtrl 1500;
_list2 = _dialog displayCtrl 1501;
_img1 = _dialog displayCtrl 1200;
_img2 = _dialog displayCtrl 1201;
_vehTitle = _dialog displayCtrl 1000;
_playerTitle = _dialog displayCtrl 1001;
_vehicleWeight = _dialog displayCtrl 1002;
_takeAmount = _dialog displayCtrl 1400;
_storeAmount = _dialog displayCtrl 1401;
_btnStore = _dialog displayCtrl 1203;
_btnTake = _dialog displayCtrl 1204;
_titleImg = _dialog displayCtrl 1277;

_noImg = ["houseItemUpgrade","houseWeaponUpgrade","jail10","safeCrackerAdv","jailBreak","steroids","noRecoil","quickCap","packCPU","packBattery","packCircuitBoard","packGlass","packBronze","packSteel","pawnee","convoy","idChanger","bones","blackfoot","armourAdv","insurance","airBags"];

_titleImg ctrlSetText "extras\textures\menus\houseInv.jpg";
_playerTitle ctrlSetStructuredText parseText "<t color='#FFFFFF'>Players Inventory</t>";
_vehTitle ctrlSetStructuredText parseText "<t color='#FFFFFF'> Base Inventory</t>";

lbClear _list1;
lbClear _list2;

_storedItems = _vehicle getVariable ["items",[[],0]];
_vehData = _vehicle getVariable ["items",[[],0]];
_vehMaxWeight = _vehicle getVariable ["storageCap",0];
_vehMaxWeight = (_vehMaxWeight*1000)+1000;
_vehCurWeight = _vehData select 1;
_vehicleWeight ctrlSetStructuredText parseText format ["<t color='#FFFFFF'>%1 / %2</t>",_vehCurWeight,_vehMaxWeight];

if(_storedItems isEqualTo 0) then {
	DS_bootVeh setVariable["items",[[],0],true];
	_storedItems = [[],0];
} else {
	_storedItems = _storedItems select 0;
};

{
	_amount = _x select 1;

	if(_amount > 0)then {
		_item = _x select 0;
		_string = [_item] call DS_fnc_itemStringConfig;
		_img = format ["extras\icons\%1.jpg",_item];
		if([_item,"bp"] call DS_fnc_strInStr)then{_img = "extras\icons\bluePrint.jpg"};
		if([_item,"ammo"] call DS_fnc_strInStr)then{_img = "extras\icons\vehAmmo.jpg"};
		if([_item,"gun"] call DS_fnc_strInStr)then{_img = "extras\icons\mcuGun.jpg"};
		if(_item in _noImg)then{_img = ""};

		_index = _list1 lbAdd format ["[%1] - %2",_amount,_string];
		_list1 lbSetData [_index,_item];
		if(!(_img isEqualTo ""))then{_list1 lbSetPicture [_index,_img];};
	};
} forEach _storedItems;

{
	_value = missionNamespace getVariable (format ["DS_item_%1",_x]);

	if(_value > 0)then {
		_string = [_x] call DS_fnc_itemStringConfig;
		_img = format ["extras\icons\%1.jpg",_x];
        if([_x,"bp"] call DS_fnc_strInStr)then{_img = "extras\icons\bluePrint.jpg"};
		if([_x,"ammo"] call DS_fnc_strInStr)then{_img = "extras\icons\vehAmmo.jpg"};
		if([_x,"gun"] call DS_fnc_strInStr)then{_img = "extras\icons\mcuGun.jpg"};
		if(_x in _noImg)then{_img = ""};

		_index = _list2 lbAdd format ["%1x - %2",_value,_string];
		_list2 lbSetData [_index,_x];
		if(!(_img isEqualTo ""))then{_list2 lbSetPicture [_index,_img];};
	};
} forEach DS_itemArray;

_btnStore buttonSetAction "[] spawn DS_civ_clanItemStore;";
_btnTake buttonSetAction "[] spawn DS_civ_clanItemTake;";

_vehicle spawn {
	waitUntil {isNull (findDisplay 666668)};
	if(DS_waitToSync)exitWith{};
	DS_waitToSync = true;
	sleep 2;
	waitUntil {isNull (findDisplay 666668)};
	DS_waitToSync = false;
	[_this,0,(name player)] remoteExec ["HUNT_fnc_updateClanStorage",2];
	[] call DS_fnc_compileData;
};