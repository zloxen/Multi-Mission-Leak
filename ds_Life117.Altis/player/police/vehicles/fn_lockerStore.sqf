#define ctrlSelData(ctrl) (lbData[##ctrl,(lbCurSel ##ctrl)])
/*
	Author: Shawn "Huntah" Macgillivray
	
	Description:
	Police Weapons Locker
*/
private ["_completed","_vehicle","_dialog","_storeAmount","_list2","_vehWeight","_itemWeight","_storeItem","_held","_parsed","_multiple","_indexx","_value","_newWeight"];

_vehicle = DS_locker;
disableSerialization;
_dialog = findDisplay 666668;
_storeAmount = ctrlText 1401; 
_list2 = _dialog displayCtrl 1501;
_storeItem = ctrlSelData(1501);
_indexx = -1;
_completed = 0;
_smallGuns = ["hgun_Rook40_F","hgun_Pistol_heavy_02_F","hgun_ACPC2_F","hgun_PDW2000_F","SMG_02_F","SMG_01_ACO_F","arifle_SDAR_F","arifle_Mk20_MRCO_plain_F","arifle_TRG21_MRCO_F","hgun_Pistol_heavy_01_MRD_F","hgun_Pistol_heavy_02_Yorris_F","SMG_02_ACO_F","SMG_01_Holo_pointer_snds_F","arifle_Katiba_ACO_pointer_F"];
_bigGuns = ["LMG_Mk200_F","arifle_MX_SW_Black_F","srifle_EBR_F","srifle_DMR_01_F","srifle_DMR_04_Tan_F","srifle_DMR_06_camo_F","srifle_DMR_03_khaki_F","srifle_DMR_03_multicam_F","srifle_DMR_01_F","LMG_Zafir_pointer_F","arifle_MXM_Black_F","arifle_MX_GL_F","RPG32_F"];
_largeGuns = ["srifle_DMR_02_camo_F","srifle_DMR_02_sniper_F","srifle_LRR_F","srifle_GM6_camo_F","launch_RPG32_F","srifle_GM6_LRPS_F","launch_B_Titan_short_F","MMG_02_camo_F","MMG_01_hex_F","srifle_DMR_05_hex_F"];

_parsed = (parseNumber(_storeAmount));
_parsedTemp = _parsed;

if(_storeItem == "")exitwith{hint "No item selected"};
if(_parsed < 1)exitwith{hint "Select an amount you wish to store"};
_vehMaxWeight = (DS_copLevel*20);
if((DS_infoArray select 21) > 24)then{_vehMaxWeight = _vehMaxWeight + 100;};
	
switch(true)do
	{
	case (_storeItem in _smallGuns): {_itemWeight = 10};
	case (_storeItem in _bigGuns): {_itemWeight = 20};
	case (_storeItem in _largeGuns): {_itemWeight = 40};
	default {_itemWeight = 1};
	};

_vehInventory = (_vehicle select 0);
if(((_vehicle select 1) + (_itemWeight*_parsed)) > _vehMaxWeight)exitwith{hint "The vehicle can not hold this much of that item"};
_newWeight = _vehicle select 1;
while{_parsedTemp > 0}do
	{
	_stored = [_storeItem] call DS_fnc_removeWeapon;
	if(_stored)then{_completed = _completed + 1};
	_parsedTemp = _parsedTemp - 1;
	};
while{_completed > 0}do
	{
	_newWeight = (_newWeight + _itemWeight);
	_vehInventory pushBack _storeItem;
	_completed = _completed - 1;
	};

DS_locker = [_vehInventory,_newWeight];

closeDialog 0;
[]spawn DS_cop_vehLocker;
if((_storeItem in _smallGuns)||(_storeItem in _bigGuns)||(_storeItem in _largeGuns))then
	{
	[] call DS_fnc_compileData;
	};




