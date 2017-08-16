	#include "..\..\macros.hpp"
/*
	File: fn_vAH_load.sqf
	Description: Loads the Auction house items for display
	Author: Fresqo
	Not very good with GUI's so used one of Ryans basic layout and edited it, shots bro!.
*/
waitUntil {createDialog "AH_buy";};
disableSerialization;
private["_dialog","_myListbox","_curOffer","_id","_type","_amount","_item","_pic","_itemName","_price","_seller","_sellerName","_status","_time","_search","_allAH","_found","_ClassName"];
_search = [_this,0,"",[""]] call BIS_fnc_param;
	_dialog = findDisplay 15100;
	_myListbox = _dialog displayCtrl 15101;
	_allAH = all_ah_items;

	if(_search != "") then {
	_allAH = [];
	{_found = _x select 3 select 1 find _search; if (_found != -1) then {_allAH pushBack _x};} forEach all_ah_items;
	};
if (count all_ah_items == 0) then {
		_myListbox lbAdd format ["Zurzeit sind keine Items gelistet!"];
		_myListbox lbSetData [(lbSize _myListbox)-1,format ["%1",["none"]]];
	} else {
{
	_curOffer = _x;
	_id = _curOffer select 0;
	_type = _curOffer select 1;
	_amount = _curOffer select 2;
	_item = _curOffer select 3 select 0;
	if (_type == 0) then {
		_itemName = M_CONFIG(getText,"VirtualItems",_item,"displayName");
		_pic = M_CONFIG(getText,"VirtualItems",_item,"icon");
	} else {if (_type == 1) then {
		_itemName = ([_item] call DWEV_fnc_fetchCfgDetails) select 1;
		_ClassName = ([_item] call DWEV_fnc_fetchCfgDetails) select 0;
		if (_ClassName == "SmokeShellBlue") then {_itemName = "Tränengas";};
		if (_ClassName == "hgun_P07_khk_F") then {_itemName = "Taser";};
		if (_ClassName == "hgun_Pistol_Signal_F") then {_itemName = "Signal Pistole";};
		_pic = [_item] call DWEV_fnc_fetchCfgDetails select 2;
		};
	};
	_price = _curOffer select 4;
	_seller = _curOffer select 5;
	_sellerName = _curOffer select 6;
	_status = _curOffer select 7;
	_time = _curOffer select 8;
	_time = round (_time / 3);
	if (_status == 0)then {
		_myListbox lbAdd format ["%5 x %3 für %2€ von %1, noch %4 Stunden",_sellerName,[_price] call DWEV_fnc_numberText,_itemName,[_time] call DWEV_fnc_numberText,[_amount] call DWEV_fnc_numberText];
		_myListbox lbSetPicture [(lbSize _myListbox)-1, _pic];
		_myListbox lbSetPictureColor [(lbSize _myListbox)-1, [1, 1, 1, 1]];
		_myListbox lbSetData [(lbSize _myListbox)-1,format ["%1",[_id,_seller,_item,_price,_type,_amount,_sellerName]]];
	};
} forEach _allAH;};
hint "Inserate geladen!";

[] spawn {
	waitUntil {!(isNull (findDisplay 15600))};
	((findDisplay 15600) displayCtrl 15660) ctrlSetText "textures\Wolflogo\ah.paa";
};