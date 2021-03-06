/*
	Darkside Life

	Author: Shawn "Huntah" Macgillivray

	Description:
	Sets up the list in the clothing shops
*/

private ["_shop","_dialog","_list","_shopArray","_className","_price","_type","_config","_img","_name","_desc","_tooltip","_index","_dlcName"];

disableSerialization;

if(DS_doingStuff)exitwith{};
DS_doingStuff = true;

_shop = _this select 0;
_dialog = findDisplay 666667;
_list = _dialog displayCtrl 1501;

ctrlShow [66653,false];
ctrlShow [778,false];
ctrlShow [777,false];
ctrlShow [66654,false];

lbClear _list;

_shopArray = [_shop] call DS_fnc_clothingShopConfig;

{
	_className = (_x select 0);
	_price = (_x select 1);
	_type = switch(true)do {
		case (isClass (configFile >> "CfgGlasses" >> _className)): {"CfgGlasses";};
		case (isClass (configFile >> "CfgVehicles" >> _className)): {"CfgVehicles";};
		case (isClass (configFile >> "CfgMagazines" >> _className)): {"CfgMagazines";};
		case (isClass (configFile >> "CfgWeapons" >> _className)): {"CfgWeapons";};
	};
	_config = switch(_type)do {
		case "CfgMagazines": {configFile >> "CfgMagazines" >> _className;};
		case "CfgWeapons": {configFile >> "CfgWeapons" >> _className;};
		case "CfgGlasses": {configFile >> "CfgGlasses" >> _className;};
		case "CfgVehicles": {configFile >> "CfgVehicles" >> _className;};
	};
	_img = getText(_config >> "picture");
	_name = getText(_config >> "displayName");
	_desc = getText(_config >> "descriptionshort");
	_desc = [_desc,"<br />"," "] call DS_fnc_strReplace;
	_desc = [_desc,"<br/>"," "] call DS_fnc_strReplace;
	_tooltip = format ["%1",_desc];

	_index = _list lbAdd format ["%1",_name];
	_list lbSetTooltip [_index,_tooltip];
	_list lbSetPicture [_index,_img];
	if(DS_coin >= _price)then {
		_list lbSetColor [_index,[0,1,0,0.5]];
	} else {
		_list lbSetColor [_index,[1,0,0,0.5]];
	};
	_list lbSetData [_index,_className];

	_dlcName = [_config] call DS_fnc_getConfigDLC;
	if(!(_dlcName isEqualTo ""))then {
		_list lbSetPictureRight [_index,(modParams [_dlcName,["logo"]]) param [0,""]];
	};
} forEach _shopArray;

sleep 0.2;
DS_doingStuff = false;